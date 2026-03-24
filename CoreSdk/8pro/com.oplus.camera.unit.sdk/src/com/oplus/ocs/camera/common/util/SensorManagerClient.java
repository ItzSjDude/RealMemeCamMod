package com.oplus.ocs.camera.common.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

/* JADX INFO: loaded from: classes.dex */
public class SensorManagerClient {
    public static final int ACCELEROMETER_SENSOR = 4;
    public static final int GYRO_SENSOR = 1;
    public static final int NONE_SENSOR = 0;
    private static final String TAG = "SensorManagerClient";
    private Context mContext;
    private SensorManager mSensorManager = null;
    private Sensor mGyroSensor = null;
    private Sensor mAccelerometerSensor = null;
    private SensorEventListener mGyroEventListener = null;
    private SensorEventListener mAccelerometerListener = null;
    private SensorManagerClientListener mSensorManagerClientListener = null;
    private float[] mAccelerometers = new float[3];

    public interface SensorManagerClientListener {
        void onHandSetMiddleMotion();

        void onHandSetStrongMotion();
    }

    public void setSensorManagerClientListener(SensorManagerClientListener sensorManagerClientListener) {
        this.mSensorManagerClientListener = sensorManagerClientListener;
    }

    public SensorManagerClient(Context context) {
        this.mContext = context;
    }

    public boolean isGyroInited() {
        return this.mGyroSensor != null;
    }

    public void releaseSensorManager() {
        this.mSensorManager = null;
    }

    public void registerSensor(int i) {
        if ((i & 1) != 0) {
            registerGyroSensor();
        }
        if ((i & 4) != 0) {
            registerAccelerometerListener();
        }
    }

    public void unregisterSensor(int i) {
        if ((i & 1) != 0) {
            unregisterGyroSensor();
        }
        if ((i & 4) != 0) {
            unregisterAccelerometerListener();
        }
    }

    private void registerGyroSensor() {
        CameraUnitLog.v(TAG, "registerGyroSensor, mGyroEventListener: " + this.mGyroEventListener);
        if (this.mGyroEventListener == null) {
            try {
                if (this.mSensorManager == null) {
                    this.mSensorManager = (SensorManager) this.mContext.getSystemService("sensor");
                }
                if (this.mGyroSensor == null) {
                    this.mGyroSensor = this.mSensorManager.getDefaultSensor(4);
                }
                GproSensorListener gproSensorListener = new GproSensorListener();
                this.mGyroEventListener = gproSensorListener;
                this.mSensorManager.registerListener(gproSensorListener, this.mGyroSensor, 3);
            } catch (Exception e) {
                CameraUnitLog.v(TAG, "registerGproSensor, Exception: " + e.toString());
            }
        }
    }

    private void unregisterGyroSensor() {
        SensorManager sensorManager;
        CameraUnitLog.v(TAG, "unregisterGyroSensor, mGyroEventListener: " + this.mGyroEventListener);
        SensorEventListener sensorEventListener = this.mGyroEventListener;
        if (sensorEventListener != null && (sensorManager = this.mSensorManager) != null) {
            sensorManager.unregisterListener(sensorEventListener);
            this.mGyroEventListener = null;
        }
        this.mGyroSensor = null;
    }

    private void registerAccelerometerListener() {
        CameraUnitLog.v(TAG, "registerAccelerometerListener, mAccelerometerListener: " + this.mAccelerometerListener);
        if (this.mAccelerometerListener == null) {
            try {
                if (this.mSensorManager == null) {
                    this.mSensorManager = (SensorManager) this.mContext.getSystemService("sensor");
                }
                if (this.mAccelerometerSensor == null) {
                    this.mAccelerometerSensor = this.mSensorManager.getDefaultSensor(1);
                }
                AccelerometerSensorListener accelerometerSensorListener = new AccelerometerSensorListener();
                this.mAccelerometerListener = accelerometerSensorListener;
                this.mSensorManager.registerListener(accelerometerSensorListener, this.mAccelerometerSensor, 3);
            } catch (Exception e) {
                CameraUnitLog.e(TAG, "registerAccelerometerListener, Exception: " + e.toString());
            }
        }
    }

    private void unregisterAccelerometerListener() {
        SensorManager sensorManager;
        CameraUnitLog.v(TAG, "unregisterAccelerometerListener, mAccelerometerListener: " + this.mAccelerometerListener);
        SensorEventListener sensorEventListener = this.mAccelerometerListener;
        if (sensorEventListener != null && (sensorManager = this.mSensorManager) != null) {
            sensorManager.unregisterListener(sensorEventListener);
            this.mAccelerometerListener = null;
        }
        this.mAccelerometerSensor = null;
    }

    private class AccelerometerSensorListener implements SensorEventListener {
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        private AccelerometerSensorListener() {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (1 == sensorEvent.sensor.getType()) {
                SensorManagerClient.this.mAccelerometers[0] = sensorEvent.values[0];
                SensorManagerClient.this.mAccelerometers[1] = sensorEvent.values[1];
                SensorManagerClient.this.mAccelerometers[2] = sensorEvent.values[2];
            }
        }
    }

    private class GproSensorListener implements SensorEventListener {
        private static final int FRAME_NUMBER_TO_ADD_STRENGTH = 5;
        private static final float MIDDLE_MOTION_STRENGTH_THRESHOLD = 0.8f;
        private static final float STRONG_MOTION_STRENGTH_THRESHOLD = 1.6f;
        private static final float WEAK_MOTION_STRENGTH_THRESHOLD = 0.2f;
        private int mCount;
        private float mMotionStrength;

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        private GproSensorListener() {
            this.mCount = 0;
            this.mMotionStrength = 0.0f;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float fAbs = Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
            int i = this.mCount;
            if (i % 5 == 0) {
                this.mMotionStrength = fAbs;
                this.mCount = 1;
            } else {
                this.mMotionStrength += fAbs;
                this.mCount = i + 1;
            }
            float f = this.mMotionStrength;
            if (STRONG_MOTION_STRENGTH_THRESHOLD <= f) {
                handSetStrongMotion();
            } else if (MIDDLE_MOTION_STRENGTH_THRESHOLD <= f) {
                handSetMiddleMotion();
            }
        }

        public void handSetStrongMotion() {
            if (SensorManagerClient.this.mSensorManagerClientListener != null) {
                SensorManagerClient.this.mSensorManagerClientListener.onHandSetStrongMotion();
            }
        }

        public void handSetMiddleMotion() {
            if (SensorManagerClient.this.mSensorManagerClientListener != null) {
                SensorManagerClient.this.mSensorManagerClientListener.onHandSetMiddleMotion();
            }
        }
    }

    public float[] getAccelerometers() {
        return this.mAccelerometers;
    }
}

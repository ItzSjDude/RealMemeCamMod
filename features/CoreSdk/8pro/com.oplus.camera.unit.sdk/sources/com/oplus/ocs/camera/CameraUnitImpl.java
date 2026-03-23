package com.oplus.ocs.camera;

import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.ProducerConsumerInterfaceContract;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraUnitInterface;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ErrorResult;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ConsumerImpl;
import com.oplus.ocs.camera.producer.ProducerImpl;
import com.oplus.ocs.camera.producer.device.CameraDeviceManager;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraIdType;
import com.oplus.ocs.camera.producer.mode.ModeFactory;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes.dex */
public class CameraUnitImpl implements CameraUnitInterface {
    private static final String AWEME_PACKAGE_NAME = "com.ss.android.ugc.aweme";
    private static final String OPLUS_CAMERA_PACKAGE_NAME = "com.oplus.camera";
    private static final String TAG = "CameraUnitImpl";
    private CameraDeviceManager mDeviceManager = null;
    private final Map<String, ProducerConsumerInterfaceContract.ProducerInterface> mProducerMap = new HashMap();
    private ProducerConsumerInterfaceContract.ConsumerInterface mConsumerInterface = null;

    /* JADX INFO: Access modifiers changed from: private */
    public void initCoverageService(@NonNull Context context) {
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public void initialize(@NonNull final Context context) {
        final CountDownLatch countDownLatch = new CountDownLatch(2);
        ContextHolder.setContext(context);
        new Thread(new Runnable() { // from class: com.oplus.ocs.camera.CameraUnitImpl.1
            @Override // java.lang.Runnable
            public void run() {
                CameraUnitImpl.this.mConsumerInterface = new ConsumerImpl();
                CameraConfigHelper.setConfigStatusCallback(new CameraConfigHelper.ConfigStatusCallback() { // from class: com.oplus.ocs.camera.CameraUnitImpl.1.1
                    @Override // com.oplus.ocs.camera.producer.info.CameraConfigHelper.ConfigStatusCallback
                    public void onConfigParseDone() {
                        CameraUnitImpl.this.mConsumerInterface.onConfigParseDone();
                    }
                });
                CameraConfigHelper.initialize(context);
                countDownLatch.countDown();
            }
        }, "ConsumerImpl init").start();
        new Thread(new Runnable() { // from class: com.oplus.ocs.camera.CameraUnitImpl.2
            @Override // java.lang.Runnable
            public void run() {
                CameraUnitImpl.this.mDeviceManager = new CameraDeviceManager();
                CameraUnitImpl.this.initCoverageService(context);
                countDownLatch.countDown();
            }
        }, "CameraDeviceManager init").start();
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            CameraUnitLog.e(TAG, "initialize, InterruptedException happened.");
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public synchronized void openCamera(@NonNull String str, @NonNull final CameraStateCallbackAdapter cameraStateCallbackAdapter, @NonNull Handler handler) {
        CameraConfigHelper.blockCameraIdTypeIfNeeded();
        CameraIdType cameraIdType = CameraCharacteristicsHelper.getCameraIdType(str);
        if (cameraIdType == null) {
            CameraUnitLog.e(TAG, "openCamera, get CameraIdType failed, empty camera info for " + str);
            return;
        }
        ProducerConsumerInterfaceContract.ProducerInterface producerInterface = this.mProducerMap.get(str);
        if (producerInterface == null) {
            producerInterface = new ProducerImpl(cameraIdType.isMultiType());
            this.mProducerMap.put(str, producerInterface);
        }
        CameraStateCallbackAdapter createCameraStateCallback = producerInterface.createCameraStateCallback(cameraStateCallbackAdapter, handler);
        CameraUnitLog.v(TAG, "openCamera, producer: " + producerInterface + ", mConsumerInterface: " + this.mConsumerInterface + ", callbackAdapter: " + createCameraStateCallback);
        if (createCameraStateCallback != null) {
            producerInterface.setConsumer(this.mConsumerInterface);
            this.mConsumerInterface.setProducer(producerInterface);
            for (CameraIdType cameraIdType2 : cameraIdType.split()) {
                this.mDeviceManager.openCamera(cameraIdType2, createCameraStateCallback, this.mConsumerInterface.createCameraPreviewCallback(), this.mConsumerInterface.createCameraPictureCallback(), this.mConsumerInterface.createCameraRecordingCallback());
            }
        } else {
            CameraUnitLog.e(TAG, "openCamera, not allow to open camera here, directly return error");
            handler.post(new Runnable() { // from class: com.oplus.ocs.camera.CameraUnitImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    cameraStateCallbackAdapter.onCameraError(ErrorResult.ILLEGAL_STATE_ERROR);
                }
            });
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public CameraDeviceInfoInterface getCameraDeviceInfo(@NonNull String str, @NonNull String str2) {
        CameraConfigHelper.blockCameraIdTypeIfNeeded();
        if (ModeFactory.getMode(str2) != null) {
            return ModeFactory.getMode(str2).getCameraDeviceInfo(str);
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public boolean isAuthedClient(@NonNull Context context) {
        try {
            if (!AWEME_PACKAGE_NAME.equals(context.getPackageName()) && !OPLUS_CAMERA_PACKAGE_NAME.equals(context.getPackageName())) {
                Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
                Method method = cls.getMethod("getInstance", new Class[0]);
                Method declaredMethod = cls.getDeclaredMethod("isAuthedClient", Context.class);
                method.setAccessible(true);
                declaredMethod.setAccessible(true);
                return ((Boolean) declaredMethod.invoke(method.invoke(cls, new Object[0]), context)).booleanValue();
            }
            return true;
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "isAuthedClient, There is a problem with the CameraUnit function of this project. " + e.getMessage());
            return false;
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public void preOpenCamera(@NonNull Context context) {
        try {
            CameraUnitLog.v(TAG, "preOpenCamera send from CameraUnit");
            Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
            Method method = cls.getMethod("getInstance", new Class[0]);
            Method declaredMethod = cls.getDeclaredMethod("preOpenCamera", Context.class);
            method.setAccessible(true);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(method.invoke(cls, new Object[0]), context);
        } catch (Exception unused) {
            CameraUnitLog.e(TAG, "preOpenCamera, There is a problem with the CameraUnit function of this project.");
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public synchronized void release() {
        StatisticsManager.getInstance().reportEnterExit(true);
        this.mDeviceManager.release();
        this.mDeviceManager = null;
        ContextHolder.setContext(null);
        this.mProducerMap.clear();
        this.mConsumerInterface.release();
        this.mConsumerInterface = null;
        StatisticsManager.getInstance().release(true);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public Map<String, List<String>> getAllSupportCameraMode() {
        return CameraConfigHelper.getSupportCameraMode();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public List<String> getAllSupportCameraType() {
        return CameraCharacteristicsHelper.getAllSupportCameraType();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraUnitInterface
    public boolean checkAuthenticationPermission(@NonNull Context context, @NonNull String str, int i) {
        CameraUnitLog.e(TAG, "checkAuthenticationPermission, api {versionName: " + str + ", versionCode: " + i + "}; " + SdkConfig.sdkBuildInfo());
        if (!CameraConfigHelper.isConfigFileExist(Util.isSystemCameraPackage(context.getPackageName()))) {
            CameraUnitLog.e(TAG, "checkAuthenticationPermission, config file not exist");
            return false;
        }
        setDeathRecipient(context);
        return true;
    }

    private void setDeathRecipient(Context context) {
        new Thread(new Runnable() { // from class: com.oplus.ocs.camera.CameraUnitImpl.4
            @Override // java.lang.Runnable
            public void run() {
                CameraUnitLog.i(CameraUnitImpl.TAG, "setDeathRecipient");
                try {
                    Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
                    Method method = cls.getMethod("getInstance", new Class[0]);
                    Method declaredMethod = cls.getDeclaredMethod("setDeathRecipient", IBinder.class);
                    method.setAccessible(true);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(method.invoke(cls, new Object[0]), new Binder());
                } catch (Exception e) {
                    CameraUnitLog.e(CameraUnitImpl.TAG, "setDeathRecipient, There is a problem with the CameraUnit function of this project. " + e.getMessage());
                }
            }
        }).start();
    }
}

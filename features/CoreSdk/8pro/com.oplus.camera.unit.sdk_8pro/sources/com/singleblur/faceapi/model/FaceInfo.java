package com.singleblur.faceapi.model;

import android.graphics.PointF;
import android.graphics.Rect;
/* loaded from: classes.dex */
public class FaceInfo implements Cloneable {
    public float eyeDist;
    public PointF[] facePoints;
    public Rect faceRect;
    public int id;
    public float pitch;
    public float roll;
    public float score;
    public float yaw;

    /* renamed from: clone */
    public FaceInfo m11clone() {
        FaceInfo faceInfo = new FaceInfo();
        Rect rect = new Rect();
        faceInfo.faceRect = rect;
        faceInfo.facePoints = new PointF[this.facePoints.length];
        rect.set(this.faceRect);
        int i = 0;
        while (true) {
            PointF[] pointFArr = faceInfo.facePoints;
            if (i < pointFArr.length) {
                pointFArr[i] = new PointF();
                faceInfo.facePoints[i].set(this.facePoints[i]);
                i++;
            } else {
                faceInfo.id = this.id;
                faceInfo.score = this.score;
                faceInfo.yaw = this.yaw;
                faceInfo.pitch = this.pitch;
                faceInfo.roll = this.roll;
                faceInfo.eyeDist = this.eyeDist;
                return faceInfo;
            }
        }
    }

    public String toString() {
        return "FaceInfo(" + this.faceRect + ", " + this.score + ")";
    }
}

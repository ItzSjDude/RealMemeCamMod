package com.oplus.exif;

import com.oplus.ocs.camera.producer.feature.FeatureImpl;

/* JADX INFO: loaded from: classes.dex */
public class OplusRational {
    private final long mDenominator;
    private final long mNumerator;

    public OplusRational(long j, long j2) {
        this.mNumerator = j;
        this.mDenominator = j2;
    }

    public OplusRational(OplusRational oplusRational) {
        this.mNumerator = oplusRational.mNumerator;
        this.mDenominator = oplusRational.mDenominator;
    }

    public long getNumerator() {
        return this.mNumerator;
    }

    public long getDenominator() {
        return this.mDenominator;
    }

    public double toDouble() {
        return this.mNumerator / this.mDenominator;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OplusRational)) {
            return false;
        }
        OplusRational oplusRational = (OplusRational) obj;
        return this.mNumerator == oplusRational.mNumerator && this.mDenominator == oplusRational.mDenominator;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        return this.mNumerator + FeatureImpl.DELIMITER + this.mDenominator;
    }
}

package com.oplus.exif;

/* JADX INFO: loaded from: classes.dex */
public class OplusRational {
    private final long mDenominator;
    private final long mNumerator;

    public OplusRational(long numerator, long denominator) {
        this.mNumerator = numerator;
        this.mDenominator = denominator;
    }

    public OplusRational(OplusRational other) {
        this.mNumerator = other.mNumerator;
        this.mDenominator = other.mDenominator;
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

    public static boolean isSofMarker(short marker) {
        return (marker < -64 || marker > -49 || marker == -60 || marker == -56 || marker == -52) ? false : true;
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
        OplusRational other = (OplusRational) obj;
        return this.mNumerator == other.mNumerator && this.mDenominator == other.mDenominator;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @Override
    public String toString() {
        return this.mNumerator + "/" + this.mDenominator;
    }
}

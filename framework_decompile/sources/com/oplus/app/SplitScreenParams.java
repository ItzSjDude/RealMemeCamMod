package com.oplus.app;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes4.dex */
public final class SplitScreenParams implements Parcelable {
    public static final Parcelable.Creator<SplitScreenParams> CREATOR = new Parcelable.Creator<SplitScreenParams>() { // from class: com.oplus.app.SplitScreenParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SplitScreenParams createFromParcel(Parcel in) {
            return new SplitScreenParams(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SplitScreenParams[] newArray(int size) {
            return new SplitScreenParams[size];
        }
    };
    private Intent mFillIntent;
    private PendingIntent mLaunchIntent;
    private int mPosition;
    private boolean mSelfSplit;

    private SplitScreenParams() {
    }

    private SplitScreenParams(Parcel source) {
        this.mSelfSplit = source.readBoolean();
        this.mLaunchIntent = (PendingIntent) source.readTypedObject(PendingIntent.CREATOR);
        this.mFillIntent = (Intent) source.readTypedObject(Intent.CREATOR);
        this.mPosition = source.readInt();
    }

    public SplitScreenParams(boolean selfSplit, PendingIntent launchIntent, Intent fillIntent, int position) {
        this.mSelfSplit = selfSplit;
        this.mLaunchIntent = launchIntent;
        this.mFillIntent = fillIntent;
        this.mPosition = position;
    }

    private SplitScreenParams(SplitScreenParams other) {
        this(other.mSelfSplit, other.mLaunchIntent, other.mFillIntent, other.mPosition);
    }

    public boolean isSelfSplit() {
        return this.mSelfSplit;
    }

    public PendingIntent getLaunchIntent() {
        return this.mLaunchIntent;
    }

    public Intent getFillIntent() {
        return this.mFillIntent;
    }

    public int getLaunchPosition() {
        return this.mPosition;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBoolean(this.mSelfSplit);
        dest.writeTypedObject(this.mLaunchIntent, 0);
        dest.writeTypedObject(this.mFillIntent, 0);
        dest.writeInt(this.mPosition);
    }
}

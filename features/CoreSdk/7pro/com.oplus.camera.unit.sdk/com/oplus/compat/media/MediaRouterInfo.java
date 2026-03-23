package com.oplus.compat.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes.dex */
public class MediaRouterInfo implements Parcelable {
    public static final Parcelable.Creator<MediaRouterInfo> CREATOR = new Parcelable.Creator<MediaRouterInfo>() { // from class: com.oplus.compat.media.MediaRouterInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaRouterInfo createFromParcel(Parcel parcel) {
            return new MediaRouterInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaRouterInfo[] newArray(int i) {
            return new MediaRouterInfo[i];
        }
    };
    public static final int STATUS_AVAILABLE = 3;
    public static final int STATUS_CONNECTED = 6;
    public static final int STATUS_CONNECTING = 2;
    public static final int STATUS_IN_USE = 5;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_NOT_AVAILABLE = 4;
    public static final int STATUS_SCANNING = 1;
    String mDescription;
    String mDeviceAddress;
    int mDeviceType;
    String mGlobalRouteId;
    String mName;
    int mNameResId;
    int mPresentationDisplayId;
    int mResolvedStatusCode;
    int mSupportedTypes;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaRouterInfo() {
        this.mPresentationDisplayId = -1;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public int getNameResId() {
        return this.mNameResId;
    }

    public void setNameResId(int i) {
        this.mNameResId = i;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public void setDescription(String str) {
        this.mDescription = str;
    }

    public int getSupportedTypes() {
        return this.mSupportedTypes;
    }

    public void setSupportedTypes(int i) {
        this.mSupportedTypes = i;
    }

    public int getDeviceType() {
        return this.mDeviceType;
    }

    public void setDeviceType(int i) {
        this.mDeviceType = i;
    }

    public int getPresentationDisplayId() {
        return this.mPresentationDisplayId;
    }

    public void setPresentationDisplayId(int i) {
        this.mPresentationDisplayId = i;
    }

    public String getDeviceAddress() {
        return this.mDeviceAddress;
    }

    public void setDeviceAddress(String str) {
        this.mDeviceAddress = str;
    }

    public String getGlobalRouteId() {
        return this.mGlobalRouteId;
    }

    public void setGlobalRouteId(String str) {
        this.mGlobalRouteId = str;
    }

    public int getResolvedStatusCode() {
        return this.mResolvedStatusCode;
    }

    public void setResolvedStatusCode(int i) {
        this.mResolvedStatusCode = i;
    }

    public MediaRouterInfo(Parcel parcel) {
        this.mPresentationDisplayId = -1;
        this.mName = parcel.readString();
        this.mNameResId = parcel.readInt();
        this.mDescription = parcel.readString();
        this.mSupportedTypes = parcel.readInt();
        this.mDeviceType = parcel.readInt();
        this.mPresentationDisplayId = parcel.readInt();
        this.mDeviceAddress = parcel.readString();
        this.mGlobalRouteId = parcel.readString();
        this.mResolvedStatusCode = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mName);
        parcel.writeInt(this.mNameResId);
        parcel.writeString(this.mDescription);
        parcel.writeInt(this.mSupportedTypes);
        parcel.writeInt(this.mDeviceType);
        parcel.writeInt(this.mPresentationDisplayId);
        parcel.writeString(this.mDeviceAddress);
        parcel.writeString(this.mGlobalRouteId);
        parcel.writeInt(this.mResolvedStatusCode);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mName, this.mDeviceAddress, this.mGlobalRouteId, Integer.valueOf(this.mDeviceType)});
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaRouterInfo mediaRouterInfo = (MediaRouterInfo) obj;
        if (this.mName == null || this.mName.equals(mediaRouterInfo.mName)) {
            if (this.mDeviceAddress == null || this.mDeviceAddress.equals(mediaRouterInfo.mDeviceAddress)) {
                return this.mGlobalRouteId == null || this.mGlobalRouteId.equals(mediaRouterInfo.mGlobalRouteId);
            }
            return false;
        }
        return false;
    }

    public void clear() {
        this.mName = null;
        this.mNameResId = 0;
        this.mDescription = null;
        this.mSupportedTypes = -1;
        this.mDeviceType = -1;
        this.mPresentationDisplayId = -1;
        this.mDeviceAddress = null;
        this.mGlobalRouteId = null;
        this.mResolvedStatusCode = 0;
    }

    public String toString() {
        return "MediaRouterInfo{mName='" + this.mName + "', mNameResId=" + this.mNameResId + ", mDescription='" + this.mDescription + "', mSupportedTypes=" + this.mSupportedTypes + ", mDeviceType=" + this.mDeviceType + ", mPresentationDisplayId=" + this.mPresentationDisplayId + ", mDeviceAddress='" + this.mDeviceAddress + "', mGlobalRouteId='" + this.mGlobalRouteId + "', mResolvedStatusCode=" + this.mResolvedStatusCode + '}';
    }
}

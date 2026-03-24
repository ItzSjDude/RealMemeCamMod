package android.bluetooth.le;

import android.annotation.SystemApi;
import android.app.ActivityThread;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class AdvertisingSetParameters implements Parcelable {

    @SystemApi
    public static final int ADDRESS_TYPE_DEFAULT = -1;

    @SystemApi
    public static final int ADDRESS_TYPE_PUBLIC = 0;

    @SystemApi
    public static final int ADDRESS_TYPE_RANDOM = 1;
    public static final Parcelable.Creator<AdvertisingSetParameters> CREATOR = new Parcelable.Creator<AdvertisingSetParameters>() { // from class: android.bluetooth.le.AdvertisingSetParameters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertisingSetParameters[] newArray(int size) {
            return new AdvertisingSetParameters[size];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertisingSetParameters createFromParcel(Parcel in) {
            return new AdvertisingSetParameters(in);
        }
    };
    public static final int INTERVAL_HIGH = 1600;
    public static final int INTERVAL_LOW = 160;
    public static final int INTERVAL_MAX = 16777215;
    public static final int INTERVAL_MEDIUM = 400;
    public static final int INTERVAL_MIN = 160;
    private static final int LIMITED_ADVERTISING_MAX_MILLIS = 180000;
    public static final int TX_POWER_HIGH = 1;
    public static final int TX_POWER_LOW = -15;
    public static final int TX_POWER_MAX = 1;
    public static final int TX_POWER_MEDIUM = -7;
    public static final int TX_POWER_MIN = -127;
    public static final int TX_POWER_ULTRA_LOW = -21;
    private final boolean mConnectable;
    private final boolean mIncludeTxPower;
    private final int mInterval;
    private final boolean mIsAnonymous;
    private final boolean mIsLegacy;
    private final int mOwnAddressType;
    private final int mPrimaryPhy;
    private final boolean mScannable;
    private final int mSecondaryPhy;
    private final int mTxPowerLevel;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AddressTypeStatus {
    }

    private AdvertisingSetParameters(boolean connectable, boolean scannable, boolean isLegacy, boolean isAnonymous, boolean includeTxPower, int primaryPhy, int secondaryPhy, int interval, int txPowerLevel, int ownAddressType) {
        this.mConnectable = connectable;
        this.mScannable = scannable;
        this.mIsLegacy = isLegacy;
        this.mIsAnonymous = isAnonymous;
        this.mIncludeTxPower = includeTxPower;
        this.mPrimaryPhy = primaryPhy;
        this.mSecondaryPhy = secondaryPhy;
        this.mInterval = interval;
        this.mTxPowerLevel = txPowerLevel;
        this.mOwnAddressType = ownAddressType;
    }

    private AdvertisingSetParameters(Parcel in) {
        this.mConnectable = in.readInt() != 0;
        this.mScannable = in.readInt() != 0;
        this.mIsLegacy = in.readInt() != 0;
        this.mIsAnonymous = in.readInt() != 0;
        this.mIncludeTxPower = in.readInt() != 0;
        this.mPrimaryPhy = in.readInt();
        this.mSecondaryPhy = in.readInt();
        this.mInterval = in.readInt();
        this.mTxPowerLevel = in.readInt();
        this.mOwnAddressType = in.readInt();
    }

    public boolean isConnectable() {
        return this.mConnectable;
    }

    public boolean isScannable() {
        return this.mScannable;
    }

    public boolean isLegacy() {
        return this.mIsLegacy;
    }

    public boolean isAnonymous() {
        return this.mIsAnonymous;
    }

    public boolean includeTxPower() {
        return this.mIncludeTxPower;
    }

    public int getPrimaryPhy() {
        return this.mPrimaryPhy;
    }

    public int getSecondaryPhy() {
        return this.mSecondaryPhy;
    }

    public int getInterval() {
        return this.mInterval;
    }

    public int getTxPowerLevel() {
        return this.mTxPowerLevel;
    }

    @SystemApi
    public int getOwnAddressType() {
        return this.mOwnAddressType;
    }

    public String toString() {
        return "AdvertisingSetParameters [connectable=" + this.mConnectable + ", isLegacy=" + this.mIsLegacy + ", isAnonymous=" + this.mIsAnonymous + ", includeTxPower=" + this.mIncludeTxPower + ", primaryPhy=" + this.mPrimaryPhy + ", secondaryPhy=" + this.mSecondaryPhy + ", interval=" + this.mInterval + ", txPowerLevel=" + this.mTxPowerLevel + ", ownAddressType=" + this.mOwnAddressType + NavigationBarInflaterView.SIZE_MOD_END;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mConnectable ? 1 : 0);
        parcel.writeInt(this.mScannable ? 1 : 0);
        parcel.writeInt(this.mIsLegacy ? 1 : 0);
        parcel.writeInt(this.mIsAnonymous ? 1 : 0);
        parcel.writeInt(this.mIncludeTxPower ? 1 : 0);
        parcel.writeInt(this.mPrimaryPhy);
        parcel.writeInt(this.mSecondaryPhy);
        parcel.writeInt(this.mInterval);
        parcel.writeInt(this.mTxPowerLevel);
        parcel.writeInt(this.mOwnAddressType);
    }

    public static final class Builder {
        private boolean mConnectable = false;
        private boolean mScannable = false;
        private boolean mIsLegacy = false;
        private boolean mIsAnonymous = false;
        private boolean mIncludeTxPower = false;
        private int mPrimaryPhy = 1;
        private int mSecondaryPhy = 1;
        private int mInterval = 160;
        private int mTxPowerLevel = -7;
        private int mOwnAddressType = -1;

        public Builder setConnectable(boolean connectable) {
            this.mConnectable = connectable;
            return this;
        }

        public Builder setScannable(boolean scannable) {
            this.mScannable = scannable;
            return this;
        }

        public Builder setLegacyMode(boolean isLegacy) {
            this.mIsLegacy = isLegacy;
            return this;
        }

        public Builder setAnonymous(boolean isAnonymous) {
            this.mIsAnonymous = isAnonymous;
            return this;
        }

        public Builder setIncludeTxPower(boolean includeTxPower) {
            this.mIncludeTxPower = includeTxPower;
            return this;
        }

        public Builder setPrimaryPhy(int primaryPhy) {
            if (primaryPhy != 1 && primaryPhy != 3) {
                throw new IllegalArgumentException("bad primaryPhy " + primaryPhy);
            }
            this.mPrimaryPhy = primaryPhy;
            return this;
        }

        public Builder setSecondaryPhy(int secondaryPhy) {
            if (secondaryPhy != 1 && secondaryPhy != 2 && secondaryPhy != 3) {
                throw new IllegalArgumentException("bad secondaryPhy " + secondaryPhy);
            }
            this.mSecondaryPhy = secondaryPhy;
            return this;
        }

        public Builder setInterval(int interval) {
            if (interval < 160 || interval > 16777215) {
                throw new IllegalArgumentException("unknown interval " + interval);
            }
            this.mInterval = interval;
            return this;
        }

        public Builder setTxPowerLevel(int txPowerLevel) {
            String packageName = ActivityThread.currentPackageName();
            if (packageName.equals("com.android.bluetooth")) {
                if (txPowerLevel < -127 || txPowerLevel > 20) {
                    throw new IllegalArgumentException("invalid txPowerLevel " + txPowerLevel);
                }
            } else if (txPowerLevel < -127 || txPowerLevel > 1) {
                throw new IllegalArgumentException("unknown txPowerLevel " + txPowerLevel);
            }
            this.mTxPowerLevel = txPowerLevel;
            return this;
        }

        @SystemApi
        public Builder setOwnAddressType(int ownAddressType) {
            if (ownAddressType < -1 || ownAddressType > 1) {
                throw new IllegalArgumentException("unknown address type " + ownAddressType);
            }
            this.mOwnAddressType = ownAddressType;
            return this;
        }

        public AdvertisingSetParameters build() {
            if (this.mIsLegacy) {
                if (this.mIsAnonymous) {
                    throw new IllegalArgumentException("Legacy advertising can't be anonymous");
                }
                if (this.mConnectable && !this.mScannable) {
                    throw new IllegalStateException("Legacy advertisement can't be connectable and non-scannable");
                }
                if (this.mIncludeTxPower) {
                    throw new IllegalStateException("Legacy advertising can't include TX power level in header");
                }
            } else {
                boolean z = this.mConnectable;
                if (z && this.mScannable) {
                    throw new IllegalStateException("Advertising can't be both connectable and scannable");
                }
                if (this.mIsAnonymous && z) {
                    throw new IllegalStateException("Advertising can't be both connectable and anonymous");
                }
            }
            return new AdvertisingSetParameters(this.mConnectable, this.mScannable, this.mIsLegacy, this.mIsAnonymous, this.mIncludeTxPower, this.mPrimaryPhy, this.mSecondaryPhy, this.mInterval, this.mTxPowerLevel, this.mOwnAddressType);
        }
    }
}

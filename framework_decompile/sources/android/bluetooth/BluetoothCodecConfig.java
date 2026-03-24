package android.bluetooth;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.security.keystore.KeyProperties;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BluetoothCodecConfig implements Parcelable {
    public static final int BITS_PER_SAMPLE_16 = 1;
    public static final int BITS_PER_SAMPLE_24 = 2;
    public static final int BITS_PER_SAMPLE_32 = 4;
    public static final int BITS_PER_SAMPLE_NONE = 0;
    public static final int CHANNEL_MODE_JOINT_STEREO = 4;
    public static final int CHANNEL_MODE_MONO = 1;
    public static final int CHANNEL_MODE_NONE = 0;
    public static final int CHANNEL_MODE_STEREO = 2;
    public static final int CODEC_PRIORITY_DEFAULT = 0;
    public static final int CODEC_PRIORITY_DISABLED = -1;
    public static final int CODEC_PRIORITY_HIGHEST = 1000000;
    public static final Parcelable.Creator<BluetoothCodecConfig> CREATOR = new Parcelable.Creator<BluetoothCodecConfig>() { // from class: android.bluetooth.BluetoothCodecConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecConfig createFromParcel(Parcel in) {
            return new BluetoothCodecConfig(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecConfig[] newArray(int size) {
            return new BluetoothCodecConfig[size];
        }
    };
    public static final int SAMPLE_RATE_16000 = 64;
    public static final int SAMPLE_RATE_176400 = 16;
    public static final int SAMPLE_RATE_192000 = 32;
    public static final int SAMPLE_RATE_24000 = 128;
    public static final int SAMPLE_RATE_32000 = 256;
    public static final int SAMPLE_RATE_44100 = 1;
    public static final int SAMPLE_RATE_48000 = 2;
    public static final int SAMPLE_RATE_8000 = 512;
    public static final int SAMPLE_RATE_88200 = 4;
    public static final int SAMPLE_RATE_96000 = 8;
    public static final int SAMPLE_RATE_NONE = 0;
    public static final int SOURCE_CODEC_TYPE_AAC = 1;
    public static final int SOURCE_CODEC_TYPE_APTX = 2;
    public static final int SOURCE_CODEC_TYPE_APTX_ADAPTIVE = 6;
    public static final int SOURCE_CODEC_TYPE_APTX_HD = 3;
    public static final int SOURCE_CODEC_TYPE_APTX_TWSP = 7;
    public static final int SOURCE_CODEC_TYPE_CELT = 12;
    public static final int SOURCE_CODEC_TYPE_INVALID = 1000000;
    public static final int SOURCE_CODEC_TYPE_LC3 = 5;
    public static final int SOURCE_CODEC_TYPE_LDAC = 4;
    public static final int SOURCE_CODEC_TYPE_LHDCV1 = 8;
    public static final int SOURCE_CODEC_TYPE_LHDCV2 = 9;
    public static final int SOURCE_CODEC_TYPE_LHDCV3 = 10;
    public static final int SOURCE_CODEC_TYPE_LHDCV5 = 13;
    public static final int SOURCE_CODEC_TYPE_MAX = 6;
    public static final int SOURCE_CODEC_TYPE_SBC = 0;
    public static final int SOURCE_QVA_CODEC_TYPE_MAX = 11;
    private final int mBitsPerSample;
    private final int mChannelMode;
    private int mCodecPriority;
    private final long mCodecSpecific1;
    private final long mCodecSpecific2;
    private final long mCodecSpecific3;
    private final long mCodecSpecific4;
    private final int mCodecType;
    private final int mSampleRate;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BitsPerSample {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ChannelMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CodecPriority {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SampleRate {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SourceCodecType {
    }

    public BluetoothCodecConfig(int codecType, int codecPriority, int sampleRate, int bitsPerSample, int channelMode, long codecSpecific1, long codecSpecific2, long codecSpecific3, long codecSpecific4) {
        this.mCodecType = codecType;
        this.mCodecPriority = codecPriority;
        this.mSampleRate = sampleRate;
        this.mBitsPerSample = bitsPerSample;
        this.mChannelMode = channelMode;
        this.mCodecSpecific1 = codecSpecific1;
        this.mCodecSpecific2 = codecSpecific2;
        this.mCodecSpecific3 = codecSpecific3;
        this.mCodecSpecific4 = codecSpecific4;
    }

    public BluetoothCodecConfig(int codecType) {
        this(codecType, 0, 0, 0, 0, 0L, 0L, 0L, 0L);
    }

    private BluetoothCodecConfig(Parcel in) {
        this.mCodecType = in.readInt();
        this.mCodecPriority = in.readInt();
        this.mSampleRate = in.readInt();
        this.mBitsPerSample = in.readInt();
        this.mChannelMode = in.readInt();
        this.mCodecSpecific1 = in.readLong();
        this.mCodecSpecific2 = in.readLong();
        this.mCodecSpecific3 = in.readLong();
        this.mCodecSpecific4 = in.readLong();
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothCodecConfig)) {
            return false;
        }
        BluetoothCodecConfig other = (BluetoothCodecConfig) o;
        return other.mCodecType == this.mCodecType && other.mCodecPriority == this.mCodecPriority && other.mSampleRate == this.mSampleRate && other.mBitsPerSample == this.mBitsPerSample && other.mChannelMode == this.mChannelMode && other.mCodecSpecific1 == this.mCodecSpecific1 && other.mCodecSpecific2 == this.mCodecSpecific2 && other.mCodecSpecific3 == this.mCodecSpecific3 && other.mCodecSpecific4 == this.mCodecSpecific4;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mCodecType), Integer.valueOf(this.mCodecPriority), Integer.valueOf(this.mSampleRate), Integer.valueOf(this.mBitsPerSample), Integer.valueOf(this.mChannelMode), Long.valueOf(this.mCodecSpecific1), Long.valueOf(this.mCodecSpecific2), Long.valueOf(this.mCodecSpecific3), Long.valueOf(this.mCodecSpecific4));
    }

    private static String appendCapabilityToString(String prevStr, String capStr) {
        if (prevStr == null) {
            return capStr;
        }
        return prevStr + "|" + capStr;
    }

    public String toString() {
        String sampleRateStr = null;
        if (this.mSampleRate == 0) {
            sampleRateStr = appendCapabilityToString(null, KeyProperties.DIGEST_NONE);
        }
        if ((this.mSampleRate & 1) != 0) {
            sampleRateStr = appendCapabilityToString(sampleRateStr, "44100");
        }
        if ((this.mSampleRate & 2) != 0) {
            sampleRateStr = appendCapabilityToString(sampleRateStr, "48000");
        }
        if ((this.mSampleRate & 4) != 0) {
            sampleRateStr = appendCapabilityToString(sampleRateStr, "88200");
        }
        if ((this.mSampleRate & 8) != 0) {
            sampleRateStr = appendCapabilityToString(sampleRateStr, "96000");
        }
        if ((this.mSampleRate & 16) != 0) {
            sampleRateStr = appendCapabilityToString(sampleRateStr, "176400");
        }
        if ((this.mSampleRate & 32) != 0) {
            sampleRateStr = appendCapabilityToString(sampleRateStr, "192000");
        }
        String bitsPerSampleStr = null;
        if (this.mBitsPerSample == 0) {
            bitsPerSampleStr = appendCapabilityToString(null, KeyProperties.DIGEST_NONE);
        }
        if ((this.mBitsPerSample & 1) != 0) {
            bitsPerSampleStr = appendCapabilityToString(bitsPerSampleStr, "16");
        }
        if ((this.mBitsPerSample & 2) != 0) {
            bitsPerSampleStr = appendCapabilityToString(bitsPerSampleStr, "24");
        }
        if ((this.mBitsPerSample & 4) != 0) {
            bitsPerSampleStr = appendCapabilityToString(bitsPerSampleStr, "32");
        }
        String channelModeStr = null;
        if (this.mChannelMode == 0) {
            channelModeStr = appendCapabilityToString(null, KeyProperties.DIGEST_NONE);
        }
        if ((this.mChannelMode & 1) != 0) {
            channelModeStr = appendCapabilityToString(channelModeStr, "MONO");
        }
        if ((this.mChannelMode & 2) != 0) {
            channelModeStr = appendCapabilityToString(channelModeStr, "STEREO");
        }
        return "{codecName:" + getCodecName(this.mCodecType) + ",mCodecType:" + this.mCodecType + ",mCodecPriority:" + this.mCodecPriority + ",mSampleRate:" + String.format("0x%x", Integer.valueOf(this.mSampleRate)) + NavigationBarInflaterView.KEY_CODE_START + sampleRateStr + "),mBitsPerSample:" + String.format("0x%x", Integer.valueOf(this.mBitsPerSample)) + NavigationBarInflaterView.KEY_CODE_START + bitsPerSampleStr + "),mChannelMode:" + String.format("0x%x", Integer.valueOf(this.mChannelMode)) + NavigationBarInflaterView.KEY_CODE_START + channelModeStr + "),mCodecSpecific1:" + this.mCodecSpecific1 + ",mCodecSpecific2:" + this.mCodecSpecific2 + ",mCodecSpecific3:" + this.mCodecSpecific3 + ",mCodecSpecific4:" + this.mCodecSpecific4 + "}";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.mCodecType);
        out.writeInt(this.mCodecPriority);
        out.writeInt(this.mSampleRate);
        out.writeInt(this.mBitsPerSample);
        out.writeInt(this.mChannelMode);
        out.writeLong(this.mCodecSpecific1);
        out.writeLong(this.mCodecSpecific2);
        out.writeLong(this.mCodecSpecific3);
        out.writeLong(this.mCodecSpecific4);
    }

    public static String getCodecName(int codecType) {
        switch (codecType) {
            case 0:
                return "SBC";
            case 1:
                return "AAC";
            case 2:
                return "aptX";
            case 3:
                return "aptX HD";
            case 4:
                return "LDAC";
            case 5:
                return "LC3";
            case 6:
                return "aptX Adaptive";
            case 7:
                return "aptX TWS+";
            case 8:
            case 9:
            case 10:
                return "LHDC";
            case 1000000:
                return "INVALID CODEC";
            default:
                return "UNKNOWN CODEC(" + codecType + NavigationBarInflaterView.KEY_CODE_END;
        }
    }

    public int getCodecType() {
        return this.mCodecType;
    }

    public boolean isMandatoryCodec() {
        return this.mCodecType == 0;
    }

    public int getCodecPriority() {
        return this.mCodecPriority;
    }

    public void setCodecPriority(int codecPriority) {
        this.mCodecPriority = codecPriority;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int getBitsPerSample() {
        return this.mBitsPerSample;
    }

    public int getChannelMode() {
        return this.mChannelMode;
    }

    public long getCodecSpecific1() {
        return this.mCodecSpecific1;
    }

    public long getCodecSpecific2() {
        return this.mCodecSpecific2;
    }

    public long getCodecSpecific3() {
        return this.mCodecSpecific3;
    }

    public long getCodecSpecific4() {
        return this.mCodecSpecific4;
    }

    private static boolean hasSingleBit(int valueSet) {
        return valueSet == 0 || ((valueSet + (-1)) & valueSet) == 0;
    }

    public boolean hasSingleSampleRate() {
        return hasSingleBit(this.mSampleRate);
    }

    public boolean hasSingleBitsPerSample() {
        return hasSingleBit(this.mBitsPerSample);
    }

    public boolean hasSingleChannelMode() {
        return hasSingleBit(this.mChannelMode);
    }

    public boolean sameAudioFeedingParameters(BluetoothCodecConfig other) {
        int i = this.mCodecType;
        if (10 == i || 9 == i || 8 == i) {
            return other != null && other.mSampleRate == this.mSampleRate && other.mBitsPerSample == this.mBitsPerSample && other.mChannelMode == this.mChannelMode && other.mCodecSpecific1 == this.mCodecSpecific1 && other.mCodecSpecific2 == this.mCodecSpecific2;
        }
        String enableLL = SystemProperties.get("persist.bluetooth.a2dp.low_latency");
        Log.d("BALL", "sameAudioFeedingParameters enableLL = " + enableLL);
        return (enableLL.isEmpty() || !enableLL.equals("false")) ? this.mCodecType == 0 ? other != null && other.mSampleRate == this.mSampleRate && other.mBitsPerSample == this.mBitsPerSample && other.mChannelMode == this.mChannelMode && other.mCodecSpecific2 == this.mCodecSpecific2 : other != null && other.mSampleRate == this.mSampleRate && other.mBitsPerSample == this.mBitsPerSample && other.mChannelMode == this.mChannelMode : other != null && other.mSampleRate == this.mSampleRate && other.mBitsPerSample == this.mBitsPerSample && other.mChannelMode == this.mChannelMode;
    }

    public boolean similarCodecFeedingParameters(BluetoothCodecConfig other) {
        int channelMode;
        if (other == null || this.mCodecType != other.mCodecType) {
            return false;
        }
        int sampleRate = other.mSampleRate;
        if (this.mSampleRate == 0 || sampleRate == 0) {
            sampleRate = this.mSampleRate;
        }
        int bitsPerSample = other.mBitsPerSample;
        int bitsPerSample2 = (this.mBitsPerSample == 0 || bitsPerSample == 0) ? this.mBitsPerSample : bitsPerSample;
        int bitsPerSample3 = other.mChannelMode;
        if (this.mChannelMode == 0 || bitsPerSample3 == 0) {
            int channelMode2 = this.mChannelMode;
            channelMode = channelMode2;
        } else {
            channelMode = bitsPerSample3;
        }
        return sameAudioFeedingParameters(new BluetoothCodecConfig(this.mCodecType, 0, sampleRate, bitsPerSample2, channelMode, 0L, 0L, 0L, 0L));
    }

    public boolean sameCodecSpecificParameters(BluetoothCodecConfig other) {
        if (other == null && this.mCodecType != other.mCodecType) {
            return false;
        }
        switch (this.mCodecType) {
            case 1:
            case 4:
            case 5:
                if (this.mCodecSpecific1 != other.mCodecSpecific1) {
                    return false;
                }
                break;
            case 2:
            case 3:
            default:
                return true;
            case 6:
                break;
        }
        if (other.mCodecSpecific4 > 0) {
            return false;
        }
        return true;
    }

    public static final class Builder {
        private int mCodecType = 1000000;
        private int mCodecPriority = 0;
        private int mSampleRate = 0;
        private int mBitsPerSample = 0;
        private int mChannelMode = 0;
        private long mCodecSpecific1 = 0;
        private long mCodecSpecific2 = 0;
        private long mCodecSpecific3 = 0;
        private long mCodecSpecific4 = 0;

        public Builder setCodecType(int codecType) {
            this.mCodecType = codecType;
            return this;
        }

        public Builder setCodecPriority(int codecPriority) {
            this.mCodecPriority = codecPriority;
            return this;
        }

        public Builder setSampleRate(int sampleRate) {
            this.mSampleRate = sampleRate;
            return this;
        }

        public Builder setBitsPerSample(int bitsPerSample) {
            this.mBitsPerSample = bitsPerSample;
            return this;
        }

        public Builder setChannelMode(int channelMode) {
            this.mChannelMode = channelMode;
            return this;
        }

        public Builder setCodecSpecific1(long codecSpecific1) {
            this.mCodecSpecific1 = codecSpecific1;
            return this;
        }

        public Builder setCodecSpecific2(long codecSpecific2) {
            this.mCodecSpecific2 = codecSpecific2;
            return this;
        }

        public Builder setCodecSpecific3(long codecSpecific3) {
            this.mCodecSpecific3 = codecSpecific3;
            return this;
        }

        public Builder setCodecSpecific4(long codecSpecific4) {
            this.mCodecSpecific4 = codecSpecific4;
            return this;
        }

        public BluetoothCodecConfig build() {
            return new BluetoothCodecConfig(this.mCodecType, this.mCodecPriority, this.mSampleRate, this.mBitsPerSample, this.mChannelMode, this.mCodecSpecific1, this.mCodecSpecific2, this.mCodecSpecific3, this.mCodecSpecific4);
        }
    }
}

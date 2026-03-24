package android.bluetooth;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BluetoothLeAudioCodecConfig implements Parcelable {
    public static final int BITS_PER_SAMPLE_16 = 1;
    public static final int BITS_PER_SAMPLE_24 = 2;
    public static final int BITS_PER_SAMPLE_32 = 8;
    public static final int BITS_PER_SAMPLE_NONE = 0;
    public static final int CHANNEL_COUNT_1 = 1;
    public static final int CHANNEL_COUNT_2 = 2;
    public static final int CHANNEL_COUNT_NONE = 0;
    public static final int CODEC_PRIORITY_DEFAULT = 0;
    public static final int CODEC_PRIORITY_DISABLED = -1;
    public static final int CODEC_PRIORITY_HIGHEST = 1000000;
    public static final Parcelable.Creator<BluetoothLeAudioCodecConfig> CREATOR = new Parcelable.Creator<BluetoothLeAudioCodecConfig>() { // from class: android.bluetooth.BluetoothLeAudioCodecConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioCodecConfig createFromParcel(Parcel in) {
            int codecType = in.readInt();
            int codecPriority = in.readInt();
            int sampleRate = in.readInt();
            int bitsPerSample = in.readInt();
            int channelCount = in.readInt();
            int frameDuration = in.readInt();
            int octetsPerFrame = in.readInt();
            int minOctetsPerFrame = in.readInt();
            int maxOctetsPerFrame = in.readInt();
            long codecSpecific1 = in.readLong();
            long codecSpecific2 = in.readLong();
            long codecSpecific3 = in.readLong();
            long codecSpecific4 = in.readLong();
            return new BluetoothLeAudioCodecConfig(codecType, codecPriority, sampleRate, bitsPerSample, channelCount, frameDuration, octetsPerFrame, minOctetsPerFrame, maxOctetsPerFrame, codecSpecific1, codecSpecific2, codecSpecific3, codecSpecific4);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioCodecConfig[] newArray(int size) {
            return new BluetoothLeAudioCodecConfig[size];
        }
    };
    public static final int FRAME_DURATION_10000 = 2;
    public static final int FRAME_DURATION_15000 = 65536;
    public static final int FRAME_DURATION_7500 = 1;
    public static final int FRAME_DURATION_NONE = 0;
    public static final int SAMPLE_RATE_16000 = 4;
    public static final int SAMPLE_RATE_24000 = 16;
    public static final int SAMPLE_RATE_32000 = 32;
    public static final int SAMPLE_RATE_44100 = 64;
    public static final int SAMPLE_RATE_48000 = 128;
    public static final int SAMPLE_RATE_8000 = 1;
    public static final int SAMPLE_RATE_96000 = 512;
    public static final int SAMPLE_RATE_NONE = 0;
    public static final int SOURCE_CODEC_TYPE_APTX_ADAPTIVE_LE = 1;
    public static final int SOURCE_CODEC_TYPE_INVALID = 1000000;
    public static final int SOURCE_CODEC_TYPE_LC3 = 0;
    private final int mBitsPerSample;
    private final int mChannelCount;
    private final int mCodecPriority;
    private final long mCodecSpecific1;
    private final long mCodecSpecific2;
    private final long mCodecSpecific3;
    private final long mCodecSpecific4;
    private final int mCodecType;
    private final int mFrameDuration;
    private final int mMaxOctetsPerFrame;
    private final int mMinOctetsPerFrame;
    private final int mOctetsPerFrame;
    private final int mSampleRate;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BitsPerSample {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ChannelCount {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CodecPriority {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameDuration {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SampleRate {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SourceCodecType {
    }

    private BluetoothLeAudioCodecConfig(int codecType, int codecPriority, int sampleRate, int bitsPerSample, int channelCount, int frameDuration, int octetsPerFrame, int minOctetsPerFrame, int maxOctetsPerFrame, long codecSpecific1, long codecSpecific2, long codecSpecific3, long codecSpecific4) {
        this.mCodecType = codecType;
        this.mCodecPriority = codecPriority;
        this.mSampleRate = sampleRate;
        this.mBitsPerSample = bitsPerSample;
        this.mChannelCount = channelCount;
        this.mFrameDuration = frameDuration;
        this.mOctetsPerFrame = octetsPerFrame;
        this.mMinOctetsPerFrame = minOctetsPerFrame;
        this.mMaxOctetsPerFrame = maxOctetsPerFrame;
        this.mCodecSpecific1 = codecSpecific1;
        this.mCodecSpecific2 = codecSpecific2;
        this.mCodecSpecific3 = codecSpecific3;
        this.mCodecSpecific4 = codecSpecific4;
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
        out.writeInt(this.mChannelCount);
        out.writeInt(this.mFrameDuration);
        out.writeInt(this.mOctetsPerFrame);
        out.writeInt(this.mMinOctetsPerFrame);
        out.writeInt(this.mMaxOctetsPerFrame);
        out.writeLong(this.mCodecSpecific1);
        out.writeLong(this.mCodecSpecific2);
        out.writeLong(this.mCodecSpecific3);
        out.writeLong(this.mCodecSpecific4);
    }

    public String toString() {
        return "{codecName:" + getCodecName() + ",mCodecType:" + this.mCodecType + ",mCodecPriority:" + this.mCodecPriority + ",mSampleRate:" + this.mSampleRate + ",mBitsPerSample:" + this.mBitsPerSample + ",mChannelCount:" + this.mChannelCount + ",mFrameDuration:" + this.mFrameDuration + ",mOctetsPerFrame:" + this.mOctetsPerFrame + ",mMinOctetsPerFrame:" + this.mMinOctetsPerFrame + ",mMaxOctetsPerFrame:" + this.mMaxOctetsPerFrame + ",mCodecSpecific1:" + this.mCodecSpecific1 + ",mCodecSpecific2:" + this.mCodecSpecific2 + ",mCodecSpecific3:" + this.mCodecSpecific3 + ",mCodecSpecific4:" + this.mCodecSpecific4 + "}";
    }

    public int getCodecType() {
        return this.mCodecType;
    }

    public String getCodecName() {
        switch (this.mCodecType) {
            case 0:
                return "LC3";
            case 1:
                return "APTX_ADAPTIVE_LEA";
            case 1000000:
                return "INVALID CODEC";
            default:
                return "UNKNOWN CODEC(" + this.mCodecType + NavigationBarInflaterView.KEY_CODE_END;
        }
    }

    public int getCodecPriority() {
        return this.mCodecPriority;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int getBitsPerSample() {
        return this.mBitsPerSample;
    }

    public int getChannelCount() {
        return this.mChannelCount;
    }

    public int getFrameDuration() {
        return this.mFrameDuration;
    }

    public int getOctetsPerFrame() {
        return this.mOctetsPerFrame;
    }

    public int getMinOctetsPerFrame() {
        return this.mMinOctetsPerFrame;
    }

    public int getMaxOctetsPerFrame() {
        return this.mMaxOctetsPerFrame;
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

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothLeAudioCodecConfig)) {
            return false;
        }
        BluetoothLeAudioCodecConfig other = (BluetoothLeAudioCodecConfig) o;
        return other.getCodecType() == this.mCodecType && other.getCodecPriority() == this.mCodecPriority && other.getSampleRate() == this.mSampleRate && other.getBitsPerSample() == this.mBitsPerSample && other.getChannelCount() == this.mChannelCount && other.getFrameDuration() == this.mFrameDuration && other.getOctetsPerFrame() == this.mOctetsPerFrame && other.getMinOctetsPerFrame() == this.mMinOctetsPerFrame && other.getMaxOctetsPerFrame() == this.mMaxOctetsPerFrame && other.mCodecSpecific1 == this.mCodecSpecific1 && other.mCodecSpecific2 == this.mCodecSpecific2 && other.mCodecSpecific3 == this.mCodecSpecific3 && other.mCodecSpecific4 == this.mCodecSpecific4;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mCodecType), Integer.valueOf(this.mCodecPriority), Integer.valueOf(this.mSampleRate), Integer.valueOf(this.mBitsPerSample), Integer.valueOf(this.mChannelCount), Integer.valueOf(this.mFrameDuration), Integer.valueOf(this.mOctetsPerFrame), Integer.valueOf(this.mMinOctetsPerFrame), Integer.valueOf(this.mMaxOctetsPerFrame), Long.valueOf(this.mCodecSpecific1), Long.valueOf(this.mCodecSpecific2), Long.valueOf(this.mCodecSpecific3), Long.valueOf(this.mCodecSpecific4));
    }

    public static final class Builder {
        private int mBitsPerSample;
        private int mChannelCount;
        private int mCodecPriority;
        private long mCodecSpecific1;
        private long mCodecSpecific2;
        private long mCodecSpecific3;
        private long mCodecSpecific4;
        private int mCodecType;
        private int mFrameDuration;
        private int mMaxOctetsPerFrame;
        private int mMinOctetsPerFrame;
        private int mOctetsPerFrame;
        private int mSampleRate;

        public Builder() {
            this.mCodecType = 1000000;
            this.mCodecPriority = 0;
            this.mSampleRate = 0;
            this.mBitsPerSample = 0;
            this.mChannelCount = 0;
            this.mFrameDuration = 0;
            this.mOctetsPerFrame = 0;
            this.mMinOctetsPerFrame = 0;
            this.mMaxOctetsPerFrame = 0;
            this.mCodecSpecific1 = 0L;
            this.mCodecSpecific2 = 0L;
            this.mCodecSpecific3 = 0L;
            this.mCodecSpecific4 = 0L;
        }

        public Builder(BluetoothLeAudioCodecConfig config) {
            this.mCodecType = 1000000;
            this.mCodecPriority = 0;
            this.mSampleRate = 0;
            this.mBitsPerSample = 0;
            this.mChannelCount = 0;
            this.mFrameDuration = 0;
            this.mOctetsPerFrame = 0;
            this.mMinOctetsPerFrame = 0;
            this.mMaxOctetsPerFrame = 0;
            this.mCodecSpecific1 = 0L;
            this.mCodecSpecific2 = 0L;
            this.mCodecSpecific3 = 0L;
            this.mCodecSpecific4 = 0L;
            this.mCodecType = config.getCodecType();
            this.mCodecPriority = config.getCodecPriority();
            this.mSampleRate = config.getSampleRate();
            this.mBitsPerSample = config.getBitsPerSample();
            this.mChannelCount = config.getChannelCount();
            this.mFrameDuration = config.getFrameDuration();
            this.mOctetsPerFrame = config.getOctetsPerFrame();
            this.mMinOctetsPerFrame = config.getMinOctetsPerFrame();
            this.mMaxOctetsPerFrame = config.getMaxOctetsPerFrame();
            this.mCodecSpecific1 = config.getCodecSpecific1();
            this.mCodecSpecific2 = config.getCodecSpecific2();
            this.mCodecSpecific3 = config.getCodecSpecific3();
            this.mCodecSpecific4 = config.getCodecSpecific4();
        }

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

        public Builder setChannelCount(int channelCount) {
            this.mChannelCount = channelCount;
            return this;
        }

        public Builder setFrameDuration(int frameDuration) {
            this.mFrameDuration = frameDuration;
            return this;
        }

        public Builder setOctetsPerFrame(int octetsPerFrame) {
            this.mOctetsPerFrame = octetsPerFrame;
            return this;
        }

        public Builder setMinOctetsPerFrame(int minOctetsPerFrame) {
            this.mMinOctetsPerFrame = minOctetsPerFrame;
            return this;
        }

        public Builder setMaxOctetsPerFrame(int maxOctetsPerFrame) {
            this.mMaxOctetsPerFrame = maxOctetsPerFrame;
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

        public BluetoothLeAudioCodecConfig build() {
            return new BluetoothLeAudioCodecConfig(this.mCodecType, this.mCodecPriority, this.mSampleRate, this.mBitsPerSample, this.mChannelCount, this.mFrameDuration, this.mOctetsPerFrame, this.mMinOctetsPerFrame, this.mMaxOctetsPerFrame, this.mCodecSpecific1, this.mCodecSpecific2, this.mCodecSpecific3, this.mCodecSpecific4);
        }
    }
}

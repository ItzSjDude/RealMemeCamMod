package android.content;

import android.os.Parcel;

public class OplusBaseIntent {
    // Static fields
    public static final int FLAG_RECEIVER_OPLUSQUEUE = 524288;
    public static final int FLAG_RECEIVER_QUEUE_PRIOR = 1048576;
    public static final int OPLUS_FLAG_ACTIVITY_KEEP_RESUM_WHEN_SLEEPING = 1073741824;
    public static final int OPLUS_FLAG_ACTIVITY_SECURE_POLICY = -2147483648;
    public static final int OPLUS_FLAG_KEEP_CHOOSER_LABEL_FOR_MULTI_APP = 8192;
    public static final int OPLUS_FLAG_MULTI_APP_DIRECT_MULTI_APP = 4096;
    public static final int OPLUS_FLAG_MULTI_APP_SKIP_CHOOSER = 2048;
    public static final int OPLUS_FLAG_MUTIL_APP = 1024;
    public static final int OPLUS_FLAG_MUTIL_CHOOSER = 512;
    public static final int OPLUS_FLAG_RECEIVER_OPLUSQUEUE = 2;
    public static final int OPLUS_FLAG_RECEIVER_QUEUE_PRIOR = 1;

    // Instance fields
    public int mCallingUid = -1;
    public int mIsForFreeForm = 0;
    public int mIsFromGameSpace = 0;
    public int mOplusFlags = 0;
    public int mOplusUserId = 0;
    private int mPairLaunchWindowingMode = 0;
    public int mPid = -1;
    public int mStackId = 0;
    public int mStartFromOcar = 0;
    public int mUid = -1;

    // Constructors
    public OplusBaseIntent() {
    }

    public OplusBaseIntent(OplusBaseIntent o, int copyMode) {
        if (o != null) {
            this.mOplusUserId = o.mOplusUserId;
            this.mIsFromGameSpace = o.mIsFromGameSpace;
            this.mIsForFreeForm = o.mIsForFreeForm;
            this.mStackId = o.mStackId;
            this.mOplusFlags = o.mOplusFlags;
            this.mCallingUid = o.mCallingUid;
            this.mStartFromOcar = o.mStartFromOcar;
            this.mPairLaunchWindowingMode = o.mPairLaunchWindowingMode;
        }
    }

    // Methods
    public void addOplusFlags(int flags) {
        this.mOplusFlags |= flags;
    }

    public int fillIn(OplusBaseIntent other, int flags) {
        if (other != null) {
            this.mOplusUserId = other.mOplusUserId;
            this.mIsFromGameSpace = other.mIsFromGameSpace;
            this.mIsForFreeForm = other.mIsForFreeForm;
            this.mStackId = other.mStackId;
            this.mOplusFlags |= other.mOplusFlags;
            this.mCallingUid = other.mCallingUid;
            this.mStartFromOcar = other.mStartFromOcar;
            this.mPairLaunchWindowingMode = other.mPairLaunchWindowingMode;
        }
        return 0;
    }

    public int getCallingUid() {
        return mCallingUid;
    }

    public int getIsForFreeForm() {
        return mIsForFreeForm;
    }

    public int getIsFromGameSpace() {
        return mIsFromGameSpace;
    }

    public int getLaunchStackId() {
        return mStackId;
    }

    public int getOplusFlags() {
        return mOplusFlags;
    }

    public int getOplusUserId() {
        return mOplusUserId;
    }

    public int getPairLaunchWindowingMode() {
        return mPairLaunchWindowingMode;
    }

    public int getPid() {
        return mPid;
    }

    public int getStartFromOcar() {
        return mStartFromOcar;
    }

    public int getUid() {
        return mUid;
    }

    public void readFromParcel(Parcel in) {
        this.mOplusUserId = in.readInt();
        this.mIsFromGameSpace = in.readInt();
        this.mIsForFreeForm = in.readInt();
        this.mStackId = in.readInt();
        this.mOplusFlags = in.readInt();
        this.mCallingUid = in.readInt();
        this.mStartFromOcar = in.readInt();
        this.mPairLaunchWindowingMode = in.readInt();
    }

    public void removeOplusFlags(int flags) {
        this.mOplusFlags &= ~flags;
    }

    public void setCallingUid(int uid) {
        this.mCallingUid = uid;
    }

    public void setIsForFreeForm(int isForFreeForm) {
        this.mIsForFreeForm = isForFreeForm;
    }

    public void setIsFromGameSpace(int isFromGameSpace) {
        this.mIsFromGameSpace = isFromGameSpace;
    }

    public void setLaunchStackId(int stackId) {
        this.mStackId = stackId;
    }

    public void setOplusFlags(int flags) {
        this.mOplusFlags = flags;
    }

    public void setOplusUserId(int oplusUserId) {
        this.mOplusUserId = oplusUserId;
    }

    public void setPairLaunchWindowingMode(int windowingMode) {
        this.mPairLaunchWindowingMode = windowingMode;
    }

    public void setPid(int pid) {
        this.mPid = pid;
    }

    public void setStartFromOcar(int startFromOcar) {
        this.mStartFromOcar = startFromOcar;
    }

    public void setUid(int uid) {
        this.mUid = uid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        if (this.mOplusFlags != 0)
            sb.append(" oflg=0x").append(Integer.toHexString(this.mOplusFlags));
        if (this.mOplusUserId != 0)
            sb.append(" ouserid=").append(this.mOplusUserId);
        if (this.mIsForFreeForm != 0)
            sb.append(" freeform=").append(this.mIsForFreeForm);
        return sb.toString();
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(mOplusUserId);
        out.writeInt(mIsFromGameSpace);
        out.writeInt(mIsForFreeForm);
        out.writeInt(mStackId);
        out.writeInt(mOplusFlags);
        out.writeInt(mCallingUid);
        out.writeInt(mStartFromOcar);
        out.writeInt(mPairLaunchWindowingMode);
    }
}

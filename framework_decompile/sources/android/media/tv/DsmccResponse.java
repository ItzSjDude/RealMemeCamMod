package android.media.tv;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class DsmccResponse extends BroadcastInfoResponse implements Parcelable {
    public static final String BIOP_MESSAGE_TYPE_DIRECTORY = "directory";
    public static final String BIOP_MESSAGE_TYPE_FILE = "file";
    public static final String BIOP_MESSAGE_TYPE_SERVICE_GATEWAY = "service_gateway";
    public static final String BIOP_MESSAGE_TYPE_STREAM = "stream";
    public static final Parcelable.Creator<DsmccResponse> CREATOR = new Parcelable.Creator<DsmccResponse>() { // from class: android.media.tv.DsmccResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DsmccResponse createFromParcel(Parcel source) {
            source.readInt();
            return DsmccResponse.createFromParcelBody(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DsmccResponse[] newArray(int size) {
            return new DsmccResponse[size];
        }
    };
    private static final int RESPONSE_TYPE = 6;
    private final String mBiopMessageType;
    private final List<String> mChildList;
    private final int[] mEventIds;
    private final String[] mEventNames;
    private final ParcelFileDescriptor mFileDescriptor;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BiopMessageType {
    }

    static DsmccResponse createFromParcelBody(Parcel in) {
        return new DsmccResponse(in);
    }

    public DsmccResponse(int requestId, int sequence, int responseResult, ParcelFileDescriptor file) {
        super(6, requestId, sequence, responseResult);
        this.mBiopMessageType = "file";
        this.mFileDescriptor = file;
        this.mChildList = null;
        this.mEventIds = null;
        this.mEventNames = null;
    }

    public DsmccResponse(int requestId, int sequence, int responseResult, boolean isServiceGateway, List<String> childList) {
        super(6, requestId, sequence, responseResult);
        if (isServiceGateway) {
            this.mBiopMessageType = BIOP_MESSAGE_TYPE_SERVICE_GATEWAY;
        } else {
            this.mBiopMessageType = "directory";
        }
        this.mFileDescriptor = null;
        this.mChildList = childList;
        this.mEventIds = null;
        this.mEventNames = null;
    }

    public DsmccResponse(int requestId, int sequence, int responseResult, int[] eventIds, String[] eventNames) {
        super(6, requestId, sequence, responseResult);
        this.mBiopMessageType = "stream";
        this.mFileDescriptor = null;
        this.mChildList = null;
        if ((eventIds == null || eventNames == null || eventIds.length != eventNames.length) && (eventIds != null || eventNames != null)) {
            throw new IllegalStateException("The size of eventIds and eventNames must be equal");
        }
        this.mEventIds = eventIds;
        this.mEventNames = eventNames;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private DsmccResponse(android.os.Parcel r6) {
        /*
            r5 = this;
            r0 = 6
            r5.<init>(r0, r6)
            java.lang.String r0 = r6.readString()
            r5.mBiopMessageType = r0
            int r1 = r0.hashCode()
            switch(r1) {
                case -962584979: goto L30;
                case -959828294: goto L26;
                case -891990144: goto L1c;
                case 3143036: goto L12;
                default: goto L11;
            }
        L11:
            goto L3a
        L12:
            java.lang.String r1 = "file"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L11
            r0 = 2
            goto L3b
        L1c:
            java.lang.String r1 = "stream"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L11
            r0 = 3
            goto L3b
        L26:
            java.lang.String r1 = "service_gateway"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L11
            r0 = 0
            goto L3b
        L30:
            java.lang.String r1 = "directory"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L11
            r0 = 1
            goto L3b
        L3a:
            r0 = -1
        L3b:
            r1 = 0
            switch(r0) {
                case 0: goto L82;
                case 1: goto L82;
                case 2: goto L75;
                case 3: goto L47;
                default: goto L3f;
            }
        L3f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "unexpected BIOP message type"
            r0.<init>(r1)
            throw r0
        L47:
            int r0 = r6.readInt()
            if (r0 <= 0) goto L6c
            int[] r2 = new int[r0]
            r5.mEventIds = r2
            java.lang.String[] r2 = new java.lang.String[r0]
            r5.mEventNames = r2
            r2 = 0
        L56:
            if (r2 >= r0) goto L6b
            int[] r3 = r5.mEventIds
            int r4 = r6.readInt()
            r3[r2] = r4
            java.lang.String[] r3 = r5.mEventNames
            java.lang.String r4 = r6.readString()
            r3[r2] = r4
            int r2 = r2 + 1
            goto L56
        L6b:
            goto L70
        L6c:
            r5.mEventIds = r1
            r5.mEventNames = r1
        L70:
            r5.mChildList = r1
            r5.mFileDescriptor = r1
            goto La8
        L75:
            android.os.ParcelFileDescriptor r0 = r6.readFileDescriptor()
            r5.mFileDescriptor = r0
            r5.mChildList = r1
            r5.mEventIds = r1
            r5.mEventNames = r1
            goto La8
        L82:
            int r0 = r6.readInt()
            if (r0 <= 0) goto L9f
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r5.mChildList = r2
            r2 = 0
        L90:
            if (r2 >= r0) goto L9e
            java.util.List<java.lang.String> r3 = r5.mChildList
            java.lang.String r4 = r6.readString()
            r3.add(r4)
            int r2 = r2 + 1
            goto L90
        L9e:
            goto La1
        L9f:
            r5.mChildList = r1
        La1:
            r5.mFileDescriptor = r1
            r5.mEventIds = r1
            r5.mEventNames = r1
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.media.tv.DsmccResponse.<init>(android.os.Parcel):void");
    }

    public String getBiopMessageType() {
        return this.mBiopMessageType;
    }

    public ParcelFileDescriptor getFile() {
        if (!this.mBiopMessageType.equals("file")) {
            throw new IllegalStateException("Not file object");
        }
        return this.mFileDescriptor;
    }

    public List<String> getChildList() {
        if (this.mBiopMessageType.equals("directory") || this.mBiopMessageType.equals(BIOP_MESSAGE_TYPE_SERVICE_GATEWAY)) {
            return this.mChildList != null ? new ArrayList(this.mChildList) : new ArrayList();
        }
        throw new IllegalStateException("Not directory object");
    }

    public int[] getStreamEventIds() {
        if (!this.mBiopMessageType.equals("stream")) {
            throw new IllegalStateException("Not stream event object");
        }
        int[] iArr = this.mEventIds;
        return iArr != null ? iArr : new int[0];
    }

    public String[] getStreamEventNames() {
        if (!this.mBiopMessageType.equals("stream")) {
            throw new IllegalStateException("Not stream event object");
        }
        String[] strArr = this.mEventNames;
        return strArr != null ? strArr : new String[0];
    }

    @Override // android.media.tv.BroadcastInfoResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    @Override // android.media.tv.BroadcastInfoResponse, android.os.Parcelable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeToParcel(android.os.Parcel r4, int r5) {
        /*
            r3 = this;
            super.writeToParcel(r4, r5)
            java.lang.String r0 = r3.mBiopMessageType
            r4.writeString(r0)
            java.lang.String r0 = r3.mBiopMessageType
            int r1 = r0.hashCode()
            r2 = 0
            switch(r1) {
                case -962584979: goto L31;
                case -959828294: goto L27;
                case -891990144: goto L1d;
                case 3143036: goto L13;
                default: goto L12;
            }
        L12:
            goto L3b
        L13:
            java.lang.String r1 = "file"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L12
            r0 = 2
            goto L3c
        L1d:
            java.lang.String r1 = "stream"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L12
            r0 = 3
            goto L3c
        L27:
            java.lang.String r1 = "service_gateway"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L12
            r0 = r2
            goto L3c
        L31:
            java.lang.String r1 = "directory"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L12
            r0 = 1
            goto L3c
        L3b:
            r0 = -1
        L3c:
            switch(r0) {
                case 0: goto L76;
                case 1: goto L76;
                case 2: goto L6c;
                case 3: goto L47;
                default: goto L3f;
            }
        L3f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "unexpected BIOP message type"
            r0.<init>(r1)
            throw r0
        L47:
            int[] r0 = r3.mEventIds
            if (r0 == 0) goto L68
            int r1 = r0.length
            if (r1 <= 0) goto L68
            int r0 = r0.length
            r4.writeInt(r0)
            r0 = 0
        L53:
            int[] r1 = r3.mEventIds
            int r2 = r1.length
            if (r0 >= r2) goto L67
            r1 = r1[r0]
            r4.writeInt(r1)
            java.lang.String[] r1 = r3.mEventNames
            r1 = r1[r0]
            r4.writeString(r1)
            int r0 = r0 + 1
            goto L53
        L67:
            goto La4
        L68:
            r4.writeInt(r2)
            goto La4
        L6c:
            android.os.ParcelFileDescriptor r0 = r3.mFileDescriptor
            java.io.FileDescriptor r0 = r0.getFileDescriptor()
            r4.writeFileDescriptor(r0)
            goto La4
        L76:
            java.util.List<java.lang.String> r0 = r3.mChildList
            if (r0 == 0) goto La0
            int r0 = r0.size()
            if (r0 <= 0) goto La0
            java.util.List<java.lang.String> r0 = r3.mChildList
            int r0 = r0.size()
            r4.writeInt(r0)
            java.util.List<java.lang.String> r0 = r3.mChildList
            java.util.Iterator r0 = r0.iterator()
        L8f:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L9f
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            r4.writeString(r1)
            goto L8f
        L9f:
            goto La4
        La0:
            r4.writeInt(r2)
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.media.tv.DsmccResponse.writeToParcel(android.os.Parcel, int):void");
    }
}

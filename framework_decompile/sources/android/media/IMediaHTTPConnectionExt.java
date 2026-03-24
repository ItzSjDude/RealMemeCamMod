package android.media;

/* loaded from: classes2.dex */
public interface IMediaHTTPConnectionExt {
    public static final int CONNECT_TIMEOUT_MS_OPLUS = 8000;
    public static final int READ_TIMEOUT_MS_OPLUS = 8000;

    default boolean isNeedSetTimeout() {
        return false;
    }

    default boolean asyncSeekTo(long offset) {
        return false;
    }
}

package android.media;

import java.io.InputStream;

/* loaded from: classes2.dex */
public interface IMediaHTTPConnectionWrapper {
    default IMediaHTTPConnectionExt getExtImpl() {
        return new IMediaHTTPConnectionExt() { // from class: android.media.IMediaHTTPConnectionWrapper.1
        };
    }

    default long getCurrentOffset() {
        return -1L;
    }

    default void setCurrentOffset(long offset) {
    }

    default InputStream getInputStream() {
        return null;
    }

    default void seekTo(long offset) {
    }
}

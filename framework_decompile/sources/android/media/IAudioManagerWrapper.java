package android.media;

/* loaded from: classes2.dex */
public interface IAudioManagerWrapper {
    default IAudioManagerExt getExtImpl() {
        return new IAudioManagerExt() { // from class: android.media.IAudioManagerWrapper.1
        };
    }
}

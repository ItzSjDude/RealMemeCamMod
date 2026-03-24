package android.inputmethodservice;

/* loaded from: classes2.dex */
public interface IInputMethodServiceWrapper {
    default IInputMethodServiceExt getExtImpl() {
        return new IInputMethodServiceExt() { // from class: android.inputmethodservice.IInputMethodServiceWrapper.1
        };
    }
}

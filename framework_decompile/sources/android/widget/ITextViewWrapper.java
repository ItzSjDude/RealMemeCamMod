package android.widget;

/* loaded from: classes4.dex */
public interface ITextViewWrapper {
    default Editor getEditor() {
        return null;
    }

    default CharSequence getText() {
        return "";
    }
}

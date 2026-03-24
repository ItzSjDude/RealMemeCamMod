package android.os;

/* loaded from: classes3.dex */
public interface IOneTraceExt {
    public static final long TRACE_TAG_BINDER = 8589934592L;
    public static final long TRACE_TAG_LOOPER = 4294967296L;

    default boolean isEnable(long traceTag) {
        return false;
    }

    default void setActiveState(boolean isActive) {
    }

    default void begin(long traceTag, String methodName) {
    }

    default void end(long traceTag) {
    }

    default void beginAsync(long traceTag, String methodName, int cookie) {
    }

    default void endAsync(long traceTag, String methodName, int cookie) {
    }

    default String matchDescriptor(String descriptor) {
        return descriptor;
    }
}

package android.os;

/* loaded from: classes3.dex */
public interface IBinderProxyExt {
    default boolean transact(IBinder iBinder, int code, Parcel data, Parcel reply, int flags) {
        return false;
    }
}

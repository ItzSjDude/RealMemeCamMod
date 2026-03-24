package android.app;

import android.app.IContextImplSocExt;
import android.content.Context;

/* loaded from: classes.dex */
public class ContextImplSocExtImpl implements IContextImplSocExt {
    public ContextImplSocExtImpl(Object contextImpl) {
    }

    public static class StaticExtImpl implements IContextImplSocExt.IStaticExt {

        public static class SingleHolder {
            private static final StaticExtImpl INSTACNE = new StaticExtImpl();
        }

        public static StaticExtImpl getInstance(Object object) {
            return SingleHolder.INSTACNE;
        }

        @Override // android.app.IContextImplSocExt.IStaticExt
        public void hookcreateAppContext(Context context) {
        }
    }
}

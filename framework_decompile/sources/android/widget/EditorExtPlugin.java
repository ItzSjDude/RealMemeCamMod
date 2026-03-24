package android.widget;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.hardware.gnss.GnssSignalType;
import android.view.Menu;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefConstructor;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes4.dex */
public class EditorExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) EditorExtPlugin.class, "android.widget.EditorExtImpl");
    public static RefConstructor<IEditorExt> constructor;

    @MethodParams({GnssSignalType.CODE_TYPE_I, Intent.class, CharSequence.class, ResolveInfo.class, Menu.class})
    public static RefStaticMethod<Boolean> setSearchMenuItem;
}

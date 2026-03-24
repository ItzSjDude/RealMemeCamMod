package android.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class DrawableInflater {
    private static final HashMap<String, Constructor<? extends Drawable>> CONSTRUCTOR_MAP = new HashMap<>();
    private final ClassLoader mClassLoader;
    private final Resources mRes;

    public static Drawable loadDrawable(Context context, int id) {
        return loadDrawable(context.getResources(), context.getTheme(), id);
    }

    public static Drawable loadDrawable(Resources resources, Resources.Theme theme, int id) {
        return resources.getDrawable(id, theme);
    }

    public DrawableInflater(Resources res, ClassLoader classLoader) {
        this.mRes = res;
        this.mClassLoader = classLoader;
    }

    public Drawable inflateFromXml(String name, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        return inflateFromXmlForDensity(name, parser, attrs, 0, theme);
    }

    Drawable inflateFromXmlForDensity(String name, XmlPullParser parser, AttributeSet attrs, int density, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (name.equals("drawable") && (name = attrs.getAttributeValue(null, "class")) == null) {
            throw new InflateException("<drawable> tag must specify class attribute");
        }
        Drawable drawable = inflateFromTag(name);
        if (drawable == null) {
            drawable = inflateFromClass(name);
        }
        drawable.setSrcDensityOverride(density);
        drawable.inflate(this.mRes, parser, attrs, theme);
        return drawable;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable inflateFromTag(java.lang.String r2) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.graphics.drawable.DrawableInflater.inflateFromTag(java.lang.String):android.graphics.drawable.Drawable");
    }

    private Drawable inflateFromClass(String className) {
        Constructor<? extends Drawable> constructor;
        try {
            HashMap<String, Constructor<? extends Drawable>> map = CONSTRUCTOR_MAP;
            synchronized (map) {
                constructor = map.get(className);
                if (constructor == null) {
                    constructor = this.mClassLoader.loadClass(className).asSubclass(Drawable.class).getConstructor(new Class[0]);
                    map.put(className, constructor);
                }
            }
            return constructor.newInstance(new Object[0]);
        } catch (ClassCastException e) {
            InflateException ie = new InflateException("Class is not a Drawable " + className);
            ie.initCause(e);
            throw ie;
        } catch (ClassNotFoundException e2) {
            InflateException ie2 = new InflateException("Class not found " + className);
            ie2.initCause(e2);
            throw ie2;
        } catch (NoSuchMethodException e3) {
            InflateException ie3 = new InflateException("Error inflating class " + className);
            ie3.initCause(e3);
            throw ie3;
        } catch (Exception e4) {
            InflateException ie4 = new InflateException("Error inflating class " + className);
            ie4.initCause(e4);
            throw ie4;
        }
    }
}

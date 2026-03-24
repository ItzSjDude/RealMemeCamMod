package android.graphics;

import android.graphics.PorterDuff;

/* loaded from: classes.dex */
public class PorterDuffColorFilter extends ColorFilter {
    private int mColor;
    private PorterDuff.Mode mMode;
    private IPorterDuffColorFilterWrapper mPorterDuffColorFilterWrapper = new PorterDuffColorFilterWrapper();

    private static native long native_CreateBlendModeFilter(int i, int i2);

    public PorterDuffColorFilter(int color, PorterDuff.Mode mode) {
        this.mColor = color;
        this.mMode = mode;
    }

    public int getColor() {
        return this.mColor;
    }

    public PorterDuff.Mode getMode() {
        return this.mMode;
    }

    @Override // android.graphics.ColorFilter
    long createNativeInstance() {
        return native_CreateBlendModeFilter(this.mColor, this.mMode.nativeInt);
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null || getClass() != object.getClass()) {
            return false;
        }
        PorterDuffColorFilter other = (PorterDuffColorFilter) object;
        if (this.mColor == other.mColor && this.mMode.nativeInt == other.mMode.nativeInt) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.mMode.hashCode() * 31) + this.mColor;
    }

    public IPorterDuffColorFilterWrapper getWrapper() {
        return this.mPorterDuffColorFilterWrapper;
    }

    private class PorterDuffColorFilterWrapper implements IPorterDuffColorFilterWrapper {
        private PorterDuffColorFilterWrapper() {
        }

        @Override // android.graphics.IPorterDuffColorFilterWrapper
        public void setColor(int color) {
            if (PorterDuffColorFilter.this.mColor != color) {
                PorterDuffColorFilter.this.mColor = color;
                PorterDuffColorFilter.this.discardNativeInstance();
            }
        }
    }
}

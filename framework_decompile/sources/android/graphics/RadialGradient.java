package android.graphics;

import android.graphics.ColorSpace;
import android.graphics.Shader;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class RadialGradient extends Shader {
    private int mCenterColor;
    private long[] mColorLongs;
    private int[] mColors;
    private int mEdgeColor;
    private final float mFocalRadius;
    private final float mFocalX;
    private final float mFocalY;
    private float[] mPositions;
    private IRadialGradientWrapper mRadialGradientWrapper;
    private float mRadius;
    private Shader.TileMode mTileMode;
    private float mX;
    private float mY;

    private static native long nativeCreate(long j, float f, float f2, float f3, float f4, float f5, float f6, long[] jArr, float[] fArr, int i, long j2);

    public RadialGradient(float centerX, float centerY, float radius, int[] colors, float[] stops, Shader.TileMode tileMode) {
        this(centerX, centerY, 0.0f, centerX, centerY, radius, convertColors(colors), stops, tileMode, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public RadialGradient(float centerX, float centerY, float radius, long[] colors, float[] stops, Shader.TileMode tileMode) {
        this(centerX, centerY, 0.0f, centerX, centerY, radius, (long[]) colors.clone(), stops, tileMode, detectColorSpace(colors));
    }

    public RadialGradient(float startX, float startY, float startRadius, float endX, float endY, float endRadius, long[] colors, float[] stops, Shader.TileMode tileMode) {
        this(startX, startY, startRadius, endX, endY, endRadius, (long[]) colors.clone(), stops, tileMode, detectColorSpace(colors));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RadialGradient(float f, float f2, float f3, float f4, float f5, float f6, long[] jArr, float[] fArr, Shader.TileMode tileMode, ColorSpace colorSpace) {
        super(colorSpace);
        this.mRadialGradientWrapper = new RadialGradientWrapper();
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("starting/focal radius must be >= 0");
        }
        if (f6 <= 0.0f) {
            throw new IllegalArgumentException("ending radius must be > 0");
        }
        if (fArr != null && jArr.length != fArr.length) {
            throw new IllegalArgumentException("color and position arrays must be of equal length");
        }
        this.mX = f4;
        this.mY = f5;
        this.mRadius = f6;
        this.mFocalX = f;
        this.mFocalY = f2;
        this.mFocalRadius = f3;
        this.mColorLongs = jArr;
        this.mPositions = fArr != null ? (float[]) fArr.clone() : null;
        this.mTileMode = tileMode;
        this.mShaderExt = (IShaderExt) ExtLoader.type(IShaderExt.class).base(this).create();
    }

    public RadialGradient(float centerX, float centerY, float radius, int centerColor, int edgeColor, Shader.TileMode tileMode) {
        this(centerX, centerY, radius, Color.pack(centerColor), Color.pack(edgeColor), tileMode);
    }

    public RadialGradient(float centerX, float centerY, float radius, long centerColor, long edgeColor, Shader.TileMode tileMode) {
        this(centerX, centerY, radius, new long[]{centerColor, edgeColor}, (float[]) null, tileMode);
    }

    @Override // android.graphics.Shader
    protected long createNativeInstance(long nativeMatrix, boolean filterFromPaint) {
        return nativeCreate(nativeMatrix, this.mFocalX, this.mFocalY, this.mFocalRadius, this.mX, this.mY, this.mRadius, this.mColorLongs, this.mPositions, this.mTileMode.nativeInt, colorSpace().getNativeInstance());
    }

    public IRadialGradientWrapper getWrapper() {
        return this.mRadialGradientWrapper;
    }

    private class RadialGradientWrapper implements IRadialGradientWrapper {
        private RadialGradientWrapper() {
        }

        @Override // android.graphics.IRadialGradientWrapper
        public void setColorLongs(long[] color) {
            RadialGradient.this.mColorLongs = color;
        }

        @Override // android.graphics.IRadialGradientWrapper
        public long[] getColorLongs() {
            return RadialGradient.this.mColorLongs;
        }
    }
}

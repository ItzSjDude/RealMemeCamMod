package android.graphics;

import android.graphics.ColorSpace;
import android.graphics.Shader;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class LinearGradient extends Shader {
    private int mColor0;
    private int mColor1;
    private long[] mColorLongs;
    private int[] mColors;
    private ILinearGradientWrapper mLinearGradientWrapper;
    private float[] mPositions;
    private Shader.TileMode mTileMode;
    private float mX0;
    private float mX1;
    private float mY0;
    private float mY1;

    private native long nativeCreate(long j, float f, float f2, float f3, float f4, long[] jArr, float[] fArr, int i, long j2);

    public LinearGradient(float x0, float y0, float x1, float y1, int[] colors, float[] positions, Shader.TileMode tile) {
        this(x0, y0, x1, y1, convertColors(colors), positions, tile, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public LinearGradient(float x0, float y0, float x1, float y1, long[] colors, float[] positions, Shader.TileMode tile) {
        this(x0, y0, x1, y1, (long[]) colors.clone(), positions, tile, detectColorSpace(colors));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private LinearGradient(float f, float f2, float f3, float f4, long[] jArr, float[] fArr, Shader.TileMode tileMode, ColorSpace colorSpace) {
        super(colorSpace);
        this.mLinearGradientWrapper = new LinearGradientWrapper();
        if (fArr != null && jArr.length != fArr.length) {
            throw new IllegalArgumentException("color and position arrays must be of equal length");
        }
        this.mX0 = f;
        this.mY0 = f2;
        this.mX1 = f3;
        this.mY1 = f4;
        this.mColorLongs = jArr;
        this.mPositions = fArr != null ? (float[]) fArr.clone() : null;
        this.mTileMode = tileMode;
        this.mShaderExt = (IShaderExt) ExtLoader.type(IShaderExt.class).base(this).create();
    }

    public LinearGradient(float x0, float y0, float x1, float y1, int color0, int color1, Shader.TileMode tile) {
        this(x0, y0, x1, y1, Color.pack(color0), Color.pack(color1), tile);
    }

    public LinearGradient(float x0, float y0, float x1, float y1, long color0, long color1, Shader.TileMode tile) {
        this(x0, y0, x1, y1, new long[]{color0, color1}, (float[]) null, tile);
    }

    @Override // android.graphics.Shader
    protected long createNativeInstance(long nativeMatrix, boolean filterFromPaint) {
        return nativeCreate(nativeMatrix, this.mX0, this.mY0, this.mX1, this.mY1, this.mColorLongs, this.mPositions, this.mTileMode.nativeInt, colorSpace().getNativeInstance());
    }

    public ILinearGradientWrapper getWrapper() {
        return this.mLinearGradientWrapper;
    }

    private class LinearGradientWrapper implements ILinearGradientWrapper {
        private LinearGradientWrapper() {
        }

        @Override // android.graphics.ILinearGradientWrapper
        public void setColorLongs(long[] color) {
            LinearGradient.this.mColorLongs = color;
        }

        @Override // android.graphics.ILinearGradientWrapper
        public long[] getColorLongs() {
            return LinearGradient.this.mColorLongs;
        }
    }
}

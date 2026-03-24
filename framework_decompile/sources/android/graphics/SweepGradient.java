package android.graphics;

import android.graphics.ColorSpace;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class SweepGradient extends Shader {
    private int mColor0;
    private int mColor1;
    private long[] mColorLongs;
    private int[] mColors;
    private float mCx;
    private float mCy;
    private float[] mPositions;
    private ISweepGradientWrapper mSweepGradientWrapper;

    private static native long nativeCreate(long j, float f, float f2, long[] jArr, float[] fArr, long j2);

    public SweepGradient(float cx, float cy, int[] colors, float[] positions) {
        this(cx, cy, convertColors(colors), positions, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public SweepGradient(float cx, float cy, long[] colors, float[] positions) {
        this(cx, cy, (long[]) colors.clone(), positions, detectColorSpace(colors));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SweepGradient(float f, float f2, long[] jArr, float[] fArr, ColorSpace colorSpace) {
        super(colorSpace);
        this.mSweepGradientWrapper = new SweepGradientWrapper();
        if (fArr != null && jArr.length != fArr.length) {
            throw new IllegalArgumentException("color and position arrays must be of equal length");
        }
        this.mCx = f;
        this.mCy = f2;
        this.mColorLongs = jArr;
        this.mPositions = fArr != null ? (float[]) fArr.clone() : null;
        this.mShaderExt = (IShaderExt) ExtLoader.type(IShaderExt.class).base(this).create();
    }

    public SweepGradient(float cx, float cy, int color0, int color1) {
        this(cx, cy, Color.pack(color0), Color.pack(color1));
    }

    public SweepGradient(float cx, float cy, long color0, long color1) {
        this(cx, cy, new long[]{color0, color1}, (float[]) null);
    }

    @Override // android.graphics.Shader
    protected long createNativeInstance(long nativeMatrix, boolean filterFromPaint) {
        return nativeCreate(nativeMatrix, this.mCx, this.mCy, this.mColorLongs, this.mPositions, colorSpace().getNativeInstance());
    }

    public ISweepGradientWrapper getWrapper() {
        return this.mSweepGradientWrapper;
    }

    private class SweepGradientWrapper implements ISweepGradientWrapper {
        private SweepGradientWrapper() {
        }

        @Override // android.graphics.ISweepGradientWrapper
        public void setColorLongs(long[] color) {
            SweepGradient.this.mColorLongs = color;
        }

        @Override // android.graphics.ISweepGradientWrapper
        public long[] getColorLongs() {
            return SweepGradient.this.mColorLongs;
        }
    }
}

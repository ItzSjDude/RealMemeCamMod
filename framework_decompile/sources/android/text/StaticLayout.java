package android.text;

import android.graphics.Paint;
import android.graphics.text.LineBreakConfig;
import android.text.Layout;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pools;
import com.android.internal.util.ArrayUtils;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes3.dex */
public class StaticLayout extends Layout {
    private static final char CHAR_NEW_LINE = '\n';
    private static final int COLUMNS_ELLIPSIZE = 7;
    private static final int COLUMNS_NORMAL = 5;
    private static final int DEFAULT_MAX_LINE_HEIGHT = -1;
    private static final int DESCENT = 2;
    private static final int DIR = 0;
    private static final int DIR_SHIFT = 30;
    private static final int ELLIPSIS_COUNT = 6;
    private static final int ELLIPSIS_START = 5;
    private static final int END_HYPHEN_MASK = 7;
    private static final int EXTRA = 3;
    private static final double EXTRA_ROUNDING = 0.5d;
    private static final int HYPHEN = 4;
    private static final int HYPHEN_MASK = 255;
    private static final int START = 0;
    private static final int START_HYPHEN_BITS_SHIFT = 3;
    private static final int START_HYPHEN_MASK = 24;
    private static final int START_MASK = 536870911;
    private static final int TAB = 0;
    private static final float TAB_INCREMENT = 20.0f;
    private static final int TAB_MASK = 536870912;
    static final String TAG = "StaticLayout";
    private static final int TOP = 1;
    private int mBottomPadding;
    private int mColumns;
    private boolean mEllipsized;
    private int mEllipsizedWidth;
    private boolean mFallbackLineSpacing;
    private int[] mLeftIndents;
    private int mLineCount;
    private Layout.Directions[] mLineDirections;
    private int[] mLines;
    private int mMaxLineHeight;
    private int mMaximumVisibleLineCount;
    private int[] mRightIndents;
    public IStaticLayoutExt mStaticLayoutExt;
    private int mTopPadding;

    public static final class Builder {
        private static final Pools.SynchronizedPool<Builder> sPool = new Pools.SynchronizedPool<>(3);
        private boolean mAddLastLineLineSpacing;
        private Layout.Alignment mAlignment;
        private int mBreakStrategy;
        private TextUtils.TruncateAt mEllipsize;
        private int mEllipsizedWidth;
        private int mEnd;
        private boolean mFallbackLineSpacing;
        private int mHyphenationFrequency;
        private boolean mIncludePad;
        private int mJustificationMode;
        private int[] mLeftIndents;
        private int mMaxLines;
        private TextPaint mPaint;
        private int[] mRightIndents;
        private float mSpacingAdd;
        private float mSpacingMult;
        private int mStart;
        private CharSequence mText;
        private TextDirectionHeuristic mTextDir;
        private int mWidth;
        private LineBreakConfig mLineBreakConfig = LineBreakConfig.NONE;
        private final Paint.FontMetricsInt mFontMetricsInt = new Paint.FontMetricsInt();

        private Builder() {
        }

        public static Builder obtain(CharSequence source, int start, int end, TextPaint paint, int width) {
            Builder b = sPool.acquire();
            if (b == null) {
                b = new Builder();
            }
            b.mText = source;
            b.mStart = start;
            b.mEnd = end;
            b.mPaint = paint;
            b.mWidth = width;
            b.mAlignment = Layout.Alignment.ALIGN_NORMAL;
            b.mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            b.mSpacingMult = 1.0f;
            b.mSpacingAdd = 0.0f;
            b.mIncludePad = true;
            b.mFallbackLineSpacing = false;
            b.mEllipsizedWidth = width;
            b.mEllipsize = null;
            b.mMaxLines = Integer.MAX_VALUE;
            b.mBreakStrategy = 0;
            b.mHyphenationFrequency = 0;
            b.mJustificationMode = 0;
            b.mLineBreakConfig = LineBreakConfig.NONE;
            return b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void recycle(Builder b) {
            b.mPaint = null;
            b.mText = null;
            b.mLeftIndents = null;
            b.mRightIndents = null;
            sPool.release(b);
        }

        void finish() {
            this.mText = null;
            this.mPaint = null;
            this.mLeftIndents = null;
            this.mRightIndents = null;
        }

        public Builder setText(CharSequence source) {
            return setText(source, 0, source.length());
        }

        public Builder setText(CharSequence source, int start, int end) {
            this.mText = source;
            this.mStart = start;
            this.mEnd = end;
            return this;
        }

        public Builder setPaint(TextPaint paint) {
            this.mPaint = paint;
            return this;
        }

        public Builder setWidth(int width) {
            this.mWidth = width;
            if (this.mEllipsize == null) {
                this.mEllipsizedWidth = width;
            }
            return this;
        }

        public Builder setAlignment(Layout.Alignment alignment) {
            this.mAlignment = alignment;
            return this;
        }

        public Builder setTextDirection(TextDirectionHeuristic textDir) {
            this.mTextDir = textDir;
            return this;
        }

        public Builder setLineSpacing(float spacingAdd, float spacingMult) {
            this.mSpacingAdd = spacingAdd;
            this.mSpacingMult = spacingMult;
            return this;
        }

        public Builder setIncludePad(boolean includePad) {
            this.mIncludePad = includePad;
            return this;
        }

        public Builder setUseLineSpacingFromFallbacks(boolean useLineSpacingFromFallbacks) {
            this.mFallbackLineSpacing = useLineSpacingFromFallbacks;
            return this;
        }

        public Builder setEllipsizedWidth(int ellipsizedWidth) {
            this.mEllipsizedWidth = ellipsizedWidth;
            return this;
        }

        public Builder setEllipsize(TextUtils.TruncateAt ellipsize) {
            this.mEllipsize = ellipsize;
            return this;
        }

        public Builder setMaxLines(int maxLines) {
            this.mMaxLines = maxLines;
            return this;
        }

        public Builder setBreakStrategy(int breakStrategy) {
            this.mBreakStrategy = breakStrategy;
            return this;
        }

        public Builder setHyphenationFrequency(int hyphenationFrequency) {
            this.mHyphenationFrequency = hyphenationFrequency;
            return this;
        }

        public Builder setIndents(int[] leftIndents, int[] rightIndents) {
            this.mLeftIndents = leftIndents;
            this.mRightIndents = rightIndents;
            return this;
        }

        public Builder setJustificationMode(int justificationMode) {
            this.mJustificationMode = justificationMode;
            return this;
        }

        Builder setAddLastLineLineSpacing(boolean value) {
            this.mAddLastLineLineSpacing = value;
            return this;
        }

        public Builder setLineBreakConfig(LineBreakConfig lineBreakConfig) {
            this.mLineBreakConfig = lineBreakConfig;
            return this;
        }

        public StaticLayout build() {
            StaticLayout result = new StaticLayout(this);
            recycle(this);
            return result;
        }
    }

    @Deprecated
    public StaticLayout(CharSequence source, TextPaint paint, int width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        this(source, 0, source.length(), paint, width, align, spacingmult, spacingadd, includepad);
    }

    @Deprecated
    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        this(source, bufstart, bufend, paint, outerwidth, align, spacingmult, spacingadd, includepad, null, 0);
    }

    @Deprecated
    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        this(source, bufstart, bufend, paint, outerwidth, align, TextDirectionHeuristics.FIRSTSTRONG_LTR, spacingmult, spacingadd, includepad, ellipsize, ellipsizedWidth, Integer.MAX_VALUE);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, TextDirectionHeuristic textDir, float spacingmult, float spacingadd, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth, int maxLines) {
        CharSequence ellipsizer;
        if (ellipsize == null) {
            ellipsizer = source;
        } else if (source instanceof Spanned) {
            ellipsizer = new Layout.SpannedEllipsizer(source);
        } else {
            ellipsizer = new Layout.Ellipsizer(source);
        }
        super(ellipsizer, paint, outerwidth, align, textDir, spacingmult, spacingadd);
        this.mStaticLayoutExt = (IStaticLayoutExt) ExtLoader.type(IStaticLayoutExt.class).base(this).create();
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        Builder b = Builder.obtain(source, bufstart, bufend, paint, outerwidth).setAlignment(align).setTextDirection(textDir).setLineSpacing(spacingadd, spacingmult).setIncludePad(includepad).setEllipsizedWidth(ellipsizedWidth).setEllipsize(ellipsize).setMaxLines(maxLines);
        if (ellipsize == null) {
            this.mColumns = 5;
            this.mEllipsizedWidth = outerwidth;
        } else {
            Layout.Ellipsizer e = (Layout.Ellipsizer) getText();
            e.mLayout = this;
            e.mWidth = ellipsizedWidth;
            e.mMethod = ellipsize;
            this.mEllipsizedWidth = ellipsizedWidth;
            this.mColumns = 7;
        }
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
        this.mMaximumVisibleLineCount = maxLines;
        generate(b, b.mIncludePad, b.mIncludePad);
        Builder.recycle(b);
    }

    StaticLayout(CharSequence text) {
        super(text, null, 0, null, 0.0f, 0.0f);
        this.mStaticLayoutExt = (IStaticLayoutExt) ExtLoader.type(IStaticLayoutExt.class).base(this).create();
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        this.mColumns = 7;
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.lang.CharSequence] */
    private StaticLayout(Builder b) {
        Layout.Ellipsizer ellipsizer;
        if (b.mEllipsize == null) {
            ellipsizer = b.mText;
        } else if (b.mText instanceof Spanned) {
            ellipsizer = new Layout.SpannedEllipsizer(b.mText);
        } else {
            ellipsizer = new Layout.Ellipsizer(b.mText);
        }
        super(ellipsizer, b.mPaint, b.mWidth, b.mAlignment, b.mTextDir, b.mSpacingMult, b.mSpacingAdd);
        IStaticLayoutExt iStaticLayoutExt = (IStaticLayoutExt) ExtLoader.type(IStaticLayoutExt.class).base(this).create();
        this.mStaticLayoutExt = iStaticLayoutExt;
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        iStaticLayoutExt.setBuilderToTextJustificationHooks();
        if (b.mEllipsize != null) {
            Layout.Ellipsizer e = (Layout.Ellipsizer) getText();
            e.mLayout = this;
            e.mWidth = b.mEllipsizedWidth;
            e.mMethod = b.mEllipsize;
            this.mEllipsizedWidth = b.mEllipsizedWidth;
            this.mColumns = 7;
        } else {
            this.mColumns = 5;
            this.mEllipsizedWidth = b.mWidth;
        }
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
        this.mMaximumVisibleLineCount = b.mMaxLines;
        this.mLeftIndents = b.mLeftIndents;
        this.mRightIndents = b.mRightIndents;
        setJustificationMode(b.mJustificationMode);
        generate(b, b.mIncludePad, b.mIncludePad);
    }

    private static int getBaseHyphenationFrequency(int frequency) {
        switch (frequency) {
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:185:0x05e6, code lost:
    
        r14 = r4;
        r15 = r0;
        r31 = r2;
        r25 = r5;
        r2 = r8;
        r16 = r35;
        r8 = r49;
        r18 = r51;
        r17 = r56;
        r13 = r59;
        r0 = r60;
        r24 = r61;
        r19 = r62;
        r32 = r64;
        r3 = r65;
        r4 = r67;
        r5 = r68;
        r6 = r69;
        r49 = r70;
        r34 = r71;
        r26 = r72;
        r33 = r75;
        r10 = r78;
        r30 = r79;
        r11 = r81;
        r12 = r82;
        r28 = r88;
        r35 = r1;
        r1 = r7;
        r56 = r9;
        r9 = r50;
        r7 = r63;
        r50 = r76;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0345 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0677 A[LOOP:0: B:50:0x018d->B:189:0x0677, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0663 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0270  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void generate(android.text.StaticLayout.Builder r92, boolean r93, boolean r94) {
        /*
            Method dump skipped, instructions count: 1852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.StaticLayout.generate(android.text.StaticLayout$Builder, boolean, boolean):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int out(java.lang.CharSequence r29, int r30, int r31, int r32, int r33, int r34, int r35, int r36, float r37, float r38, android.text.style.LineHeightSpan[] r39, int[] r40, android.graphics.Paint.FontMetricsInt r41, boolean r42, int r43, boolean r44, android.text.MeasuredParagraph r45, int r46, boolean r47, boolean r48, boolean r49, char[] r50, int r51, android.text.TextUtils.TruncateAt r52, float r53, float r54, android.text.TextPaint r55, boolean r56) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.StaticLayout.out(java.lang.CharSequence, int, int, int, int, int, int, int, float, float, android.text.style.LineHeightSpan[], int[], android.graphics.Paint$FontMetricsInt, boolean, int, boolean, android.text.MeasuredParagraph, int, boolean, boolean, boolean, char[], int, android.text.TextUtils$TruncateAt, float, float, android.text.TextPaint, boolean):int");
    }

    private void calculateEllipsis(int lineStart, int lineEnd, MeasuredParagraph measured, int widthStart, float avail, TextUtils.TruncateAt where, int line, float textWidth, TextPaint paint, boolean forceEllipsis) {
        float avail2 = avail - getTotalInsets(line);
        if (textWidth <= avail2 && !forceEllipsis) {
            int[] iArr = this.mLines;
            int i = this.mColumns;
            iArr[(i * line) + 5] = 0;
            iArr[(i * line) + 6] = 0;
            return;
        }
        float ellipsisWidth = paint.measureText(TextUtils.getEllipsisString(where));
        int ellipsisStart = 0;
        int ellipsisCount = 0;
        int len = lineEnd - lineStart;
        if (where == TextUtils.TruncateAt.START) {
            if (this.mMaximumVisibleLineCount == 1) {
                float sum = 0.0f;
                int i2 = len;
                while (true) {
                    if (i2 <= 0) {
                        break;
                    }
                    float w = measured.getCharWidthAt(((i2 - 1) + lineStart) - widthStart);
                    if (w + sum + ellipsisWidth > avail2) {
                        while (i2 < len && measured.getCharWidthAt((i2 + lineStart) - widthStart) == 0.0f) {
                            i2++;
                        }
                    } else {
                        sum += w;
                        i2--;
                    }
                }
                ellipsisStart = 0;
                ellipsisCount = i2;
            } else if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Start Ellipsis only supported with one line");
            }
        } else if (where == TextUtils.TruncateAt.END || where == TextUtils.TruncateAt.MARQUEE || where == TextUtils.TruncateAt.END_SMALL) {
            float sum2 = 0.0f;
            int i3 = 0;
            while (i3 < len) {
                float w2 = measured.getCharWidthAt((i3 + lineStart) - widthStart);
                if (w2 + sum2 + ellipsisWidth > avail2) {
                    break;
                }
                sum2 += w2;
                i3++;
            }
            ellipsisStart = i3;
            ellipsisCount = len - i3;
            if (forceEllipsis && ellipsisCount == 0 && len > 0) {
                ellipsisStart = len - 1;
                ellipsisCount = 1;
            }
        } else if (this.mMaximumVisibleLineCount == 1) {
            float lsum = 0.0f;
            float rsum = 0.0f;
            int right = len;
            float ravail = (avail2 - ellipsisWidth) / 2.0f;
            while (true) {
                if (right <= 0) {
                    break;
                }
                float w3 = measured.getCharWidthAt(((right - 1) + lineStart) - widthStart);
                if (w3 + rsum <= ravail) {
                    rsum += w3;
                    right--;
                } else {
                    while (right < len && measured.getCharWidthAt((right + lineStart) - widthStart) == 0.0f) {
                        right++;
                    }
                }
            }
            float lavail = (avail2 - ellipsisWidth) - rsum;
            int left = 0;
            while (left < right) {
                float w4 = measured.getCharWidthAt((left + lineStart) - widthStart);
                if (w4 + lsum > lavail) {
                    break;
                }
                lsum += w4;
                left++;
            }
            ellipsisStart = left;
            ellipsisCount = right - left;
        } else if (Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "Middle Ellipsis only supported with one line");
        }
        this.mEllipsized = true;
        int[] iArr2 = this.mLines;
        int i4 = this.mColumns;
        iArr2[(i4 * line) + 5] = ellipsisStart;
        iArr2[(i4 * line) + 6] = ellipsisCount;
    }

    private float getTotalInsets(int line) {
        int totalIndent = 0;
        int[] iArr = this.mLeftIndents;
        if (iArr != null) {
            totalIndent = iArr[Math.min(line, iArr.length - 1)];
        }
        int[] iArr2 = this.mRightIndents;
        if (iArr2 != null) {
            totalIndent += iArr2[Math.min(line, iArr2.length - 1)];
        }
        return totalIndent;
    }

    @Override // android.text.Layout
    public int getLineForVertical(int vertical) {
        int high = this.mLineCount;
        int low = -1;
        int[] lines = this.mLines;
        while (high - low > 1) {
            int guess = (high + low) >> 1;
            if (lines[(this.mColumns * guess) + 1] > vertical) {
                high = guess;
            } else {
                low = guess;
            }
        }
        if (low < 0) {
            return 0;
        }
        return low;
    }

    @Override // android.text.Layout
    public int getLineCount() {
        return this.mLineCount;
    }

    @Override // android.text.Layout
    public int getLineTop(int line) {
        return this.mLines[(this.mColumns * line) + 1];
    }

    @Override // android.text.Layout
    public int getLineExtra(int line) {
        return this.mLines[(this.mColumns * line) + 3];
    }

    @Override // android.text.Layout
    public int getLineDescent(int line) {
        return this.mLines[(this.mColumns * line) + 2];
    }

    @Override // android.text.Layout
    public int getLineStart(int line) {
        return this.mLines[(this.mColumns * line) + 0] & 536870911;
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int line) {
        return this.mLines[(this.mColumns * line) + 0] >> 30;
    }

    @Override // android.text.Layout
    public boolean getLineContainsTab(int line) {
        return (this.mLines[(this.mColumns * line) + 0] & 536870912) != 0;
    }

    @Override // android.text.Layout
    public final Layout.Directions getLineDirections(int line) {
        if (line > getLineCount()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mLineDirections[line];
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    static int packHyphenEdit(int start, int end) {
        return (start << 3) | end;
    }

    static int unpackStartHyphenEdit(int packedHyphenEdit) {
        return (packedHyphenEdit & 24) >> 3;
    }

    static int unpackEndHyphenEdit(int packedHyphenEdit) {
        return packedHyphenEdit & 7;
    }

    @Override // android.text.Layout
    public int getStartHyphenEdit(int lineNumber) {
        return unpackStartHyphenEdit(this.mLines[(this.mColumns * lineNumber) + 4] & 255);
    }

    @Override // android.text.Layout
    public int getEndHyphenEdit(int lineNumber) {
        return unpackEndHyphenEdit(this.mLines[(this.mColumns * lineNumber) + 4] & 255);
    }

    @Override // android.text.Layout
    public int getIndentAdjust(int line, Layout.Alignment align) {
        if (align == Layout.Alignment.ALIGN_LEFT) {
            int[] iArr = this.mLeftIndents;
            if (iArr == null) {
                return 0;
            }
            return iArr[Math.min(line, iArr.length - 1)];
        }
        if (align == Layout.Alignment.ALIGN_RIGHT) {
            int[] iArr2 = this.mRightIndents;
            if (iArr2 == null) {
                return 0;
            }
            return -iArr2[Math.min(line, iArr2.length - 1)];
        }
        if (align == Layout.Alignment.ALIGN_CENTER) {
            int left = 0;
            int[] iArr3 = this.mLeftIndents;
            if (iArr3 != null) {
                left = iArr3[Math.min(line, iArr3.length - 1)];
            }
            int right = 0;
            int[] iArr4 = this.mRightIndents;
            if (iArr4 != null) {
                right = iArr4[Math.min(line, iArr4.length - 1)];
            }
            return (left - right) >> 1;
        }
        throw new AssertionError("unhandled alignment " + align);
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int line) {
        int i = this.mColumns;
        if (i < 7) {
            return 0;
        }
        return this.mLines[(i * line) + 6];
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int line) {
        int i = this.mColumns;
        if (i < 7) {
            return 0;
        }
        return this.mLines[(i * line) + 5];
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public boolean isFallbackLineSpacingEnabled() {
        return this.mFallbackLineSpacing;
    }

    @Override // android.text.Layout
    public int getHeight(boolean cap) {
        int i;
        if (cap && this.mLineCount > this.mMaximumVisibleLineCount && this.mMaxLineHeight == -1 && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "maxLineHeight should not be -1.  maxLines:" + this.mMaximumVisibleLineCount + " lineCount:" + this.mLineCount);
        }
        return (!cap || this.mLineCount <= this.mMaximumVisibleLineCount || (i = this.mMaxLineHeight) == -1) ? super.getHeight() : i;
    }

    static class LineBreaks {
        private static final int INITIAL_SIZE = 16;
        public int[] breaks = new int[16];
        public float[] widths = new float[16];
        public float[] ascents = new float[16];
        public float[] descents = new float[16];
        public int[] flags = new int[16];

        LineBreaks() {
        }
    }
}

package android.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.DrawableContainer;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class LevelListDrawable extends DrawableContainer {
    private LevelListState mLevelListState;
    private boolean mMutated;

    public LevelListDrawable() {
        this(null, null);
    }

    public void addLevel(int low, int high, Drawable drawable) {
        if (drawable != null) {
            this.mLevelListState.addLevel(low, high, drawable);
            onLevelChange(getLevel());
        }
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        int idx = this.mLevelListState.indexOfLevel(level);
        if (selectDrawable(idx)) {
            return true;
        }
        return super.onLevelChange(level);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources r, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        super.inflate(r, parser, attrs, theme);
        updateDensity(r);
        inflateChildElements(r, parser, attrs, theme);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0099, code lost:
    
        onLevelChange(getLevel());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a0, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void inflateChildElements(android.content.res.Resources r12, org.xmlpull.v1.XmlPullParser r13, android.util.AttributeSet r14, android.content.res.Resources.Theme r15) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            r11 = this;
            r0 = 0
            int r1 = r13.getDepth()
            r2 = 1
            int r1 = r1 + r2
        L7:
            int r3 = r13.next()
            r4 = r3
            if (r3 == r2) goto L99
            int r3 = r13.getDepth()
            r5 = r3
            if (r3 >= r1) goto L18
            r3 = 3
            if (r4 == r3) goto L99
        L18:
            r3 = 2
            if (r4 == r3) goto L1c
            goto L7
        L1c:
            if (r5 > r1) goto L7
            java.lang.String r6 = r13.getName()
            java.lang.String r7 = "item"
            boolean r6 = r6.equals(r7)
            if (r6 != 0) goto L2b
            goto L7
        L2b:
            int[] r6 = com.android.internal.R.styleable.LevelListDrawableItem
            android.content.res.TypedArray r6 = obtainAttributes(r12, r15, r14, r6)
            r7 = 0
            int r0 = r6.getInt(r2, r7)
            int r8 = r6.getInt(r3, r7)
            int r7 = r6.getResourceId(r7, r7)
            r6.recycle()
            if (r8 < 0) goto L7c
            if (r7 == 0) goto L4a
            android.graphics.drawable.Drawable r3 = r12.getDrawable(r7, r15)
            goto L59
        L4a:
            int r9 = r13.next()
            r4 = r9
            r10 = 4
            if (r9 != r10) goto L53
            goto L4a
        L53:
            if (r4 != r3) goto L5f
            android.graphics.drawable.Drawable r3 = android.graphics.drawable.Drawable.createFromXmlInner(r12, r13, r14, r15)
        L59:
            android.graphics.drawable.LevelListDrawable$LevelListState r9 = r11.mLevelListState
            r9.addLevel(r0, r8, r3)
            goto L7
        L5f:
            org.xmlpull.v1.XmlPullParserException r2 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r9 = r13.getPositionDescription()
            java.lang.StringBuilder r3 = r3.append(r9)
            java.lang.String r9 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            java.lang.StringBuilder r3 = r3.append(r9)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        L7c:
            org.xmlpull.v1.XmlPullParserException r2 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r9 = r13.getPositionDescription()
            java.lang.StringBuilder r3 = r3.append(r9)
            java.lang.String r9 = ": <item> tag requires a 'maxLevel' attribute"
            java.lang.StringBuilder r3 = r3.append(r9)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        L99:
            int r2 = r11.getLevel()
            r11.onLevelChange(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.graphics.drawable.LevelListDrawable.inflateChildElements(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mLevelListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.graphics.drawable.DrawableContainer
    public LevelListState cloneConstantState() {
        return new LevelListState(this.mLevelListState, this, null);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    private static final class LevelListState extends DrawableContainer.DrawableContainerState {
        private int[] mHighs;
        private int[] mLows;

        LevelListState(LevelListState orig, LevelListDrawable owner, Resources res) {
            super(orig, owner, res);
            if (orig != null) {
                this.mLows = orig.mLows;
                this.mHighs = orig.mHighs;
            } else {
                this.mLows = new int[getCapacity()];
                this.mHighs = new int[getCapacity()];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mutate() {
            this.mLows = (int[]) this.mLows.clone();
            this.mHighs = (int[]) this.mHighs.clone();
        }

        public void addLevel(int low, int high, Drawable drawable) {
            int pos = addChild(drawable);
            this.mLows[pos] = low;
            this.mHighs[pos] = high;
        }

        public int indexOfLevel(int level) {
            int[] lows = this.mLows;
            int[] highs = this.mHighs;
            int N = getChildCount();
            for (int i = 0; i < N; i++) {
                if (level >= lows[i] && level <= highs[i]) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new LevelListDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources res) {
            return new LevelListDrawable(this, res);
        }

        @Override // android.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int oldSize, int newSize) {
            super.growArray(oldSize, newSize);
            int[] newInts = new int[newSize];
            System.arraycopy(this.mLows, 0, newInts, 0, oldSize);
            this.mLows = newInts;
            int[] newInts2 = new int[newSize];
            System.arraycopy(this.mHighs, 0, newInts2, 0, oldSize);
            this.mHighs = newInts2;
        }
    }

    @Override // android.graphics.drawable.DrawableContainer
    protected void setConstantState(DrawableContainer.DrawableContainerState state) {
        super.setConstantState(state);
        if (state instanceof LevelListState) {
            this.mLevelListState = (LevelListState) state;
        }
    }

    private LevelListDrawable(LevelListState state, Resources res) {
        LevelListState as = new LevelListState(state, this, res);
        setConstantState(as);
        onLevelChange(getLevel());
    }
}

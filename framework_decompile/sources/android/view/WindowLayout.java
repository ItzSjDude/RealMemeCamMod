package android.view;

import android.app.WindowConfiguration;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.window.ClientWindowFrames;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes3.dex */
public class WindowLayout {
    private static final boolean DEBUG = false;
    static final int MAX_X = 100000;
    static final int MAX_Y = 100000;
    static final int MIN_X = -100000;
    static final int MIN_Y = -100000;
    private static final String TAG = WindowLayout.class.getSimpleName();
    public static final int UNSPECIFIED_LENGTH = -1;
    private final Rect mTempDisplayCutoutSafeExceptMaybeBarsRect = new Rect();
    private final Rect mTempRect = new Rect();
    public IWindowLayoutExt mExt = (IWindowLayoutExt) ExtLoader.type(IWindowLayoutExt.class).base(this).create();

    public void computeFrames(WindowManager.LayoutParams attrs, InsetsState state, Rect displayCutoutSafe, Rect windowBounds, int windowingMode, int requestedWidth, int requestedHeight, InsetsVisibilities requestedVisibilities, Rect attachedWindowFrame, float compatScale, ClientWindowFrames outFrames) {
        Rect outFrame;
        boolean z;
        int w;
        int rw;
        float x;
        float y;
        int type;
        Rect outFrame2;
        Rect outDisplayFrame;
        int w2;
        InsetsSource navSource;
        InsetsSource source;
        int type2 = attrs.type;
        int fl = attrs.flags;
        int pfl = attrs.privateFlags;
        boolean layoutInScreen = (fl & 256) == 256;
        Rect outDisplayFrame2 = outFrames.displayFrame;
        Rect outParentFrame = outFrames.parentFrame;
        Rect outFrame3 = outFrames.frame;
        Insets insets = state.calculateInsets(windowBounds, attrs.getFitInsetsTypes(), attrs.isFitInsetsIgnoringVisibility());
        int sides = attrs.getFitInsetsSides();
        int left = (sides & 1) != 0 ? insets.left : 0;
        int top = (sides & 2) != 0 ? insets.top : 0;
        int right = (sides & 4) != 0 ? insets.right : 0;
        int bottom = (sides & 8) != 0 ? insets.bottom : 0;
        outDisplayFrame2.set(windowBounds.left + left, windowBounds.top + top, windowBounds.right - right, windowBounds.bottom - bottom);
        if (attachedWindowFrame == null) {
            outParentFrame.set(outDisplayFrame2);
            if ((1073741824 & pfl) != 0 && (source = state.peekSource(19)) != null) {
                outParentFrame.inset(source.calculateInsets(outParentFrame, false));
            }
        } else {
            outParentFrame.set(!layoutInScreen ? attachedWindowFrame : outDisplayFrame2);
        }
        int cutoutMode = attrs.layoutInDisplayCutoutMode;
        DisplayCutout cutout = state.getDisplayCutout();
        Rect displayCutoutSafeExceptMaybeBars = this.mTempDisplayCutoutSafeExceptMaybeBarsRect;
        displayCutoutSafeExceptMaybeBars.set(displayCutoutSafe);
        outFrames.isParentFrameClippedByDisplayCutout = false;
        if (cutoutMode == 3 || cutout.isEmpty() || this.mExt.isCutoutModeShow(cutoutMode)) {
            outFrame = outFrame3;
            z = true;
        } else {
            Rect displayFrame = state.getDisplayFrame();
            InsetsSource statusBarSource = state.peekSource(0);
            if (statusBarSource != null) {
                outFrame = outFrame3;
                if (displayCutoutSafe.top > displayFrame.top) {
                    displayCutoutSafeExceptMaybeBars.top = Math.max(statusBarSource.getFrame().bottom, displayCutoutSafe.top);
                }
            } else {
                outFrame = outFrame3;
            }
            if (cutoutMode == 1) {
                if (displayFrame.width() < displayFrame.height()) {
                    displayCutoutSafeExceptMaybeBars.top = Integer.MIN_VALUE;
                    displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                } else {
                    displayCutoutSafeExceptMaybeBars.left = Integer.MIN_VALUE;
                    displayCutoutSafeExceptMaybeBars.right = Integer.MAX_VALUE;
                }
            }
            boolean layoutInsetDecor = (attrs.flags & 65536) != 0;
            if (layoutInScreen && layoutInsetDecor) {
                if (cutoutMode == 0 || cutoutMode == 1) {
                    Insets systemBarsInsets = state.calculateInsets(displayFrame, WindowInsets.Type.systemBars(), requestedVisibilities);
                    if (systemBarsInsets.left > 0) {
                        displayCutoutSafeExceptMaybeBars.left = Integer.MIN_VALUE;
                    }
                    if (systemBarsInsets.top > 0) {
                        displayCutoutSafeExceptMaybeBars.top = Integer.MIN_VALUE;
                    }
                    if (systemBarsInsets.right > 0) {
                        displayCutoutSafeExceptMaybeBars.right = Integer.MAX_VALUE;
                    }
                    if (systemBarsInsets.bottom > 0) {
                        displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                    }
                }
            }
            if (type2 == 2011 && (navSource = state.peekSource(1)) != null && navSource.calculateInsets(displayFrame, true).bottom > 0) {
                displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
            }
            this.mExt.adjustDisplayCutoutSafeExceptMaybeBars(attrs, displayFrame, displayCutoutSafeExceptMaybeBars);
            boolean attachedInParent = (attachedWindowFrame == null || layoutInScreen) ? false : true;
            boolean floatingInScreenWindow = (attrs.isFullscreen() || !layoutInScreen || type2 == 1) ? false : true;
            if (attachedInParent || floatingInScreenWindow) {
                z = true;
            } else {
                this.mTempRect.set(outParentFrame);
                outParentFrame.intersectUnchecked(displayCutoutSafeExceptMaybeBars);
                z = true;
                outFrames.isParentFrameClippedByDisplayCutout = !this.mTempRect.equals(outParentFrame);
            }
            outDisplayFrame2.intersectUnchecked(displayCutoutSafeExceptMaybeBars);
        }
        boolean noLimits = (attrs.flags & 512) != 0 ? z : false;
        boolean inMultiWindowMode = WindowConfiguration.inMultiWindowMode(windowingMode);
        if (noLimits && type2 != 2010 && !inMultiWindowMode) {
            outDisplayFrame2.left = -100000;
            outDisplayFrame2.top = -100000;
            outDisplayFrame2.right = 100000;
            outDisplayFrame2.bottom = 100000;
        }
        Rect outFrame4 = outFrame;
        boolean z2 = z;
        this.mExt.adjustWindowFrame(attrs, windowBounds, windowingMode, outDisplayFrame2, outParentFrame);
        boolean hasCompatScale = compatScale != 1.0f ? z2 : false;
        int pw = outParentFrame.width();
        int ph = outParentFrame.height();
        boolean extendedByCutout = (attrs.privateFlags & 8192) != 0 ? z2 : false;
        int rw2 = requestedWidth;
        int rh = requestedHeight;
        if (rw2 == -1 || extendedByCutout) {
            rw2 = attrs.width >= 0 ? attrs.width : pw;
        }
        if (rh == -1 || extendedByCutout) {
            rh = attrs.height >= 0 ? attrs.height : ph;
        }
        if ((attrs.flags & 16384) != 0) {
            if (attrs.width < 0) {
                w2 = pw;
            } else if (hasCompatScale) {
                w2 = (int) ((attrs.width * compatScale) + 0.5f);
            } else {
                w2 = attrs.width;
            }
            int w3 = w2;
            int w4 = attrs.height;
            if (w4 < 0) {
                rw = ph;
                w = w3;
            } else if (hasCompatScale) {
                rw = (int) ((attrs.height * compatScale) + 0.5f);
                w = w3;
            } else {
                int h = attrs.height;
                rw = h;
                w = w3;
            }
        } else {
            int h2 = attrs.width;
            if (h2 == -1) {
                w = pw;
            } else if (hasCompatScale) {
                w = (int) ((rw2 * compatScale) + 0.5f);
            } else {
                w = rw2;
            }
            if (attrs.height == -1) {
                rw = ph;
            } else if (hasCompatScale) {
                rw = (int) ((rh * compatScale) + 0.5f);
            } else {
                rw = rh;
            }
        }
        if (hasCompatScale) {
            x = attrs.x * compatScale;
            y = attrs.y * compatScale;
        } else {
            x = attrs.x;
            y = attrs.y;
        }
        if (inMultiWindowMode && (attrs.privateFlags & 65536) == 0) {
            w = Math.min(w, pw);
            rw = Math.min(rw, ph);
        }
        if (inMultiWindowMode) {
            type = 1;
            if (attrs.type == 1 || noLimits) {
                type = 0;
            }
        } else {
            type = 1;
        }
        int i = type;
        Gravity.apply(attrs.gravity, w, rw, outParentFrame, (int) ((attrs.horizontalMargin * pw) + x), (int) ((attrs.verticalMargin * ph) + y), outFrame4);
        if (i == 0) {
            outFrame2 = outFrame4;
            outDisplayFrame = outDisplayFrame2;
        } else {
            outFrame2 = outFrame4;
            outDisplayFrame = outDisplayFrame2;
            Gravity.applyDisplay(attrs.gravity, outDisplayFrame, outFrame2);
        }
        if (extendedByCutout && !displayCutoutSafe.contains(outFrame2)) {
            this.mTempRect.set(outFrame2);
            Gravity.applyDisplay(attrs.gravity & (-285212673), displayCutoutSafe, this.mTempRect);
            if (this.mTempRect.intersect(outDisplayFrame)) {
                outFrame2.union(this.mTempRect);
            }
        }
    }

    public static void computeSurfaceSize(WindowManager.LayoutParams attrs, Rect maxBounds, int requestedWidth, int requestedHeight, Rect winFrame, boolean dragResizing, Point outSurfaceSize) {
        int width;
        int height;
        if ((attrs.flags & 16384) != 0) {
            width = requestedWidth;
            height = requestedHeight;
        } else if (dragResizing) {
            width = maxBounds.width();
            height = maxBounds.height();
        } else {
            width = winFrame.width();
            height = winFrame.height();
        }
        if (width < 1) {
            width = 1;
        }
        if (height < 1) {
            height = 1;
        }
        Rect surfaceInsets = attrs.surfaceInsets;
        outSurfaceSize.set(width + surfaceInsets.left + surfaceInsets.right, height + surfaceInsets.top + surfaceInsets.bottom);
    }
}

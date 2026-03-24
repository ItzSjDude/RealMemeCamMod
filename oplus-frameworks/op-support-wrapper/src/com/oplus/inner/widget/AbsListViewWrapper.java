package com.oplus.inner.widget;

import android.util.Log;
import android.widget.AbsListView;

/* loaded from: classes.dex */
public class AbsListViewWrapper {
    private static final String TAG = "AbsListViewWrapper";

    public static int getTouchMode(AbsListView absListView) {
        if (absListView == null) {
            return -1;
        }
        try {
            int result = absListView.getWrapper().getExtImpl().getTouchMode();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static void setTouchMode(AbsListView absListView, int mode) {
        if (absListView != null) {
            try {
                absListView.getWrapper().getExtImpl().setTouchMode(mode);
            } catch (Throwable e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    public static void oplusStartSpringback(AbsListView absListView) {
        if (absListView != null) {
            try {
                absListView.getWrapper().getExtImpl().startSpringback();
            } catch (Throwable e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    public static void setOplusFlingMode(AbsListView absListView, int mode) {
        if (absListView != null) {
            try {
                absListView.getWrapper().getExtImpl().setFlingMode(mode);
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        }
    }
}

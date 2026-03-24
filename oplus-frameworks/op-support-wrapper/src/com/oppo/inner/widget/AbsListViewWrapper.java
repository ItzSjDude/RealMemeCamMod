package com.oppo.inner.widget;

import android.util.Log;
import android.widget.AbsListView;
import com.oplus.inner.widget.AbsListViewWrapper;

public class AbsListViewWrapper {
    public static int getTouchMode(AbsListView absListView) {
        return AbsListViewWrapper.getTouchMode(absListView);
    }

    public static void setTouchMode(AbsListView absListView, int mode) {
        AbsListViewWrapper.setTouchMode(absListView, mode);
    }

    public static void oplusStartSpringback(AbsListView absListView) {
        AbsListViewWrapper.oplusStartSpringback(absListView);
    }

    public static void setOplusFlingMode(AbsListView absListView, int mode) {
        AbsListViewWrapper.setOplusFlingMode(absListView, mode);
    }

}
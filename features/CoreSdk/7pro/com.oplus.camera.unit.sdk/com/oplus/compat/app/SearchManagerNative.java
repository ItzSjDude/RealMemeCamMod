package com.oplus.compat.app;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.database.Cursor;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class SearchManagerNative {
    private SearchManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "getSuggestions", params = {SearchableInfo.class, String.class, int.class})
        private static RefMethod<Cursor> getSuggestionsWithThreeParams;
        @MethodName(name = "getSuggestions", params = {SearchableInfo.class, String.class})
        private static RefMethod<Cursor> getSuggestionsWithTwoParams;
        private static RefMethod<ComponentName> getWebSearchActivity;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.app.SearchManager");
        }
    }

    @Grey
    @RequiresApi(api = 30)
    public static Cursor getSuggestions(SearchManager searchManager, SearchableInfo searchableInfo, String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (Cursor) ReflectInfo.getSuggestionsWithThreeParams.call(searchManager, searchableInfo, str, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static Cursor getSuggestions(SearchManager searchManager, SearchableInfo searchableInfo, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (Cursor) ReflectInfo.getSuggestionsWithTwoParams.call(searchManager, searchableInfo, str);
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static ComponentName getWebSearchActivity(SearchManager searchManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (ComponentName) ReflectInfo.getWebSearchActivity.call(searchManager, new Object[0]);
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }
}

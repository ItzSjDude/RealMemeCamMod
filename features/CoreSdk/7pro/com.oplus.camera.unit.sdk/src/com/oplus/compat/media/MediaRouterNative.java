package com.oplus.compat.media;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MediaRouterNative {
    private static final String CALL_BACK_ACTION = "call_back_action";
    private static final String CALL_BACK_ROUTE_INFO = "call_back_route_info";
    private static final String CALL_BACK_TYPE = "call_back_type";
    private static final String COMPONENT_NAME = "android.media.MediaRouter";
    private static final String KEY_CALLBACK = "media_route_callback";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "MediaRouterNative";

    /* loaded from: classes.dex */
    public interface MediaRouterCallbackNative {
        void onRouteAdded(MediaRouterInfo mediaRouterInfo);

        void onRouteChanged(MediaRouterInfo mediaRouterInfo);

        void onRouteRemoved(MediaRouterInfo mediaRouterInfo);

        void onRouteSelected(int i, MediaRouterInfo mediaRouterInfo);

        void onRouteUnselected(int i, MediaRouterInfo mediaRouterInfo);

        void onRouteVolumeChanged(MediaRouterInfo mediaRouterInfo);
    }

    @Permission(authStr = "setRouterGroupId", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setRouterGroupId(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setRouterGroupId").withString("routeGroupId", str).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "addCallback", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void addCallback(final MediaRouterCallbackNative mediaRouterCallbackNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("addCallback").build();
            Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.media.MediaRouterNative.1
                @Override // com.oplus.epona.Call.Callback
                public void onReceive(Response response) {
                    Bundle bundle;
                    if (!response.isSuccessful() || (bundle = response.getBundle()) == null) {
                        return;
                    }
                    String string = bundle.getString(MediaRouterNative.CALL_BACK_ACTION);
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    char c = 65535;
                    switch (string.hashCode()) {
                        case -785031254:
                            if (string.equals("onRouteChanged")) {
                                c = 4;
                                break;
                            }
                            break;
                        case -432138922:
                            if (string.equals("onRouteRemoved")) {
                                c = 3;
                                break;
                            }
                            break;
                        case -214782082:
                            if (string.equals("onRouteUnselected")) {
                                c = 1;
                                break;
                            }
                            break;
                        case -69819530:
                            if (string.equals("onRouteAdded")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1118809776:
                            if (string.equals("onRouteVolumeChanged")) {
                                c = 5;
                                break;
                            }
                            break;
                        case 1192989797:
                            if (string.equals("onRouteSelected")) {
                                c = 0;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            MediaRouterCallbackNative.this.onRouteSelected(bundle.getInt(MediaRouterNative.CALL_BACK_TYPE), (MediaRouterInfo) bundle.getParcelable(MediaRouterNative.CALL_BACK_ROUTE_INFO));
                            return;
                        case 1:
                            MediaRouterCallbackNative.this.onRouteUnselected(bundle.getInt(MediaRouterNative.CALL_BACK_TYPE), (MediaRouterInfo) bundle.getParcelable(MediaRouterNative.CALL_BACK_ROUTE_INFO));
                            return;
                        case 2:
                            MediaRouterCallbackNative.this.onRouteAdded((MediaRouterInfo) bundle.getParcelable(MediaRouterNative.CALL_BACK_ROUTE_INFO));
                            return;
                        case 3:
                            MediaRouterCallbackNative.this.onRouteRemoved((MediaRouterInfo) bundle.getParcelable(MediaRouterNative.CALL_BACK_ROUTE_INFO));
                            return;
                        case 4:
                            MediaRouterCallbackNative.this.onRouteChanged((MediaRouterInfo) bundle.getParcelable(MediaRouterNative.CALL_BACK_ROUTE_INFO));
                            return;
                        case 5:
                            MediaRouterCallbackNative.this.onRouteVolumeChanged((MediaRouterInfo) bundle.getParcelable(MediaRouterNative.CALL_BACK_ROUTE_INFO));
                            return;
                        default:
                            return;
                    }
                }
            });
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "removeCallback", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void removeCallback() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removeCallback").build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "selectDefaultRoute", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void selectDefaultRoute() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("selectDefaultRoute").build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "selectRoute", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static void selectRoute(String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("selectRoute").withString("routeName", str).withString("routeId", str2).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getRoutes", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static ArrayList<MediaRouterInfo> getRoutes() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getRoutes").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}

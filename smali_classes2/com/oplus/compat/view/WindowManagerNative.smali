.class public Lcom/oplus/compat/view/WindowManagerNative;
.super Ljava/lang/Object;
.source "WindowManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/view/WindowManagerNative$a;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.view.IWindowManager"

.field private static final TAG:Ljava/lang/String; = "WindowManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getUnsetAnyKeyQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getIgnoreHomeMenuKeyQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/oplus/compat/view/WindowManagerNative;->setHomeAndMenuKeyStateCompat(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getIgnoreHomeKeyQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getIgnoreMenuKeyQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getDefaultStatusBarQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getDisableStatusBarQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getEnableStatusBarQCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/oplus/compat/view/WindowManagerNative;->getStatusBarStateByWindowManagerCompat(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/oplus/compat/view/WindowManagerNative;->setStatusBarStateByWindowManagerCompat(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/oplus/compat/view/WindowManagerNative;->getHomeAndMenuKeyStateCompat(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    const-string v1, "window"

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, v1}, Lcom/oplus/tingle/ipc/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 67
    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addViewInner(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "windowInner"

    .line 82
    invoke-static {p0, v0}, Lcom/oplus/tingle/ipc/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 83
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getAppPlatformPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 84
    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 86
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static containsDisplayId([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 135
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static createWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 596
    invoke-static {}, Lcom/oplus/compat/b/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    .line 599
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static getAppPlatformPackageName()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform"

    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getAppPlatformPackageNameForCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getAppPlatformPackageNameForCompat()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentImeTouchRegion()Landroid/graphics/Region;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.view.IWindowManager"

    .line 182
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getCurrentImeTouchRegion"

    .line 183
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getCurrentImeTouchRegionQCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    return-object v0

    .line 192
    :cond_2
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCurrentImeTouchRegionQCompat()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultStatusBarQCompat()Ljava/lang/Object;
    .locals 2

    .line 544
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 546
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDisableStatusBarQCompat()Ljava/lang/Object;
    .locals 2

    .line 554
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 556
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDockedStackSide()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0

    return v0

    .line 161
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->getDockedStackSideQCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 163
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0

    return v0

    .line 167
    :cond_2
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "Not supported before N_MR1"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDockedStackSideQCompat()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getEnableStatusBarQCompat()Ljava/lang/Object;
    .locals 2

    .line 564
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 566
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getHomeAndMenuKeyStateCompat(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIgnoreHomeKeyQCompat()Ljava/lang/Object;
    .locals 2

    .line 524
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 526
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIgnoreHomeMenuKeyQCompat()Ljava/lang/Object;
    .locals 2

    .line 514
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 516
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIgnoreMenuKeyQCompat()Ljava/lang/Object;
    .locals 2

    .line 534
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 536
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInitialDisplayDensity(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "window"

    .line 147
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/oplus/compat/view/WindowManagerNative$a;->getInitialDisplayDensity:Lcom/oplus/utils/reflect/RefMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 151
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before L"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getStatusBarStateByWindowManagerCompat(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUnsetAnyKeyQCompat()Ljava/lang/Object;
    .locals 2

    .line 504
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 506
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasNavigationBar(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "window"

    .line 111
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 113
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0

    return p0

    .line 114
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    .line 116
    invoke-static {v0, p0}, Lcom/oplus/compat/view/WindowManagerNative;->containsDisplayId([II)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 118
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 119
    const-class v1, Landroid/view/IWindowManager;

    const-string v2, "hasNavigationBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WindowManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    .line 126
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before L"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static innerViewRemoved(Landroid/content/Context;)V
    .locals 1

    const-string v0, "windowInner"

    .line 104
    invoke-static {p0, v0}, Lcom/oplus/tingle/ipc/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static setHomeAndMenuKeyStateCompat(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    return-void
.end method

.method private static setStatusBarStateByWindowManagerCompat(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    return-void
.end method

.method public static viewRemoved(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 74
    invoke-static {p0, v0}, Lcom/oplus/tingle/ipc/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static watchRotation(Landroid/os/IBinder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.view.IWindowManager"

    .line 208
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "watchRotation"

    .line 209
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "IWatcher"

    .line 210
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withBinder(Ljava/lang/String;Landroid/os/IBinder;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "var"

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 213
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    return-void

    .line 215
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/oplus/epona/interceptor/RouteInterceptor;
.super Ljava/lang/Object;
.source "RouteInterceptor.java"

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final FRAGMENT_V4:Ljava/lang/String; = "androidx.fragment.app.Fragment"

.field private static final FRAGMENT_X:Ljava/lang/String; = "androidx.fragment.app.Fragment"

.field private static final TAG:Ljava/lang/String; = "RouteInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private navigateActivity(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getRouteData()Lcom/oplus/epona/route/RouteData;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/oplus/epona/route/RouteData;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/epona/route/RouteData;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/oplus/epona/route/RouteInfo;->getClazz()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Lcom/oplus/epona/route/RouteData;->getRequestCode()I

    move-result p0

    if-ltz p0, :cond_1

    .line 75
    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 76
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/oplus/epona/route/RouteInfo;->getClazz()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private navigateFragment(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)Ljava/lang/Object;
    .locals 5

    const-string p0, "androidx.fragment.app.Fragment"

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/epona/route/RouteInfo;->getClazz()Ljava/lang/Class;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 86
    instance-of v2, p2, Landroid/app/Fragment;

    if-eqz v2, :cond_0

    .line 87
    move-object p0, p2

    check-cast p0, Landroid/app/Fragment;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p2

    .line 89
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "setArguments"

    if-eqz v2, :cond_1

    .line 90
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 91
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 93
    :cond_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 95
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    const/4 p2, 0x2

    .line 99
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "RouteInterceptor"

    const-string p1, "Fetch fragment instance error with Component(%s), message:%s"

    invoke-static {p0, p1, p2}, Lcom/oplus/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .locals 6

    .line 28
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/oplus/epona/Epona;->findRoute(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 33
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.oplus.appplatform.CALLING_PACKAGE_NAME_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 38
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const-string v1, "RouteInterceptor"

    const-string v5, "Caller(%s).Component(%s): found."

    invoke-static {v1, v5, v4}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object p1

    .line 41
    invoke-virtual {v2}, Lcom/oplus/epona/route/RouteInfo;->getRouteType()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_2

    const-string p0, "Route type not found."

    .line 57
    invoke-static {p0}, Lcom/oplus/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    .line 47
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/oplus/epona/interceptor/RouteInterceptor;->navigateFragment(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Fetch fragment instance not found."

    .line 49
    invoke-static {p0}, Lcom/oplus/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    .line 52
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/oplus/epona/Response;->newResponse(Landroid/os/Bundle;)Lcom/oplus/epona/Response;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lcom/oplus/epona/Response;->setData(Ljava/lang/Object;)V

    .line 54
    invoke-interface {p1, v0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    .line 43
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/oplus/epona/interceptor/RouteInterceptor;->navigateActivity(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)V

    const/4 p0, 0x0

    .line 44
    invoke-static {p0}, Lcom/oplus/epona/Response;->newResponse(Landroid/os/Bundle;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method

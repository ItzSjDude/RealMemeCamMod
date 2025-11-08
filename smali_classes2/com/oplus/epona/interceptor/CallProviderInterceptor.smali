.class public Lcom/oplus/epona/interceptor/CallProviderInterceptor;
.super Ljava/lang/Object;
.source "CallProviderInterceptor.java"

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallProviderInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$intercept$0(Ljava/lang/String;Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V
    .locals 2

    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 30
    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x2

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "CallProviderInterceptor"

    const-string p1, "Caller(%s).Component(%s).Action(%s) response : %s"

    .line 28
    invoke-static {p0, p1, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-interface {p2, p3}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .locals 10

    const-string p0, "CallProviderInterceptor"

    .line 18
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/oplus/epona/Epona;->findProviderComponent(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v3

    .line 23
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.oplus.appplatform.CALLING_PACKAGE_NAME_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->isAsync()Z

    move-result p1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {v2, v8}, Lcom/oplus/epona/provider/ProviderInfo;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v7

    new-instance v8, Lcom/oplus/epona/interceptor/-$$Lambda$CallProviderInterceptor$p9RvEOLhI9VtfUasM8JFHp65Ovw;

    invoke-direct {v8, v4, v0, v3}, Lcom/oplus/epona/interceptor/-$$Lambda$CallProviderInterceptor$p9RvEOLhI9VtfUasM8JFHp65Ovw;-><init>(Ljava/lang/String;Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;)V

    aput-object v8, v2, v6

    invoke-virtual {p1, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2, v8}, Lcom/oplus/epona/provider/ProviderInfo;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {p1, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/epona/Response;

    const-string v2, "Caller(%s).Component(%s).Action(%s) response : %s"

    const/4 v8, 0x4

    .line 35
    new-array v8, v8, [Ljava/lang/Object;

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    aput-object v4, v8, v7

    .line 37
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v5

    const/4 v0, 0x3

    aput-object p1, v8, v0

    .line 35
    invoke-static {p0, v2, v8}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-interface {v3, p1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v7

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    const-string p1, "fail to run static provider with componentName = %s and exception is %s"

    .line 41
    invoke-static {p0, p1, v0}, Lcom/oplus/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 44
    invoke-interface {v3, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void
.end method

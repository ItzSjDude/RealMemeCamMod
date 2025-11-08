.class public Lcom/oplus/epona/interceptor/CallComponentInterceptor;
.super Ljava/lang/Object;
.source "CallComponentInterceptor.java"

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallComponentInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$intercept$0(Ljava/lang/String;Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V
    .locals 2

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 27
    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x2

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "CallComponentInterceptor"

    const-string p1, "Caller(%s).Component(%s).Action(%s) response : %s"

    .line 25
    invoke-static {p0, p1, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-interface {p2, p3}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .locals 4

    .line 17
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/oplus/epona/Epona;->findComponent(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.oplus.appplatform.CALLING_PACKAGE_NAME_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->isAsync()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    new-instance p1, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;

    invoke-direct {p1, v2, p0, v1}, Lcom/oplus/epona/interceptor/-$$Lambda$CallComponentInterceptor$HaJXnDRGJuYEbcrwzxOpJHODCQM;-><init>(Ljava/lang/String;Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;)V

    invoke-interface {v0, p0, p1}, Lcom/oplus/epona/DynamicProvider;->onCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0, p0}, Lcom/oplus/epona/DynamicProvider;->onCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p1

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const-string p0, "CallComponentInterceptor"

    const-string v2, "Caller(%s).Component(%s).Action(%s) response : %s"

    .line 32
    invoke-static {p0, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-interface {v1, p1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_0
    return-void

    .line 39
    :cond_2
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void
.end method

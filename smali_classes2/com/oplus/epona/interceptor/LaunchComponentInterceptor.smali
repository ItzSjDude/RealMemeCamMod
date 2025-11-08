.class public Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;
.super Ljava/lang/Object;
.source "LaunchComponentInterceptor.java"

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final PROVIDER_SCHEME:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "LaunchComponentInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTargetUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".oplus.epona"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private isComponentRegistered(Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-static {}, Lcom/oplus/epona/Epona;->getTransferController()Lcom/oplus/epona/ipc/local/RemoteTransferController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/epona/ipc/local/RemoteTransferController;->fetch(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .locals 6

    .line 24
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;->isComponentRegistered(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "LaunchComponentInterceptor"

    if-eqz v1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;->getCallingPackageName()Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteTransfer with componentName = %s found. package = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Proceed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, p0, v1}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v1

    .line 34
    new-instance v5, Lcom/oplus/epona/internal/AppFinder;

    invoke-direct {v5}, Lcom/oplus/epona/internal/AppFinder;-><init>()V

    .line 35
    invoke-virtual {v5, v0}, Lcom/oplus/epona/internal/AppFinder;->findApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 37
    new-array p0, v3, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string p1, "find component:%s failed"

    invoke-static {v4, p1, p0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    .line 42
    :cond_1
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;->getTargetUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 43
    invoke-virtual {p0, v5}, Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;->launchComponent(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 45
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    goto :goto_0

    .line 47
    :cond_2
    new-array p0, v3, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string p1, "launch component:%s failed"

    invoke-static {v4, p1, p0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_0
    return-void
.end method

.method public launchComponent(Landroid/net/Uri;)Z
    .locals 3

    .line 58
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    const-string v1, "launchComponent"

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "KEY_LAUNCH_SUCCESS"

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

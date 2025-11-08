.class public Lcom/oplus/epona/interceptor/IPCInterceptor;
.super Ljava/lang/Object;
.source "IPCInterceptor.java"

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "IPCInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .locals 4

    .line 21
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/oplus/epona/Epona;->getTransferController()Lcom/oplus/epona/ipc/local/RemoteTransferController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/epona/ipc/local/RemoteTransferController;->fetch(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/oplus/epona/IRemoteTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/epona/IRemoteTransfer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v2

    .line 27
    :try_start_0
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->isAsync()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    new-instance p1, Lcom/oplus/epona/interceptor/IPCInterceptor$1;

    invoke-direct {p1, p0, v2}, Lcom/oplus/epona/interceptor/IPCInterceptor$1;-><init>(Lcom/oplus/epona/interceptor/IPCInterceptor;Lcom/oplus/epona/Call$Callback;)V

    invoke-interface {v1, v0, p1}, Lcom/oplus/epona/IRemoteTransfer;->asyncCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/ITransferCallback;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v1, v0}, Lcom/oplus/epona/IRemoteTransfer;->call(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p0

    .line 36
    invoke-interface {v2, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    .line 39
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "IPCInterceptor"

    const-string v0, "fail to call %s#%s and exception is %s"

    .line 39
    invoke-static {p0, v0, p1}, Lcom/oplus/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 42
    invoke-interface {v2, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void
.end method

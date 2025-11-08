.class public Lcom/oplus/compat/os/ServiceManagerNative;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/oplus/compat/b/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    .line 51
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addServiceCompat(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/oplus/compat/b/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before O"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before L"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getServiceQCompat(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

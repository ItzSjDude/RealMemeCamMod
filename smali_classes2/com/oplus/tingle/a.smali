.class public Lcom/oplus/tingle/a;
.super Ljava/lang/Object;
.source "Constants.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.epona.binder"

    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.epona.ext_binder"

    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform.master.provider"

    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform"

    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private static e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static f()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static h()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

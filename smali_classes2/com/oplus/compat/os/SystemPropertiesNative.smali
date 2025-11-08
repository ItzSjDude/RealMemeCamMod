.class public Lcom/oplus/compat/os/SystemPropertiesNative;
.super Ljava/lang/Object;
.source "SystemPropertiesNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before L"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 61
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 41
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 51
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

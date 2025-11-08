.class public Lcom/oplus/camera/l/a;
.super Ljava/lang/Object;
.source "MyRegionAdapter.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/oplus/camera/sticker/c/d;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    sget-object p0, Lcom/oplus/camera/l/a;->a:Ljava/lang/String;

    const-string v0, "getBaseUrl, url is test env"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/oplus/camera/l/a;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    sget-object p0, Lcom/oplus/camera/l/a;->a:Ljava/lang/String;

    const-string v0, "getBaseUrl, url is release env"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/oplus/camera/l/a;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 6

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "com.oplus.camera.face_beauty_default_off"

    .line 39
    invoke-static {v2}, Lcom/oplus/camera/l/b;->a(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oplus/camera/l/a;->b:Z

    const-string v2, "com.oplus.camera.force_play_shutter_sound"

    .line 40
    invoke-static {v2}, Lcom/oplus/camera/l/b;->a(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oplus/camera/l/a;->c:Z

    const-string v2, "com.oplus.camera.qrc_code_support"

    .line 41
    invoke-static {v2}, Lcom/oplus/camera/l/b;->a(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oplus/camera/l/a;->d:Z

    const/4 v2, 0x0

    const-string v3, "com.oplus.camera.soloop_route_url"

    .line 42
    invoke-static {v3, v2}, Lcom/oplus/camera/l/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/camera/l/a;->e:Ljava/lang/String;

    const-string v3, "com.oplus.camera.sticker_test_url"

    .line 43
    invoke-static {v3, v2}, Lcom/oplus/camera/l/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/camera/l/a;->f:Ljava/lang/String;

    const-string v3, "com.oplus.camera.sticker_base_url"

    .line 44
    invoke-static {v3, v2}, Lcom/oplus/camera/l/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/l/a;->g:Ljava/lang/String;

    .line 46
    sget-object v2, Lcom/oplus/camera/l/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/oplus/camera/l/a;->b:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/oplus/camera/l/a;->c:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/oplus/camera/l/a;->d:Z

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/oplus/camera/l/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/oplus/camera/l/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/oplus/camera/l/a;->g:Ljava/lang/String;

    return-object v0
.end method

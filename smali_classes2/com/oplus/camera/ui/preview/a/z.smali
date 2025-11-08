.class public Lcom/oplus/camera/ui/preview/a/z;
.super Ljava/lang/Object;
.source "TexturePreviewFactory.java"


# direct methods
.method public static a(Landroid/content/Context;I)Lcom/oplus/camera/ui/preview/a/y;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10

    if-eq p1, v0, :cond_a

    const/16 v0, 0x20

    if-eq p1, v0, :cond_7

    const/16 v0, 0x40

    if-eq p1, v0, :cond_6

    const/16 v0, 0x80

    if-eq p1, v0, :cond_5

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x400

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    move-object p1, p0

    goto/16 :goto_1

    .line 78
    :cond_0
    new-instance p1, Lcom/oplus/camera/ui/preview/a/n;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/n;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 74
    :cond_1
    new-instance p1, Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/a/a;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 53
    :cond_2
    new-instance p1, Lcom/oplus/camera/ui/preview/a/ab;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/ab;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_3
    const-string p1, "com.oplus.video.retention.v2.support"

    .line 65
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    new-instance p1, Lcom/oplus/camera/ui/preview/a/af;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/af;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 68
    :cond_4
    new-instance p1, Lcom/oplus/camera/ui/preview/a/ae;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/ae;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 61
    :cond_5
    new-instance p1, Lcom/oplus/camera/ui/preview/a/b/b;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/b/b;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 57
    :cond_6
    new-instance p1, Lcom/oplus/camera/ui/preview/a/x;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/x;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    const-string p1, "com.oplus.video.neon.support"

    .line 43
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "com.oplus.video.blur.v2.support"

    .line 44
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 47
    :cond_8
    new-instance p1, Lcom/oplus/camera/ui/preview/a/ac;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/ac;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 45
    :cond_9
    :goto_0
    new-instance p1, Lcom/oplus/camera/ui/preview/a/ad;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/ad;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 35
    :cond_a
    new-instance p1, Lcom/oplus/camera/ui/preview/a/c;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 31
    :cond_b
    new-instance p1, Lcom/oplus/camera/ui/preview/a/w;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/w;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 39
    :cond_c
    new-instance p1, Lcom/oplus/camera/ui/preview/a/h;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/h;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 27
    :cond_d
    new-instance p1, Lcom/oplus/camera/ui/preview/a/l;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/l;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_e
    const-string p1, "com.oplus.single.portrait.support"

    .line 16
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 17
    new-instance p1, Lcom/oplus/camera/ui/preview/a/r;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/r;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_f
    const-string p1, "com.oplus.feature.arscoft.single.bokeh.support"

    .line 18
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 19
    new-instance p1, Lcom/oplus/camera/ui/preview/a/d;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/d;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 21
    :cond_10
    new-instance p1, Lcom/oplus/camera/ui/preview/a/e;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/e;-><init>(Landroid/content/Context;)V

    :goto_1
    return-object p1
.end method

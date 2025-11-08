.class public Lcom/oplus/camera/r/f;
.super Ljava/lang/Object;
.source "SLVModeFactory.java"


# direct methods
.method public static a(ILandroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)Lcom/oplus/camera/r/a;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSLVFpsMode fpsMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SLVModeFactory"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x78

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c0

    if-ne p0, v0, :cond_0

    .line 83
    new-instance p0, Lcom/oplus/camera/r/e;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/r/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V

    return-object p0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid fpsMode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    new-instance p0, Lcom/oplus/camera/r/d;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/r/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V

    return-object p0

    .line 79
    :cond_2
    new-instance p0, Lcom/oplus/camera/r/c;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/r/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V

    return-object p0

    .line 77
    :cond_3
    new-instance p0, Lcom/oplus/camera/r/b;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/r/b;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.oplus.slow.video.hfr.960fps.videotype"

    goto :goto_0

    :cond_1
    const-string p0, "com.oplus.slow.video.hfr.480fps.videotype"

    goto :goto_0

    :cond_2
    const-string p0, "com.oplus.slow.video.hfr.240fps.videotype"

    goto :goto_0

    :cond_3
    const-string p0, "com.oplus.slow.video.hfr.120fps.videotype"

    :goto_0
    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/oplus/camera/r/f;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 55
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    .line 63
    invoke-static {p0}, Lcom/oplus/camera/r/f;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 65
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 69
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

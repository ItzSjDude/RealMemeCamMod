.class Lcom/oplus/ocs/camera/CameraClientBuilder;
.super Lcom/oplus/ocs/base/common/api/a$a;
.source "CameraClientBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraClientBuilder"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/a;Ljava/lang/Object;)Lcom/oplus/ocs/base/common/api/a$e;
    .locals 0

    const-string p0, "CameraClientBuilder"

    const-string p3, "buildClient"

    .line 34
    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance p0, Lcom/oplus/ocs/camera/CameraClient;

    invoke-direct {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p0
.end method

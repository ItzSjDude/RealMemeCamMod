.class Lcom/oplus/ocs/camera/CameraUnitClient$1;
.super Ljava/lang/Object;
.source "CameraUnitClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/camera/CameraUnitClient;->handleAsyncAuthenticate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraUnitClient;Landroid/content/Context;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 345
    new-instance v7, Lcom/oplus/ocs/base/common/api/d;

    iget-object v1, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    new-instance v6, Lcom/oplus/ocs/camera/CameraUnitClient$1$1;

    invoke-direct {v6, p0}, Lcom/oplus/ocs/camera/CameraUnitClient$1$1;-><init>(Lcom/oplus/ocs/camera/CameraUnitClient$1;)V

    const-string v3, "CAMERA_CLIENT"

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oplus/ocs/base/common/api/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLcom/oplus/ocs/base/IAuthenticationListener;)V

    .line 362
    invoke-virtual {v7}, Lcom/oplus/ocs/base/common/api/d;->b()Z

    return-void
.end method

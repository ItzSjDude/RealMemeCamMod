.class Lcom/oplus/ocs/camera/CameraUnitClient$3;
.super Ljava/lang/Object;
.source "CameraUnitClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/camera/CameraUnitClient;->authFail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraUnitClient;I)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient$3;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    iput p2, p0, Lcom/oplus/ocs/camera/CameraUnitClient$3;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$3;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-static {v0}, Lcom/oplus/ocs/camera/CameraUnitClient;->access$300(Lcom/oplus/ocs/camera/CameraUnitClient;)Lcom/oplus/ocs/base/common/api/e;

    move-result-object v0

    new-instance v1, Lcom/oplus/ocs/base/common/a;

    iget p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$3;->val$errorCode:I

    invoke-direct {v1, p0}, Lcom/oplus/ocs/base/common/a;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/oplus/ocs/base/common/api/e;->a(Lcom/oplus/ocs/base/common/a;)V

    return-void
.end method

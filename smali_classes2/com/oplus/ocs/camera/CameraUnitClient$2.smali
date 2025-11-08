.class Lcom/oplus/ocs/camera/CameraUnitClient$2;
.super Ljava/lang/Object;
.source "CameraUnitClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/camera/CameraUnitClient;->authSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/ocs/camera/CameraUnitClient;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraUnitClient;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient$2;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$2;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->access$200(Lcom/oplus/ocs/camera/CameraUnitClient;)Lcom/oplus/ocs/base/common/api/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/f;->a()V

    return-void
.end method

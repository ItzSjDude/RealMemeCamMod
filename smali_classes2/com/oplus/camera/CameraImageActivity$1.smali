.class Lcom/oplus/camera/CameraImageActivity$1;
.super Ljava/lang/Object;
.source "CameraImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraImageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraImageActivity;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraImageActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/CameraImageActivity$1;->a:Lcom/oplus/camera/CameraImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CameraImageActivity"

    const-string v1, "run post delayed task, launch camera."

    .line 71
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/oplus/camera/CameraImageActivity$1;->a:Lcom/oplus/camera/CameraImageActivity;

    invoke-static {p0}, Lcom/oplus/camera/CameraImageActivity;->a(Lcom/oplus/camera/CameraImageActivity;)V

    return-void
.end method

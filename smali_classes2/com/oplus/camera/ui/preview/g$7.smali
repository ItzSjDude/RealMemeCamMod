.class Lcom/oplus/camera/ui/preview/g$7;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 2233
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$7;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2236
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$7;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->Z(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$7;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->Z(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->c()V

    .line 2238
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$7;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->Z(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->b()V

    .line 2240
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$7;->a:Lcom/oplus/camera/ui/preview/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;Z)Z

    :cond_0
    return-void
.end method

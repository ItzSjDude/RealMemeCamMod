.class Lcom/oplus/camera/ui/preview/g$35;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->g()V
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

    .line 881
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$35;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$35;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$35;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->d()V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$35;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->V(Lcom/oplus/camera/ui/preview/g;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$35;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->V(Lcom/oplus/camera/ui/preview/g;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 890
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$35;->a:Lcom/oplus/camera/ui/preview/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_1
    return-void
.end method

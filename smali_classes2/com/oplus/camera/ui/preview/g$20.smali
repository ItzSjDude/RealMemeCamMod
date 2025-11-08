.class Lcom/oplus/camera/ui/preview/g$20;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->aF()V
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

    .line 3065
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$20;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3068
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$20;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->eK()V

    .line 3070
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$20;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3071
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$20;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

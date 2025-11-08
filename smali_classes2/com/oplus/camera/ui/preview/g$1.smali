.class Lcom/oplus/camera/ui/preview/g$1;
.super Landroid/os/Handler;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
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

    .line 264
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 267
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/t;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 285
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/t;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/t;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 278
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/t;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->b(Lcom/oplus/camera/ui/preview/g;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$1;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;)V

    :cond_4
    :goto_0
    return-void
.end method

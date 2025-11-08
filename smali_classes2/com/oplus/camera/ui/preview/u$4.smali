.class Lcom/oplus/camera/ui/preview/u$4;
.super Landroid/os/Handler;
.source "PIAISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/u;Landroid/os/Looper;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u$4;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 565
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "PIAISceneUI"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "handleMessage: 2"

    .line 577
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u$4;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/u;->b(Lcom/oplus/camera/ui/preview/u;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 580
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u$4;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/u;->d(Lcom/oplus/camera/ui/preview/u;)V

    goto :goto_0

    :cond_1
    const-string p1, "handleMessage: 1"

    .line 567
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u$4;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/u;->b(Lcom/oplus/camera/ui/preview/u;)I

    move-result p1

    if-nez p1, :cond_2

    .line 570
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u$4;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/u;->c(Lcom/oplus/camera/ui/preview/u;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u$4;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->h()V

    :cond_2
    :goto_0
    return-void
.end method

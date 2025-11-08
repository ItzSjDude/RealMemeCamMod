.class Lcom/oplus/camera/ui/preview/k$1;
.super Landroid/os/Handler;
.source "FacePointAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/k;Landroid/os/Looper;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/k;->a(Lcom/oplus/camera/ui/preview/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->c(Lcom/oplus/camera/ui/preview/k;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    .line 125
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->b(Lcom/oplus/camera/ui/preview/k;)Lcom/oplus/camera/ui/preview/k$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    .line 126
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->b(Lcom/oplus/camera/ui/preview/k;)Lcom/oplus/camera/ui/preview/k$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/k$b;->am()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/k;->a()V

    goto :goto_0

    .line 129
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/k;->d(Lcom/oplus/camera/ui/preview/k;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->b(Lcom/oplus/camera/ui/preview/k;)Lcom/oplus/camera/ui/preview/k$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->b(Lcom/oplus/camera/ui/preview/k;)Lcom/oplus/camera/ui/preview/k$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/k$b;->al()V

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$1;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/k;->c()V

    :goto_0
    return-void
.end method

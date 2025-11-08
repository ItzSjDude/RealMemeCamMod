.class Lcom/oplus/camera/s/b$1;
.super Landroid/os/Handler;
.source "StarVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/s/b;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/s/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/s/b;Landroid/os/Looper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/oplus/camera/s/b$1;->a:Lcom/oplus/camera/s/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 122
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/s/b$1;->a:Lcom/oplus/camera/s/b;

    invoke-static {p0}, Lcom/oplus/camera/s/b;->e(Lcom/oplus/camera/s/b;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/s/b$1;->a:Lcom/oplus/camera/s/b;

    invoke-static {p0}, Lcom/oplus/camera/s/b;->c(Lcom/oplus/camera/s/b;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/s/b$1;->a:Lcom/oplus/camera/s/b;

    invoke-static {p0}, Lcom/oplus/camera/s/b;->b(Lcom/oplus/camera/s/b;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/s/b$1;->a:Lcom/oplus/camera/s/b;

    invoke-static {p0}, Lcom/oplus/camera/s/b;->d(Lcom/oplus/camera/s/b;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/s/b;->a(Lcom/oplus/camera/s/b;Landroid/app/Activity;)V

    goto :goto_0

    .line 124
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/s/b$1;->a:Lcom/oplus/camera/s/b;

    invoke-static {p0}, Lcom/oplus/camera/s/b;->a(Lcom/oplus/camera/s/b;)V

    :goto_0
    return-void
.end method

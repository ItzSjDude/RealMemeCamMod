.class Lcom/oplus/camera/ui/b$1;
.super Landroid/os/Handler;
.source "CameraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/oplus/camera/ui/b$1;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/b$1;->a:Lcom/oplus/camera/ui/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->b(Z)Z

    :goto_0
    return-void
.end method

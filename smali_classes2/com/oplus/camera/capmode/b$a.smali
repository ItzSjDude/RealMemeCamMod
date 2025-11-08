.class Lcom/oplus/camera/capmode/b$a;
.super Landroid/os/Handler;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/b;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/capmode/b;Landroid/os/Looper;)V
    .locals 0

    .line 1794
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    .line 1795
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1800
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1817
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/c;->a(I)V

    goto :goto_0

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1810
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, p1}, Lcom/oplus/camera/capmode/c;->b(Lcom/oplus/camera/capmode/b;II)V

    goto :goto_0

    .line 1802
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1803
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/capmode/b$a;->a:Lcom/oplus/camera/capmode/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, p1}, Lcom/oplus/camera/capmode/c;->a(Lcom/oplus/camera/capmode/b;II)V

    :cond_3
    :goto_0
    return-void
.end method

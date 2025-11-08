.class Lcom/oplus/camera/CameraManager$4;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->bo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0

    .line 2173
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewProcessThread, handleMessage, what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2203
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2204
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ab(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    .line 2205
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/aa;->c(Z)V

    if-eqz v0, :cond_4

    .line 2207
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2208
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/aa;->a([BLandroid/graphics/Rect;Landroid/util/Size;II)V

    goto :goto_0

    .line 2195
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2196
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x10

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/oplus/camera/ui/preview/a/t;->a([BIII)Z

    goto :goto_0

    .line 2187
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2188
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v2, p1, v1}, Lcom/oplus/camera/ui/preview/a/t;->a([BIII)Z

    goto :goto_0

    .line 2180
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/o;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2181
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/o;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$4;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/camera/o;->a([BII)V

    :cond_4
    :goto_0
    return-void
.end method

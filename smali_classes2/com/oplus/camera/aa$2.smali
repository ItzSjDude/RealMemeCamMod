.class Lcom/oplus/camera/aa$2;
.super Landroid/os/Handler;
.source "QrCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/aa;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/aa;


# direct methods
.method constructor <init>(Lcom/oplus/camera/aa;Landroid/os/Looper;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p1, "QrCodeManager"

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 307
    :pswitch_0
    iget-object p0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/aa;->e(Z)V

    goto/16 :goto_0

    .line 298
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/aa;->d(Z)V

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/aa;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/aa;->b(Z)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "handleMessage, MSG_QR_CODE_JUMP_DELAY"

    .line 291
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/aa;->m()V

    .line 294
    iget-object p0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;Z)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "handleMessage, MSG_QR_CODE_CHECK_LEAVE"

    .line 284
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {p1}, Lcom/oplus/camera/aa;->m(Lcom/oplus/camera/aa;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object p0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/aa;->m()V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->b(Lcom/oplus/camera/aa;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->c(Lcom/oplus/camera/aa;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/o/a;

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/o/a;->a()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/camera/o/a;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/oplus/camera/o/a;->c()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;[BII)Lcom/oplus/camera/o/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->d()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->k(Lcom/oplus/camera/aa;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->b(Lcom/oplus/camera/aa;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object p0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {p0, p1}, Lcom/oplus/camera/aa;->b(Lcom/oplus/camera/aa;Lcom/oplus/camera/o/b;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/aa$2;->a:Lcom/oplus/camera/aa;

    invoke-static {p0}, Lcom/oplus/camera/aa;->l(Lcom/oplus/camera/aa;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

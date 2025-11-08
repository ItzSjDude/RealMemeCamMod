.class Lcom/oplus/camera/sticker/data/b$b;
.super Landroid/os/Handler;
.source "StickerDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/data/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/data/b;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/sticker/data/b;Landroid/os/Looper;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage, message, what: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerDataManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :pswitch_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    invoke-static {p0}, Lcom/oplus/camera/sticker/data/b;->c(Lcom/oplus/camera/sticker/data/b;)V

    goto :goto_1

    .line 294
    :pswitch_1
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/oplus/camera/sticker/data/b;->a(Lcom/oplus/camera/sticker/data/b;Ljava/util/List;)V

    goto :goto_1

    .line 287
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/oplus/camera/sticker/data/StickerItem;

    if-eqz v0, :cond_1

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/camera/sticker/data/StickerItem;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/sticker/data/b;->a(Lcom/oplus/camera/sticker/data/b;Lcom/oplus/camera/sticker/data/StickerItem;Z)V

    goto :goto_1

    .line 280
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/oplus/camera/sticker/data/StickerItem;

    if-eqz v0, :cond_1

    .line 281
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-static {p0, p1}, Lcom/oplus/camera/sticker/data/b;->a(Lcom/oplus/camera/sticker/data/b;Lcom/oplus/camera/sticker/data/StickerItem;)V

    goto :goto_1

    .line 273
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/oplus/camera/sticker/data/StickerCategoryItem;

    if-eqz v0, :cond_1

    .line 274
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/sticker/data/StickerCategoryItem;

    invoke-static {p0, p1}, Lcom/oplus/camera/sticker/data/b;->a(Lcom/oplus/camera/sticker/data/b;Lcom/oplus/camera/sticker/data/StickerCategoryItem;)V

    goto :goto_1

    .line 269
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    invoke-static {p0}, Lcom/oplus/camera/sticker/data/b;->b(Lcom/oplus/camera/sticker/data/b;)V

    goto :goto_1

    .line 265
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/b$b;->a:Lcom/oplus/camera/sticker/data/b;

    invoke-static {p0}, Lcom/oplus/camera/sticker/data/b;->a(Lcom/oplus/camera/sticker/data/b;)V

    :cond_1
    :goto_1
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

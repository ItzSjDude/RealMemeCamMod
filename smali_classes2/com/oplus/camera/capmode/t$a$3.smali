.class Lcom/oplus/camera/capmode/t$a$3;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t$a;->c(Lcom/oplus/camera/sticker/data/StickerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oplus/camera/capmode/t$a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t$a;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 2650
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iput-object p2, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2653
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 2655
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    .line 2656
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v1, v1, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v1, v1, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 2657
    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    .line 2656
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->c(Z)V

    .line 2659
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 2661
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->g(Lcom/oplus/camera/capmode/t;)V

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    .line 2667
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_recyclebin_item_delete"

    .line 2666
    invoke-static {v0, v2, v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2671
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$3;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a$3;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/sticker/ui/l;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    :cond_2
    return-void
.end method

.class Lcom/oplus/camera/capmode/t$15;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$15;->b:Lcom/oplus/camera/capmode/t;

    iput-object p2, p0, Lcom/oplus/camera/capmode/t$15;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerItemChange, success, categoryId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$15;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$15;->b:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->e()Z

    return-void
.end method

.class Lcom/oplus/camera/sticker/ui/h$15;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/data/StickerItem;

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;Lcom/oplus/camera/sticker/data/StickerItem;Z)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$15;->c:Lcom/oplus/camera/sticker/ui/h;

    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/h$15;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    iput-boolean p3, p0, Lcom/oplus/camera/sticker/ui/h$15;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$15;->c:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$15;->c:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$15;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/h$15;->b:Z

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/sticker/ui/j;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)V

    :cond_0
    return-void
.end method

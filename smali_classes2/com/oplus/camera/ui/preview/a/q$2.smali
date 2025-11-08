.class Lcom/oplus/camera/ui/preview/a/q$2;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/p;Lcom/oplus/camera/sticker/data/StickerItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/p;

.field final synthetic c:Z

.field final synthetic d:Lcom/oplus/camera/ui/preview/a/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/sticker/data/StickerItem;Lcom/oplus/camera/ui/preview/a/p;Z)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$2;->d:Lcom/oplus/camera/ui/preview/a/q;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/q$2;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    iput-object p3, p0, Lcom/oplus/camera/ui/preview/a/q$2;->b:Lcom/oplus/camera/ui/preview/a/p;

    iput-boolean p4, p0, Lcom/oplus/camera/ui/preview/a/q$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 578
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$2;->d:Lcom/oplus/camera/ui/preview/a/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(IZ)V

    .line 582
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$2;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$2;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    .line 584
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/q$2;->d:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/q$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/preview/a/q$c;->b(Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$2;->d:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/q$c;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q$c;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 589
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/q$2;->d:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/q$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/q$c;->d()I

    move-result v2

    .line 590
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/q$2;->b:Lcom/oplus/camera/ui/preview/a/p;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/q$2;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/q$2;->c:Z

    invoke-interface {v3, v1, v2, v4, p0}, Lcom/oplus/camera/ui/preview/a/p;->a(Ljava/util/ArrayList;ILcom/oplus/camera/sticker/data/StickerItem;Z)V

    .line 591
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

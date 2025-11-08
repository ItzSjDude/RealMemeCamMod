.class Lcom/oplus/camera/capmode/t$a;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/capmode/t$1;)V
    .locals 0

    .line 2570
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t$a;-><init>(Lcom/oplus/camera/capmode/t;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2718
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2722
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 2690
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 2700
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2701
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    goto :goto_0

    .line 2703
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    goto :goto_0

    .line 2696
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 9

    .line 2573
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2577
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerDownloadStarted, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/q;->b()Lcom/oplus/camera/ui/preview/a/q$c;

    move-result-object v0

    .line 2580
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    .line 2579
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$c;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2583
    iget-object v1, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v1}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getDownloadState()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbPaused:Z

    xor-int/lit8 v7, v0, 0x1

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;IILjava/lang/String;ZLcom/oplus/camera/sticker/data/StickerItem;)V

    .line 2587
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;J)J

    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;I)V
    .locals 13

    .line 2628
    iget-object p2, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean p2, p2, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz p2, :cond_0

    return-void

    .line 2632
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object p2, p2, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/a/q;->b()Lcom/oplus/camera/ui/preview/a/q$c;

    move-result-object p2

    .line 2633
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    .line 2632
    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/preview/a/q$c;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10

    .line 2637
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean p2, p2, Lcom/oplus/camera/capmode/t;->mbPaused:Z

    xor-int/lit8 v6, p2, 0x1

    move-object v7, p1

    .line 2636
    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;IILjava/lang/String;ZLcom/oplus/camera/sticker/data/StickerItem;)V

    .line 2640
    :cond_1
    iget-object v7, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const-wide/16 v9, -0x1

    const-string v11, "download"

    const-string v12, "1"

    move-object v8, p1

    invoke-static/range {v7 .. v12}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 10

    .line 2592
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2596
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/t;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/t;->getIsCapturingState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbModePreInit:Z

    if-eqz v0, :cond_1

    .line 2597
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;Z)Z

    .line 2599
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/t$a$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/t$a$1;-><init>(Lcom/oplus/camera/capmode/t$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2608
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 2609
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a()Lcom/oplus/camera/gl/GLRootView;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/capmode/t$a$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/capmode/t$a$2;-><init>(Lcom/oplus/camera/capmode/t$a;Lcom/oplus/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    .line 2618
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    .line 2620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v2}, Lcom/oplus/camera/capmode/t;->f(Lcom/oplus/camera/capmode/t;)J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 2622
    iget-object v4, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const-string v8, "download"

    const-string v9, "0"

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    .line 2646
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2650
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/t$a$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/capmode/t$a$3;-><init>(Lcom/oplus/camera/capmode/t$a;Lcom/oplus/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2676
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    return-void
.end method

.method public d(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 2681
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-eqz p1, :cond_0

    return-void

    .line 2685
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    return-void
.end method

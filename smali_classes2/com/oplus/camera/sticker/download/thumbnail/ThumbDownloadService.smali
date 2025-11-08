.class public Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;
.super Landroid/app/Service;
.source "ThumbDownloadService.java"

# interfaces
.implements Lcom/oplus/camera/sticker/download/thumbnail/b$a;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    return-void
.end method

.method private a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .line 62
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 95
    invoke-static {p1}, Lcom/oplus/camera/sticker/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/data/StickerCategoryItem;

    .line 99
    instance-of v2, v1, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v1

    check-cast v2, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    .line 102
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no download url, categoryItemWrapper: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbDownloadService"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getIconFileUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 111
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightPath()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightMd5()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-direct {p0, v1, v3}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_4
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_5
    monitor-enter p0

    .line 125
    :try_start_0
    iget p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    .line 129
    new-instance v1, Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-direct {v1, p0, v0, p0}, Lcom/oplus/camera/sticker/download/thumbnail/b;-><init>(Landroid/content/Context;Lcom/oplus/camera/sticker/download/thumbnail/a;Lcom/oplus/camera/sticker/download/thumbnail/b$a;)V

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p1, p2}, Lcom/oplus/camera/sticker/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 179
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkMd5, empty value! filePath: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", fileMd5: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThumbDownloadService"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 135
    invoke-static {p1, v0}, Lcom/oplus/camera/sticker/a/b;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/data/StickerItem;

    .line 139
    instance-of v2, v1, Lcom/oplus/camera/sticker/data/StickerItemWrapper;

    if-eqz v2, :cond_0

    .line 140
    check-cast v1, Lcom/oplus/camera/sticker/data/StickerItemWrapper;

    .line 142
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadStickerThumbnail, no download url, sticker uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbDownloadService"

    .line 144
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoFileUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    :cond_4
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 167
    :cond_5
    monitor-enter p0

    .line 168
    :try_start_0
    iget p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    .line 169
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;

    .line 172
    new-instance v1, Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-direct {v1, p0, v0, p0}, Lcom/oplus/camera/sticker/download/thumbnail/b;-><init>(Landroid/content/Context;Lcom/oplus/camera/sticker/download/thumbnail/a;Lcom/oplus/camera/sticker/download/thumbnail/b$a;)V

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 169
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    const-string p1, "ThumbDownloadService"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFirstDownloadFinish, mThumbnailDownloadCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->b:I

    if-nez p1, :cond_0

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sticker.thumbnail.service"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/e/a/a;->a(Landroid/content/Intent;)Z

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ThumbDownloadService"

    const-string v1, "onCreate"

    .line 56
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, "ThumbDownloadService"

    const-string v0, "onDestroy"

    .line 191
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string v0, "ThumbDownloadService"

    if-nez p1, :cond_0

    const-string p0, "onStartCommand, intent is null"

    .line 71
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService$1;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService$1;-><init>(Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

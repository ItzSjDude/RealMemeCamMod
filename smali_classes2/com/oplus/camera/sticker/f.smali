.class public Lcom/oplus/camera/sticker/f;
.super Ljava/lang/Object;
.source "StickerDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/sticker/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oplus/camera/sticker/f$a;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/sticker/f;->b:Lcom/oplus/camera/sticker/f$a;

    .line 61
    new-instance v0, Lcom/oplus/camera/sticker/f$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/sticker/f$1;-><init>(Lcom/oplus/camera/sticker/f;)V

    iput-object v0, p0, Lcom/oplus/camera/sticker/f;->c:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/protocol/StickerCategory;Ljava/lang/String;J)Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;
    .locals 2

    .line 300
    new-instance p0, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    invoke-direct {p0}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;-><init>()V

    .line 301
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryName(Ljava/lang/String;)V

    .line 303
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->iconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconUrl(Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->iconMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconMd5(Ljava/lang/String;)V

    .line 309
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->highlightIconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->highlightIconPath:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightUrl(Ljava/lang/String;)V

    .line 313
    :cond_1
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->highlightIconMd5:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightMd5(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p3, p4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setLastRequestTime(J)V

    .line 315
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->readableId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setReadableId(Ljava/lang/String;)V

    .line 316
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->position:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setPosition(I)V

    .line 318
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->isNew:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 319
    iget-object p1, p1, Lcom/oplus/camera/sticker/protocol/StickerCategory;->isNew:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryNew(Z)V

    :cond_2
    return-object p0
.end method

.method private a(Lcom/oplus/camera/sticker/protocol/Sticker;Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;Ljava/lang/String;J)Lcom/oplus/camera/sticker/data/StickerItemWrapper;
    .locals 2

    .line 260
    new-instance p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;

    invoke-direct {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;-><init>()V

    .line 261
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setStickerId(J)V

    .line 262
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setStickerUUID(Ljava/lang/String;)V

    .line 263
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setStickerName(Ljava/lang/String;)V

    .line 265
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setFileDownloadUrl(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->fileMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setFileMd5(Ljava/lang/String;)V

    .line 271
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->thumbnailPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setThumbnailUrl(Ljava/lang/String;)V

    .line 275
    :cond_1
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->thumbnailMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setThumbnailMd5(Ljava/lang/String;)V

    .line 277
    iget-object v0, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setLogoUrl(Ljava/lang/String;)V

    .line 281
    :cond_2
    iget-object p3, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->logoMd5:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setLogoMd5(Ljava/lang/String;)V

    .line 282
    iget-object p3, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->version:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setVersion(J)V

    .line 283
    invoke-virtual {p0, p4, p5}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setLastRequestTime(J)V

    .line 284
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setCategoryId(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setCategoryPosition(I)V

    .line 286
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->position:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setPosition(I)V

    .line 287
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->compatibleApp:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setAttribute(J)V

    .line 288
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->hasMusic:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setHasMusic(Z)V

    const/4 p2, 0x0

    .line 289
    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setIsBuildIn(Z)V

    .line 290
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->materialType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setMaterialType(I)V

    .line 292
    iget-object p2, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->isNew:Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    .line 293
    iget-object p1, p1, Lcom/oplus/camera/sticker/protocol/Sticker;->isNew:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->setStickerNew(Z)V

    :cond_3
    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/f;)Lcom/oplus/camera/sticker/f$a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/sticker/f;->b:Lcom/oplus/camera/sticker/f$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 326
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.oplusos.providers.sticker.download.category.thumbnail"

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDownloadCategoryThumbnail, e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerDataRequest"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/f;Lcom/oplus/camera/sticker/protocol/StickerResponse;J)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/sticker/f;->a(Lcom/oplus/camera/sticker/protocol/StickerResponse;J)V

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/protocol/StickerResponse;J)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-wide/from16 v7, p2

    const-string v9, "StickerDataRequest"

    if-nez v0, :cond_0

    const-string v0, "dealStickerResponseData, response is null!"

    .line 180
    invoke-static {v9, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f40

    if-ne v1, v2, :cond_8

    .line 186
    iget-object v1, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/camera/sticker/c/d;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 187
    iget-object v3, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->dataVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealStickerResponseData, localDataVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", responseVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v10, v1

    if-lez v1, :cond_7

    .line 193
    iget-object v1, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/camera/sticker/a/b;->b(Landroid/content/Context;)V

    .line 194
    iget-object v1, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->checkInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0xea60

    mul-long/2addr v1, v3

    .line 195
    iget-object v3, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/oplus/camera/sticker/c/d;->b(Landroid/content/Context;J)V

    .line 196
    iget-object v12, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->fileServerHost:Ljava/lang/String;

    .line 198
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "dealStickerResponseData, hort url is empty!"

    .line 199
    invoke-static {v9, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_1
    iget-object v0, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->category:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "dealStickerResponseData, responseStickerCategoryList is null!"

    .line 207
    invoke-static {v9, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/protocol/StickerCategory;

    .line 216
    invoke-direct {v6, v0, v12, v7, v8}, Lcom/oplus/camera/sticker/f;->a(Lcom/oplus/camera/sticker/protocol/StickerCategory;Ljava/lang/String;J)Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    move-result-object v4

    .line 218
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, v0, Lcom/oplus/camera/sticker/protocol/StickerCategory;->sticker:Ljava/util/List;

    if-nez v0, :cond_4

    const-string v0, "dealStickerResponseData, stickerList is null!"

    .line 222
    invoke-static {v9, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/camera/sticker/protocol/Sticker;

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v12

    move-object/from16 v17, v4

    move-wide/from16 v4, p2

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/sticker/f;->a(Lcom/oplus/camera/sticker/protocol/Sticker;Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;Ljava/lang/String;J)Lcom/oplus/camera/sticker/data/StickerItemWrapper;

    move-result-object v0

    .line 229
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v17

    goto :goto_1

    .line 233
    :cond_5
    iget-object v0, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/oplus/camera/sticker/a/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 235
    iget-object v1, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v1, v14}, Lcom/oplus/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 238
    iget-object v0, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/oplus/camera/sticker/c/d;->a(Landroid/content/Context;J)V

    .line 239
    iget-object v0, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/oplus/camera/sticker/c/d;->c(Landroid/content/Context;J)V

    goto :goto_2

    .line 241
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealStickerResponseData db fail! updateCategoryResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", updateItemResult: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_2
    iget-object v0, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/sticker/a/b;->c(Landroid/content/Context;)V

    goto :goto_3

    :cond_7
    const-string v0, "dealStickerResponseData, data version already new. do not update!"

    .line 247
    invoke-static {v9, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_3
    iget-object v0, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/oplus/camera/sticker/f;->a(Landroid/content/Context;)V

    .line 251
    iget-object v0, v6, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/oplus/camera/sticker/f;->b(Landroid/content/Context;)V

    goto :goto_4

    .line 253
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealStickerResponseData error! resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resultDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->resultDesc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private a(I)[B
    .locals 2

    .line 163
    new-instance p1, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    invoke-direct {p1}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;-><init>()V

    .line 165
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->model(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 166
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->resResolution(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    const-string v0, "100"

    .line 167
    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->protocolVersion(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 168
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/c/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->clientVersion(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 169
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->oplusosVersion(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 170
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/c/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->androidVersion(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 171
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->otaVersion(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 172
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->locale(Ljava/lang/String;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/camera/sticker/c/d;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->localDataVersion(Ljava/lang/Long;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    const-wide/16 v0, 0x1

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->compatibleApp(Ljava/lang/Long;)Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;

    .line 175
    sget-object p0, Lcom/oplus/camera/sticker/protocol/StickerRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/protocol/StickerRequest$Builder;->build()Lcom/oplus/camera/sticker/protocol/StickerRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 337
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/oplus/camera/sticker/download/thumbnail/ThumbDownloadService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.oplusos.providers.sticker.download.sticker.thumbnail"

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDownloadStickerThumbnail, e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerDataRequest"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/sticker/c/d;->f(Landroid/content/Context;)I

    move-result v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StickerDataRequest"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/oplus/camera/sticker/b/a;

    iget-object v3, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/oplus/camera/sticker/b/a;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/oplus/camera/sticker/f;->a(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/b/a;->a([B)Lokhttp3/RequestBody;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/sticker/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    sget-object v2, Lcom/oplus/camera/sticker/b/a$b;->POST:Lcom/oplus/camera/sticker/b/a$b;

    iget-object v4, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    .line 135
    invoke-virtual {v1, v4, v0}, Lcom/oplus/camera/sticker/b/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Lcom/oplus/camera/sticker/f;->a(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    .line 134
    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/oplus/camera/sticker/b/a;->a(Lcom/oplus/camera/sticker/b/a$b;Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/oplus/camera/sticker/f$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/sticker/f$2;-><init>(Lcom/oplus/camera/sticker/f;)V

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Request;Lcom/oplus/camera/sticker/b/a$c;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "requestData, routeURL is null"

    .line 129
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerDataRequest"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sticker.thumbnail.service"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/sticker/f;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/f$a;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/sticker/f;->b:Lcom/oplus/camera/sticker/f$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerDataRequest"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/sticker/f;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/sticker/c/d;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/camera/sticker/c/d;->c(Landroid/content/Context;)J

    move-result-wide v2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    const-string v0, "StickerDataRequest"

    const-string v1, "checkUpdateData, do not need update data!"

    .line 108
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/camera/sticker/f;->a(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/sticker/f;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/camera/sticker/f;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/sticker/f;->d()V

    :goto_0
    return-void
.end method

.class Lcom/oplus/camera/sticker/provider/StickerProvider$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StickerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/provider/StickerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sticker.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 464
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string p0, "DROP VIEW IF EXISTS sticker_view"

    .line 563
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS sticker_item"

    .line 564
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS sticker_category"

    .line 565
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS multi_info"

    .line 566
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS animoji_info"

    .line 567
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "StickerProvider"

    const-string v0, "deleteAllTables, couldn\'t delete table in downloads database. e: "

    .line 569
    invoke-static {p1, v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    .line 478
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDatabase, fromVersion: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toVersion: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StickerProvider"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    if-ge p2, p0, :cond_1

    .line 485
    invoke-static {}, Lcom/oplus/camera/sticker/a/a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/oplus/camera/sticker/a/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/oplus/camera/sticker/a/d;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const-string p3, "DROP VIEW IF EXISTS sticker_view"

    const/4 v1, 0x2

    if-ge p2, v1, :cond_2

    const-string v2, "alter table sticker_item add material_type INTEGER DEFAULT 0"

    .line 491
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/oplus/camera/sticker/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/oplus/camera/sticker/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/oplus/camera/sticker/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x3

    if-ge p2, v2, :cond_3

    const-string v3, "alter table sticker_category add icon_version INTEGER DEFAULT 0"

    .line 501
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "updateDatabase, add icon_version(column) to sticker_category(table)"

    .line 504
    invoke-static {v0, v3}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/oplus/camera/sticker/a/d;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/4 p3, 0x4

    if-ge p2, p3, :cond_4

    const-string p2, "updateDatabase, replace pattern 1, start"

    .line 512
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-array p2, p0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "b3Bwbw=="

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v3, p2, v4

    const-string v3, ".%s."

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s=REPLACE(%<s, \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', \'.oplus.\')"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "UPDATE %s SET %s, %s, %s, %s"

    const/4 v5, 0x5

    .line 517
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "sticker_category"

    aput-object v7, v6, v4

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "icon_path"

    aput-object v8, v7, v4

    .line 519
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p0

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "icon_file_uri"

    aput-object v8, v7, v4

    .line 520
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "icon_highlight_path"

    aput-object v8, v7, v4

    .line 521
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "icon_highlight_file_uri"

    aput-object v8, v7, v4

    .line 522
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p3

    .line 517
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 523
    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "sticker_item"

    aput-object v7, v5, v4

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "file_path"

    aput-object v8, v7, v4

    .line 525
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, p0

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "file_content_uri"

    aput-object v8, v7, v4

    .line 526
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "thumbnail_path"

    aput-object v8, v7, v4

    .line 527
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    new-array v7, p0, [Ljava/lang/Object;

    const-string v8, "thumbnail_file_uri"

    aput-object v8, v7, v4

    .line 528
    invoke-static {p2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, p3

    .line 523
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 531
    new-array p3, p3, [Ljava/lang/Object;

    const-string v5, "multi_info"

    aput-object v5, p3, v4

    new-array v5, p0, [Ljava/lang/Object;

    const-string v7, "file_content_uri_1_1"

    aput-object v7, v5, v4

    .line 533
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, p0

    new-array v5, p0, [Ljava/lang/Object;

    const-string v7, "file_content_uri_4_3"

    aput-object v7, v5, v4

    .line 534
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v1

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "file_content_uri_16_9"

    aput-object v1, p0, v4

    .line 535
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "UPDATE %s SET %s, %s, %s"

    .line 531
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDatabase, replaceStickerCategoryCommand: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDatabase, replaceStickerItemCommand: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDatabase, replaceMultiInfoCommand: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "updateDatabase, replace pattern 1, end"

    .line 546
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "updateDatabase, replace pattern failed"

    .line 548
    invoke-static {v0, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 469
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/sticker/provider/StickerProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDowngrade, oldVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", newVersion: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StickerProvider"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, p1}, Lcom/oplus/camera/sticker/provider/StickerProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 558
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/sticker/provider/StickerProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x4

    .line 474
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/sticker/provider/StickerProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.class public Lcom/oplus/camera/sticker/a/a;
.super Ljava/lang/Object;
.source "StickerCategoryTableHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/oplus/camera/sticker/data/BuildInStickerCategory;)I
    .locals 2

    .line 295
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/BuildInStickerCategory;->getReadableId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readable_id"

    .line 294
    invoke-static {p0, v1, v0}, Lcom/oplus/camera/sticker/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/camera/sticker/data/StickerCategoryItem;

    move-result-object p0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStickerCategoryCanAddOrUpdate, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerCategoryTableHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getIconVersion()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/BuildInStickerCategory;->getIconVersion()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 313
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 315
    sget-object p2, Lcom/oplus/camera/sticker/a/c$c;->a:Landroid/net/Uri;

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/camera/sticker/data/StickerCategoryItem;
    .locals 7

    const-string v0, "StickerCategoryTableHelper"

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    .line 281
    :try_start_0
    sget-object v2, Lcom/oplus/camera/sticker/a/c$c;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_1

    .line 282
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 283
    invoke-static {p1}, Lcom/oplus/camera/sticker/a/a;->a(Landroid/database/Cursor;)Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    move-result-object p0

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStickerCategory, item: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 281
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 286
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string p2, "getStickerCategory, e:"

    .line 287
    invoke-static {v0, p2, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object p0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;
    .locals 4

    .line 251
    new-instance v0, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    invoke-direct {v0}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;-><init>()V

    const-string v1, "readable_id"

    .line 252
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setReadableId(Ljava/lang/String;)V

    const-string v1, "category_name"

    .line 253
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryName(Ljava/lang/String;)V

    const-string v1, "position"

    .line 254
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setPosition(I)V

    const-string v1, "icon_url"

    .line 255
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconUrl(Ljava/lang/String;)V

    const-string v1, "icon_path"

    .line 256
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconPath(Ljava/lang/String;)V

    const-string v1, "icon_file_uri"

    .line 257
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconFileUri(Ljava/lang/String;)V

    const-string v1, "icon_md5"

    .line 258
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconMd5(Ljava/lang/String;)V

    const-string v1, "icon_highlight_url"

    .line 259
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 260
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightUrl(Ljava/lang/String;)V

    const-string v1, "icon_highlight_path"

    .line 261
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 262
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightPath(Ljava/lang/String;)V

    const-string v1, "icon_highlight_file_uri"

    .line 263
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightFileUri(Ljava/lang/String;)V

    const-string v1, "icon_highlight_md5"

    .line 265
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 266
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconHighlightMd5(Ljava/lang/String;)V

    const-string v1, "request_time"

    .line 267
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setLastRequestTime(J)V

    const-string v1, "is_new"

    .line 268
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 269
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryNew(Z)V

    const-string v1, "is_valid"

    .line 270
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 271
    :goto_1
    invoke-virtual {v0, v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setCategoryValid(Z)V

    const-string v1, "icon_version"

    .line 272
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->setIconVersion(J)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS sticker_category (_id INTEGER PRIMARY KEY, readable_id TEXT UNIQUE, category_name TEXT, position INTEGER, icon_url TEXT, icon_md5 TEXT, icon_path TEXT, icon_file_uri TEXT, icon_highlight_url TEXT, icon_highlight_md5 TEXT, icon_highlight_path TEXT, icon_highlight_file_uri TEXT, is_new INTEGER DEFAULT 0, request_time INTEGER, is_valid INTEGER DEFAULT 1);"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/camera/sticker/data/StickerCategoryItem;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :try_start_0
    sget-object v1, Lcom/oplus/camera/sticker/a/c$c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "position ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_3

    .line 234
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    :cond_0
    invoke-static {v0}, Lcom/oplus/camera/sticker/a/a;->a(Landroid/database/Cursor;)Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 233
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllStickerCategory, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerCategoryTableHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static a(Landroid/content/Context;JJ)V
    .locals 3

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_new = ? AND request_time < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long p3, p1, p3

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    .line 322
    new-array v0, p4, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    aput-object p4, v0, v1

    .line 323
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_new"

    invoke-virtual {p4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    sget-object v1, Lcom/oplus/camera/sticker/a/c$c;->a:Landroid/net/Uri;

    invoke-virtual {p0, v1, p4, p3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 327
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "autoClearStickerNewStatus, update count: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", currTime: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerCategoryTableHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;)Z
    .locals 19

    move-object/from16 v1, p1

    const-string v2, "StickerCategoryTableHelper"

    if-eqz p0, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 73
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "readable_id = ?"

    .line 75
    sget-object v11, Lcom/oplus/camera/sticker/a/c$c;->a:Landroid/net/Uri;

    .line 76
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, v11

    move-object v7, v10

    .line 78
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const-string v5, "icon_version"

    const-string v6, "position"

    const-string v7, "icon_highlight_md5"

    const-string v8, "icon_highlight_file_uri"

    const-string v9, "icon_highlight_path"

    const-string v13, "icon_highlight_url"

    const-string v14, "icon_md5"

    const-string v15, "icon_file_uri"

    const-string v3, "icon_path"

    const-string v1, "icon_url"

    move-object/from16 v16, v2

    const-string v2, "category_name"

    move-object/from16 p0, v0

    const-string v0, "readable_id"

    move-object/from16 v17, v10

    if-eqz v4, :cond_4

    .line 79
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v18
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v18, :cond_4

    .line 80
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconFileUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryNew()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "is_new"

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryNew()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v0, "is_valid"

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 101
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object/from16 v10, p0

    move-object/from16 v0, v17

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrAddToCategoryTable, update single item. count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v1, v16

    :try_start_3
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-object/from16 p0, v4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 p0, v4

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 p0, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 p0, v4

    move-object v2, v0

    :goto_2
    move-object/from16 v1, v16

    goto/16 :goto_7

    :cond_4
    move-object/from16 v10, p0

    move-object/from16 p0, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v4

    .line 105
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconFileUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_time"

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getLastRequestTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_new"

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryNew()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_valid"

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryValid()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrAddToCategoryTable, insert single item. insertUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v1, v16

    :try_start_5
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    if-eqz p0, :cond_7

    .line 126
    :try_start_6
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_7
    const/4 v0, 0x1

    return v0

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v1, v16

    :goto_6
    move-object v2, v0

    :goto_7
    if-eqz p0, :cond_8

    .line 78
    :try_start_7
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v1, v2

    .line 127
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOrAddToCategoryTable, cause a exception, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", category: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_9
    :goto_a
    move-object v1, v2

    const/4 v2, 0x0

    const-string v0, "updateOrAddToCategoryTable, context or category is null!"

    .line 68
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "StickerCategoryTableHelper"

    const/4 v2, 0x0

    if-eqz p1, :cond_11

    .line 134
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string v0, "sticker.db"

    move-object/from16 v3, p0

    .line 140
    invoke-virtual {v3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 141
    invoke-static {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 144
    :try_start_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "sticker_category"

    .line 148
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;

    .line 149
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string v10, "readable_id = ?"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v12

    move-object v5, v13

    move-object v7, v10

    move-object v3, v10

    move-object/from16 v10, v16

    move-object/from16 p1, v11

    move-object/from16 v11, v17

    .line 152
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "position"

    const-string v6, "icon_highlight_file_uri"

    const-string v7, "icon_highlight_md5"

    const-string v8, "icon_highlight_path"

    const-string v9, "icon_highlight_url"

    const-string v10, "icon_file_uri"

    const-string v11, "icon_md5"

    const-string v2, "icon_path"

    const-string v15, "icon_url"

    move-object/from16 v18, v14

    const-string v14, "category_name"

    move-object/from16 v19, v1

    const-string v1, "readable_id"

    if-eqz v4, :cond_8

    .line 153
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-lez v20, :cond_8

    .line 154
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, v4

    .line 156
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryNew()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "is_new"

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryNew()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v1, "is_valid"

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryValid()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 188
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {v12, v13, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOrAddToCategoryTable, update count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v3, v19

    :try_start_3
    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v20, v4

    :goto_3
    move-object v1, v0

    move-object/from16 v3, v19

    goto/16 :goto_8

    :cond_8
    move-object/from16 v20, v4

    move-object/from16 v3, v19

    move-object/from16 v4, p1

    move-object/from16 v19, v3

    .line 193
    :try_start_4
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getReadableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_time"

    .line 203
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getLastRequestTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_new"

    .line 205
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryNew()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_valid"

    .line 206
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItemWrapper;->isCategoryValid()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v17, 0x1

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v12, v13, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateOrAddToCategoryTable, insert rowId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", category: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v3, v19

    :try_start_5
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    if-eqz v20, :cond_b

    .line 211
    :try_start_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    move-object/from16 v14, v18

    const/4 v2, 0x0

    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v21

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v3, v19

    :goto_7
    move-object v1, v0

    :goto_8
    if-eqz v20, :cond_c

    .line 152
    :try_start_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_9
    throw v1

    :cond_d
    move-object v3, v1

    .line 214
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v12, :cond_e

    .line 220
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    const/4 v0, 0x1

    return v0

    :catch_6
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v3, v1

    .line 217
    :goto_a
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrAddToCategoryTable, update list, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v12, :cond_f

    .line 220
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    const/4 v1, 0x0

    return v1

    :goto_b
    if-eqz v12, :cond_10

    .line 220
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 223
    :cond_10
    throw v0

    :cond_11
    :goto_c
    move-object v3, v1

    const-string v0, "updateOrAddToCategoryTable, categoryList is empty!"

    .line 135
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.class public final Lcom/oplus/c/a/c/b;
.super Ljava/lang/Object;
.source "MediaStoreDataManager.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/oplus/c/a/c/b;

    invoke-direct {v0}, Lcom/oplus/c/a/c/b;-><init>()V

    sput-object v0, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Landroid/os/Bundle;
    .locals 2

    .line 251
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android:query-arg-sql-selection"

    const-string v1, "relative_path LIKE \'DCIM/Camera/Cshot/%\'"

    .line 252
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-group-by"

    const-string v1, "relative_path"

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-having"

    const-string v1, "_data =  MIN (_data)"

    .line 260
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/c/a/b/a;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p1, "MediaStoreDataHelper"

    const-string v0, "getItemListFromCursor count is 0"

    .line 178
    invoke-static {p1, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 181
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-direct {v0, p1}, Lcom/oplus/c/a/c/b;->b(Landroid/database/Cursor;)Lcom/oplus/c/a/b/a;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private final b(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 5

    .line 148
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 150
    sget-object v0, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-virtual {v0, p1}, Lcom/oplus/c/a/c/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "MediaStoreDataHelper"

    const-string v2, "relative_path = \'DCIM/Camera/\' AND media_type IN (1,3) "

    const-string v3, "android:query-arg-sql-selection"

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "selection = relative_path = \'DCIM/Camera/\' AND media_type IN (1,3) "

    .line 155
    invoke-static {v1, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR _id IN ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "android:query-arg-sql-sort-order"

    const-string v0, "datetaken DESC, _id DESC"

    .line 170
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android:query-arg-sql-limit"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final b(Landroid/database/Cursor;)Lcom/oplus/c/a/b/a;
    .locals 13

    const/4 p0, 0x0

    .line 194
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 196
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v3, 0x3

    .line 197
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v4, 0x4

    .line 198
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x5

    .line 199
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    .line 200
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v8, 0x7

    .line 201
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v8, 0x8

    .line 202
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-ne v4, v3, :cond_0

    move p0, v0

    .line 204
    :cond_0
    new-instance v12, Lcom/oplus/c/a/b/a;

    const-string v0, "id"

    .line 205
    invoke-static {v1, v0}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {v2, v0}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/c/a/c/d;->a:Lcom/oplus/c/a/c/d;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/c/a/c/d;->a(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    .line 207
    sget-object v0, Lcom/oplus/c/a/c/c$a;->a:Lcom/oplus/c/a/c/c$a;

    invoke-virtual {v0}, Lcom/oplus/c/a/c/c$a;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    move-object v0, v12

    move v4, v9

    move v7, p0

    .line 204
    invoke-direct/range {v0 .. v8}, Lcom/oplus/c/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJZZ)V

    .line 209
    invoke-virtual {v12, v9}, Lcom/oplus/c/a/b/a;->a(I)V

    .line 210
    invoke-virtual {v12, v10}, Lcom/oplus/c/a/b/a;->b(I)V

    .line 211
    invoke-virtual {v12, v11}, Lcom/oplus/c/a/b/a;->c(I)V

    const-string p0, "mimeType"

    .line 212
    invoke-static {p1, p0}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Lcom/oplus/c/a/b/a;->a(Ljava/lang/String;)V

    return-object v12
.end method

.method private final b(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z
    .locals 3

    .line 134
    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 135
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {v1, v2}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v1}, Lc/f/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 137
    sget-object v1, Lcom/oplus/c/a/c/d;->a:Lcom/oplus/c/a/c/d;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->j()Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/oplus/c/a/c/d;->a(Z)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x1

    .line 138
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "bucket_id = ? "

    .line 136
    invoke-virtual {p1, p2, p0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 135
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/c/a/b/a;
    .locals 7

    const-string p0, "MediaStoreDataHelper"

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaId"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "android:query-arg-sql-selection"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 112
    sget-object v3, Lcom/oplus/c/a/c/d;->a:Lcom/oplus/c/a/c/d;

    const/4 v4, 0x1

    invoke-static {v3, p2, v4, p2}, Lcom/oplus/c/a/c/d;->a(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v3

    .line 113
    sget-object v4, Lcom/oplus/c/a/c/c$b;->a:Lcom/oplus/c/a/c/c$b;

    invoke-virtual {v4}, Lcom/oplus/c/a/c/c$b;->a()[Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 114
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v3, p1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 116
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_0

    const-string v0, "getMediaItem count <= 0 "

    .line 117
    invoke-static {p0, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    invoke-static {p1, v2}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    .line 120
    :cond_0
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    sget-object v4, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    const-string v5, "this"

    invoke-static {v3, v5}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Lcom/oplus/c/a/c/b;->b(Landroid/database/Cursor;)Lcom/oplus/c/a/b/a;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMediaItem cost time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :try_start_4
    invoke-static {p1, v2}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 114
    :cond_1
    invoke-static {p1, v2}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-static {p1, v2}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p1

    .line 127
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "getMediaItem"

    invoke-static {p0, v0, p1}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p2
.end method

.method public final a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "MediaStoreDataHelper"

    const-string v1, "context"

    invoke-static {p1, v1}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 224
    sget-object v4, Lcom/oplus/c/a/c/d;->a:Lcom/oplus/c/a/c/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lcom/oplus/c/a/c/d;->b(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v4

    .line 225
    sget-object v7, Lcom/oplus/c/a/c/c$a;->a:Lcom/oplus/c/a/c/c$a;

    invoke-virtual {v7}, Lcom/oplus/c/a/c/c$a;->b()[Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-direct {p0}, Lcom/oplus/c/a/c/b;->a()Landroid/os/Bundle;

    move-result-object p0

    .line 223
    invoke-virtual {p1, v4, v7, p0, v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    .line 227
    check-cast v6, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object p1, p0

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_1

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_0

    const-string p1, "getCShotMediaIdList count < = 0"

    .line 230
    invoke-static {v0, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    invoke-static {p0, v6}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 233
    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 235
    sget-object v7, Lcom/oplus/c/a/c/c$a;->a:Lcom/oplus/c/a/c/c$a;

    invoke-virtual {v7}, Lcom/oplus/c/a/c/c$a;->a()Ljava/util/regex/Pattern;

    move-result-object v7

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 236
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    :cond_1
    :try_start_4
    invoke-static {p0, v6}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v6, p1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    invoke-static {p0, v6}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    .line 243
    check-cast p0, Ljava/lang/Throwable;

    const-string p1, "getCShotMediaIdList "

    invoke-static {v0, p1, p0}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getCShotMediaIdList array.size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final a(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/c/a/b/a;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oplus/c/a/c/b;->b(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/c/b;->a(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCameraMediaItemList size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaStoreDataHelper"

    invoke-static {p2, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/c/a/b/a;",
            ">;"
        }
    .end annotation

    const-string p0, "MediaStoreDataHelper"

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraMediaItemList bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 57
    sget-object v1, Lcom/oplus/c/a/c/d;->a:Lcom/oplus/c/a/c/d;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lcom/oplus/c/a/c/d;->a(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/oplus/c/a/c/c$b;->a:Lcom/oplus/c/a/c/c$b;

    invoke-virtual {v2}, Lcom/oplus/c/a/c/c$b;->a()[Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 60
    move-object p2, v0

    check-cast p2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    .line 61
    sget-object v2, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-direct {v2, v1}, Lcom/oplus/c/a/c/b;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/a/h;->b(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :cond_0
    :try_start_2
    invoke-static {p1, p2}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 60
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {p1, p2}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 66
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "getCameraMediaItemList"

    invoke-static {p0, p2, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z
    .locals 10

    const-string p0, "deleteMediaItem run: "

    const-string v0, "MediaStoreDataHelper"

    const-string v1, "context"

    invoke-static {p1, v1}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaItem"

    invoke-static {p2, v1}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    sget-object v3, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-direct {v3, p1, p2}, Lcom/oplus/c/a/c/b;->b(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result v1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/app/RecoverableSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 98
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 85
    :catch_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v1}, Lc/a/h;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {v3, p2}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v1, "MediaStore.createDeleteR\u2026rayListOf(mediaItem.uri))"

    invoke-static {p2, v1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    .line 87
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 86
    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 95
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v2
.end method

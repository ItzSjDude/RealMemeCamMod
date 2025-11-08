.class public Lcom/oplus/camera/q/a;
.super Ljava/lang/Object;
.source "DocumentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/q/a$a;
    }
.end annotation


# static fields
.field public static a:I = 0x65

.field private static b:Landroid/net/Uri;

.field private static c:Landroid/content/Context;

.field private static d:Lcom/oplus/camera/q/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 227
    invoke-static {p0, p1}, Lcom/oplus/camera/q/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 228
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    sget-object p1, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Lcom/oplus/camera/q/a;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/q/a$a;)V
    .locals 6

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/oplus/camera/q/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/oplus/camera/q/a;->c()Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    .line 119
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_3

    .line 126
    sput-object v1, Lcom/oplus/camera/q/a;->b:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 127
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 128
    sput-object p1, Lcom/oplus/camera/q/a;->d:Lcom/oplus/camera/q/a$a;

    .line 129
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget v0, Lcom/oplus/camera/q/a;->a:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 3

    .line 139
    sget-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 142
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/q/a;->b:Landroid/net/Uri;

    .line 143
    sget-object p0, Lcom/oplus/camera/q/a;->d:Lcom/oplus/camera/q/a$a;

    invoke-interface {p0}, Lcom/oplus/camera/q/a$a;->a()V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 93
    sget-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    sget-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 3

    .line 276
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0, p1, p2}, Lcom/oplus/camera/q/a;->b(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    invoke-static {v0, p0}, Lcom/oplus/camera/q/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/oplus/camera/q/a;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-eqz p1, :cond_0

    .line 211
    array-length v2, p1

    if-ge v2, v1, :cond_1

    .line 212
    :cond_0
    new-array p1, v1, [B

    .line 215
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v1, v2, :cond_3

    if-eqz p0, :cond_2

    .line 220
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    return-object v0

    :catch_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 208
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 135
    sget-object v0, Lcom/oplus/camera/q/a;->d:Lcom/oplus/camera/q/a$a;

    invoke-interface {v0}, Lcom/oplus/camera/q/a$a;->b()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 251
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 256
    :cond_2
    invoke-static {p1}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    invoke-static {p1}, Lcom/oplus/camera/q/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 262
    :cond_3
    invoke-static {p1}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    :try_start_0
    sget-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/oplus/camera/q/a;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v1

    .line 271
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 292
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_3

    .line 294
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 299
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 292
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 299
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    return v0

    :catch_2
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static c()Landroid/os/storage/StorageVolume;
    .locals 8

    .line 53
    sget-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 57
    new-array v2, v0, [Landroid/os/storage/StorageVolume;

    .line 60
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/os/UserHandleNative;->myUserId()I

    move-result v3

    invoke-static {v3, v0}, Lcom/oplus/compat/os/storage/StorageManagerNative;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 62
    invoke-virtual {v3}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_1

    return-object v1

    .line 69
    :cond_1
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 73
    :try_start_1
    invoke-static {v4}, Lcom/oplus/compat/os/storage/StorageVolumeNative;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lcom/oplus/compat/b/a/b; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 75
    invoke-virtual {v5}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    move-object v5, v1

    .line 78
    :goto_2
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {v6}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 174
    invoke-static {p0}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 175
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    sget-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/oplus/camera/q/a;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 306
    invoke-static {p0}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 310
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    invoke-static {v3}, Lcom/oplus/camera/q/a;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    :try_start_0
    sget-object v4, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Lcom/oplus/camera/q/a;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    add-int/2addr v0, v1

    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-static {v4, v3, p1, p0}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    return v2

    .line 327
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 336
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method

.method private static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 2

    .line 192
    sget-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 196
    :cond_0
    invoke-static {p0, v1}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 200
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/oplus/camera/q/a;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 239
    invoke-static {p0}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p0}, Lcom/oplus/camera/q/a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 243
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-static {p0}, Lcom/oplus/camera/q/a;->i(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 246
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static h(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 148
    invoke-static {}, Lcom/oplus/camera/q/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oplus/camera/q/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    .line 156
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    :goto_0
    sget-object v0, Lcom/oplus/camera/q/a;->b:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 6

    .line 345
    invoke-static {p0}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p0}, Lcom/oplus/camera/q/a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "/"

    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 349
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v2}, Lcom/oplus/camera/q/a;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    :try_start_0
    sget-object v3, Lcom/oplus/camera/q/a;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Lcom/oplus/camera/q/a;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "vnd.android.document/directory"

    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 353
    invoke-static {v3, v2, v4, p0}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p0

    .line 357
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    return v1
.end method

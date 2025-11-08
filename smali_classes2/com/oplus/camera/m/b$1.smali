.class Lcom/oplus/camera/m/b$1;
.super Ljava/lang/Object;
.source "ImageSaverThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m/b;->b(Lcom/oplus/camera/Storage$CameraPicture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Storage$CameraPicture;

.field final synthetic b:Lcom/oplus/camera/m/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m/b;Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/oplus/camera/m/b$1;->b:Lcom/oplus/camera/m/b;

    iput-object p2, p0, Lcom/oplus/camera/m/b$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 224
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/oplus/camera/m/b$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/m/b$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v2, "heic_10bits"

    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePicture, create thumbnail for 10bits start, picture.mUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/m/b$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageSaverThread"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/m/b$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    new-instance v1, Landroid/util/Size;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 237
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePicture, create thumbnail for 10bits IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const-string p0, "handlePicture, create thumbnail for 10bits end"

    .line 245
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 243
    :goto_1
    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.class Lcom/oplus/camera/CameraManager$59;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Lcom/oplus/camera/ui/control/a$c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 19209
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19248
    new-instance p1, Lcom/oplus/camera/CameraManager$59$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/CameraManager$59$1;-><init>(Lcom/oplus/camera/CameraManager$59;)V

    iput-object p1, p0, Lcom/oplus/camera/CameraManager$59;->b:Lcom/oplus/camera/ui/control/a$c;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/CameraManager$59;)V
    .locals 0

    .line 19209
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$59;->b()V

    return-void
.end method

.method private b()V
    .locals 9

    const-string v0, "CameraManager"

    const-string v1, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 19291
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "count(*)"

    .line 19293
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v4}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_2

    .line 19294
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19295
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-static {v4, v5}, Lcom/oplus/camera/CameraManager;->B(Lcom/oplus/camera/CameraManager;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 19293
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 19297
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 19298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realUpdateLockAlbumHasPicture, Failed to query LOCK_SCREEN_URI uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19300
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->B(Lcom/oplus/camera/CameraManager;Z)Z

    .line 19303
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realUpdateLockAlbumHasPicture, mbLockAlbumHasPicture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dA(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 1

    const-string p0, "CameraManager"

    const-string v0, "notifyGalleryPreDecode"

    .line 19212
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 19214
    iget-object p0, p1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-eqz p0, :cond_0

    .line 19215
    invoke-static {}, Lcom/oplus/camera/m/a;->a()Lcom/oplus/camera/m/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/m/a;->a(Lcom/oplus/camera/Storage$CameraPicture;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 5

    .line 19221
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dz(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const-string v1, "CameraManager"

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 19222
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    .line 19223
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    .line 19224
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->dA(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 19226
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-nez v2, :cond_3

    .line 19227
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onThumbNailClick, imageSaveListIsEmpty: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/m/b;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", getDisplayOnLock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    .line 19228
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLockAlbumHasPicture: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUriValid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19227
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19232
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59;->b:Lcom/oplus/camera/ui/control/a$c;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/a$c;)V

    return-void

    .line 19236
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraTest Camera View Picture Start, onThumbNailClick, mCurrentUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19238
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19239
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->C()V

    .line 19242
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)V

    goto :goto_1

    .line 19244
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbNailClick, cameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", thumbnail: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 19272
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    .line 19273
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    .line 19274
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    .line 19276
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 19279
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/CameraManager$59$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/CameraManager$59$2;-><init>(Lcom/oplus/camera/CameraManager$59;)V

    const-string p0, "query lock album"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_1

    .line 19286
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$59;->b()V

    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 19259
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19260
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dB(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dA(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "CameraManager"

    const-string v0, "needGetLastThumbNail, LockAblum list is null"

    .line 19261
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

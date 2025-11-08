.class Lcom/oplus/camera/CameraManager$57;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;


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


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 19128
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateLastThumbnailView(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0

    return-void
.end method

.method public updateLastThumbnailView(Z)V
    .locals 0

    return-void
.end method

.method public updateQuickBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 19175
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19176
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updateThumbnail(Lcom/oplus/camera/ui/control/e;Lcom/oplus/camera/aps/service/ThumbnailItem;Landroid/content/ContentResolver;)V
    .locals 2

    .line 19131
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-boolean p3, p2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbWatchRequest:Z

    if-eqz p3, :cond_0

    .line 19132
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/oplus/camera/watch/b$b;->a(ILandroid/graphics/Bitmap;)V

    .line 19135
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/capmode/ModeManager;->aE()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 19136
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cp(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/a/b;

    move-result-object p3

    iput-object p3, p2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mProductProcessor:Lcom/oplus/camera/a/b;

    .line 19137
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->dy(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/e$b;

    move-result-object p3

    iput-object p3, p2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUpdateLastThumbTask:Lcom/oplus/camera/ui/control/e$b;

    .line 19138
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/oplus/camera/aps/service/ApsService;->addThumbnailInfo(Lcom/oplus/camera/aps/service/ThumbnailItem;)V

    const-string p3, "com.oplus.only.high.picture.size.heif.in.aps"

    .line 19140
    invoke-static {p3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mPictureFormat:Ljava/lang/String;

    const-string v0, "heic_8bits"

    .line 19141
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mPictureFormat:Ljava/lang/String;

    const-string v0, "heic_10bits"

    .line 19142
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    .line 19143
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/capmode/ModeManager;->bN()Z

    move-result p3

    if-nez p3, :cond_2

    .line 19144
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p3

    iget-wide v0, p2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    invoke-interface {p3, v0, v1}, Lcom/oplus/camera/e/d;->d(J)V

    .line 19148
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 19149
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/aps/service/ThumbnailItem;)V

    .line 19152
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 19153
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p2

    new-instance p3, Lcom/oplus/camera/CameraManager$57$1;

    invoke-direct {p3, p0, p1}, Lcom/oplus/camera/CameraManager$57$1;-><init>(Lcom/oplus/camera/CameraManager$57;Lcom/oplus/camera/ui/control/e;)V

    invoke-virtual {p2, p3}, Lcom/oplus/camera/w/b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 19164
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$57;->a:Lcom/oplus/camera/CameraManager;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/oplus/camera/CameraManager;->a(Z)V

    :goto_0
    if-eqz p1, :cond_5

    .line 19168
    invoke-static {}, Lcom/oplus/camera/ui/control/g;->a()V

    .line 19169
    invoke-static {p1}, Lcom/oplus/camera/ui/control/g;->a(Lcom/oplus/camera/ui/control/e;)V

    :cond_5
    return-void
.end method

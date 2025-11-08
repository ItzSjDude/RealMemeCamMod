.class Lcom/oplus/camera/capmode/t$12;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Lcom/oplus/camera/sticker/ui/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "afterEnterAnimator"

    .line 217
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(ZZ)V

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const-string v2, "sticker_mode_click_sticker_menu"

    const-string v3, "1"

    .line 221
    invoke-static {v2, v3}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "menuClick"

    .line 220
    invoke-static {v0, v3, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, v1}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 289
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    const-string v0, "sticker_menu_catergory_fling"

    invoke-static {p0, v0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "beforeEnterAnimator"

    .line 200
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->m(Z)V

    .line 208
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/sticker/data/StickerItem;I)Z
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Landroid/view/View;Lcom/oplus/camera/sticker/data/StickerItem;I)Z

    move-result p0

    return p0
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;I)Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;I)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(ZZ)V

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    const-string v1, "sticker_menu_catergory_click"

    invoke-static {v0, v1, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(ZZ)V

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 260
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 264
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p1, p1, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 265
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aB()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/t;->getIsCapturingState()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;Z)V

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aB()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->V()V

    return-void
.end method

.method public f()Lcom/oplus/camera/sticker/data/StickerItem;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->a()Z

    return-void
.end method

.method public h()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v1, v1, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 322
    iget-object v1, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v1, v1, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v1

    .line 323
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/q;->a(Ljava/lang/String;)Z

    move-result v2

    .line 327
    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v3, v3, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 329
    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v3, v3, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/a/t;->d()V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v3, v3, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/a/t;->c()V

    :cond_2
    :goto_0
    xor-int/lit8 v2, v2, 0x1

    .line 335
    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Ljava/lang/String;Z)V

    .line 336
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/ui/h;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "StickerMode"

    const-string v0, "onMusicButtonClick, non selected stickerItem!"

    .line 338
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public i()Z
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 350
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 351
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 352
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->B()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbInCapturing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    .line 354
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 355
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canItemClick, !mCameraInterface.isDoubleFinger: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v3, v3, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mCameraInterface.getCaptureModeChangeState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v3, v3, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 356
    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mCameraUIInterface.isAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object v3, v3, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 357
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->B()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoRecordStopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    .line 358
    invoke-virtual {v3}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mbInCapturing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v3, v3, Lcom/oplus/camera/capmode/t;->mbInCapturing:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mCameraInterface.getSwitchingCameraState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t$12;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 359
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StickerMode"

    .line 355
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

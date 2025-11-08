.class Lcom/oplus/camera/CameraManager$y;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "y"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12295
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 12295
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$y;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "VideoSizeChangeAnimationListenerImpl, onAnimationEnd"

    .line 12336
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12338
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12339
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/z;->b(Z)V

    .line 12342
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12343
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->c(Z)V

    .line 12344
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 12345
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12346
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12347
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->h(Z)V

    .line 12348
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->W(Z)V

    .line 12349
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 12351
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12352
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    :cond_1
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 4

    .line 12298
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12299
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v0

    .line 12301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSizeChangeAnimationListenerImpl, onAnimationStart, currSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12302
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toSize: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    .line 12301
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12304
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12305
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "commonVideo"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    .line 12306
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, "slowVideo"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    .line 12307
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fastVideo"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    .line 12308
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, "movie"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    .line 12309
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tiltShiftFastVideo"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12310
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;Z)Z

    .line 12312
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/camera/e/d;->c()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 12313
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->l(I)Z

    goto :goto_0

    .line 12315
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ar()V

    .line 12316
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/CameraManager;->n(I)V

    .line 12318
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12319
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bM(Lcom/oplus/camera/CameraManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "VideoSizeChangeAnimationListenerImpl, onAnimationMiddle"

    .line 12328
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12330
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 12331
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$y;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$y;->b()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

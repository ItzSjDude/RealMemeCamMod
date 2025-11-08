.class Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;
.super Landroid/view/animation/Animation;
.source "CameraMenuOption.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutTranslationAnimation"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V
    .locals 1

    .line 1378
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 1374
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->b:I

    .line 1375
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    .line 1376
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->d:Z

    .line 1379
    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Z)Z

    .line 1380
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1389
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 1393
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1384
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->b:I

    .line 1385
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1398
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->d:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1400
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1401
    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->b:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p1, v0

    .line 1402
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x1

    .line 1408
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->d:Z

    .line 1410
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    .line 1414
    :cond_0
    invoke-super {p0}, Landroid/view/animation/Animation;->cancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1419
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Z)Z

    .line 1420
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->d:Z

    .line 1422
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1423
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 1424
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->c:I

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    .line 1427
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 1428
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1429
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1436
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1442
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 1445
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->d:Z

    return-void
.end method

.class Lcom/oplus/camera/ui/preview/n$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorRotateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/n;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/n;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 108
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getTranslationX()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    .line 110
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getContainerWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v3, p1, v0

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    .line 112
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getContainerHeight()F

    move-result v0

    div-float/2addr v0, v1

    add-float v4, p1, v0

    .line 114
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object v2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/n;->b(Lcom/oplus/camera/ui/preview/n;)I

    move-result v5

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/n;->c(Lcom/oplus/camera/ui/preview/n;)I

    move-result v6

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n$1;->a:Lcom/oplus/camera/ui/preview/n;

    .line 115
    invoke-static {p0}, Lcom/oplus/camera/ui/preview/n;->d(Lcom/oplus/camera/ui/preview/n;)I

    move-result v7

    .line 114
    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(FFIII)V

    :cond_0
    return-void
.end method

.class Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;
.super Lcom/oplus/camera/b/a;
.source "InertiaZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070688

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setLineStrokeWidth(I)V

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setHighLineStrokeWidth(I)V

    .line 330
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07068c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbStrokeWidth(I)V

    .line 333
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070687

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setLineStrokeWidth(I)V

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setHighLineStrokeWidth(I)V

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbStrokeWidth(I)V

    .line 322
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    return-void
.end method

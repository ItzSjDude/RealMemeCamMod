.class Lcom/oplus/camera/filmvideomode/q$1;
.super Lcom/oplus/camera/b/a;
.source "FilmUIControlV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/q;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/filmvideomode/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/q;Landroid/view/View;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q$1;->b:Lcom/oplus/camera/filmvideomode/q;

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/q$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$1;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$1;->b:Lcom/oplus/camera/filmvideomode/q;

    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q$1;->b:Lcom/oplus/camera/filmvideomode/q;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 192
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$1;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$1;->b:Lcom/oplus/camera/filmvideomode/q;

    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q$1;->b:Lcom/oplus/camera/filmvideomode/q;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

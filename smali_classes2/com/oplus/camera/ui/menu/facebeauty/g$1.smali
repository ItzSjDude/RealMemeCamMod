.class Lcom/oplus/camera/ui/menu/facebeauty/g$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/facebeauty/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/facebeauty/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/g;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->e(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;Lcom/oplus/camera/ui/menu/facebeauty/a;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(Lcom/oplus/camera/ui/menu/facebeauty/g;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->y()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->q()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->y()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->q()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(Lcom/oplus/camera/ui/menu/facebeauty/g;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 99
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->s()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->q()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->s()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->q()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

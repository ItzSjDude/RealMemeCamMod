.class Lcom/oplus/camera/photo3d/ui/c$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/c;->b(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/c;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationY(F)V

    .line 169
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 170
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationY(F)V

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 161
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c$3;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

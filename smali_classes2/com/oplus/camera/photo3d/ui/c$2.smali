.class Lcom/oplus/camera/photo3d/ui/c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/c;->a(ZZ)V
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

    .line 105
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$2;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$2;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$2;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationY(F)V

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$2;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c$2;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/c;->b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

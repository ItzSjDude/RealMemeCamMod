.class Lcom/oplus/camera/ui/d$40;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->h(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 7986
    iput-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8000
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8001
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    .line 8002
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setVisibility(I)V

    .line 8003
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setTranslationY(F)V

    .line 8004
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setTranslationX(F)V

    .line 8005
    iget-object p0, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 7989
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7990
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    .line 7991
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setTranslationY(F)V

    .line 7992
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setTranslationX(F)V

    .line 7993
    iget-object p1, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setAlpha(F)V

    .line 7994
    iget-object p0, p0, Lcom/oplus/camera/ui/d$40;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ad(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

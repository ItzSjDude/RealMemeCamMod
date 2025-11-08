.class Lcom/oplus/camera/ui/d$63;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->o(ZZ)V
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

    .line 13207
    iput-object p1, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 13218
    iget-object p1, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13219
    iget-object p0, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 13225
    iget-object p1, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13226
    iget-object p0, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 13210
    iget-object p1, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13211
    iget-object p1, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    .line 13212
    iget-object p0, p0, Lcom/oplus/camera/ui/d$63;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

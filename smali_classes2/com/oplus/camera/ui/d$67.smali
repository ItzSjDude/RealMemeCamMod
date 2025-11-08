.class Lcom/oplus/camera/ui/d$67;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->r(ZZ)V
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

    .line 13356
    iput-object p1, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 13367
    iget-object p1, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13368
    iget-object p1, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    .line 13369
    iget-object p0, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 13359
    iget-object p1, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13360
    iget-object p1, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setEnabled(Z)V

    .line 13361
    iget-object p0, p0, Lcom/oplus/camera/ui/d$67;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->am(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

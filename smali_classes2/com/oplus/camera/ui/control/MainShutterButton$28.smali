.class Lcom/oplus/camera/ui/control/MainShutterButton$28;
.super Ljava/lang/Object;
.source "MainShutterButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/MainShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 2968
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$28;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2975
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$28;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->s(Lcom/oplus/camera/ui/control/MainShutterButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    const/16 p1, 0x1c

    .line 2976
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$28;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;Z)Z

    const/16 v0, 0x19

    .line 2978
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$28;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2979
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$28;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->i(Lcom/oplus/camera/ui/control/MainShutterButton;I)I

    .line 2980
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0, p1}, Lcom/oplus/camera/ui/control/b;-><init>(I)V

    .line 2981
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$28;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

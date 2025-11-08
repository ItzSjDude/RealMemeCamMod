.class Lcom/oplus/camera/ui/control/MainShutterButton$30;
.super Ljava/lang/Object;
.source "MainShutterButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->M()V
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

    .line 3014
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$30;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3023
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$30;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonType(I)V

    .line 3024
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$30;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3017
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$30;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonType(I)V

    .line 3018
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$30;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

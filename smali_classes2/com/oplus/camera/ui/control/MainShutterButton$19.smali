.class Lcom/oplus/camera/ui/control/MainShutterButton$19;
.super Ljava/lang/Object;
.source "MainShutterButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->I()V
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

    .line 2799
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$19;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2807
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$19;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Lcom/oplus/camera/ui/control/MainShutterButton;I)V

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

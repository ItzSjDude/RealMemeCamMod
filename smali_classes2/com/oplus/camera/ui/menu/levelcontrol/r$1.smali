.class Lcom/oplus/camera/ui/menu/levelcontrol/r$1;
.super Ljava/lang/Object;
.source "SwitchFilterMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/r;->a(IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/r;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/r$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "SwitchFilterMenu"

    const-string p1, "switchFilterAnimator, onAnimationCancel"

    .line 142
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "SwitchFilterMenu"

    const-string v0, "switchFilterAnimator, onAnimationEnd"

    .line 132
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/r$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/r;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/r;->a(Lcom/oplus/camera/ui/menu/levelcontrol/r;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/r$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/r;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/r;->a(Lcom/oplus/camera/ui/menu/levelcontrol/r;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/r$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/r;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/r;->a(Lcom/oplus/camera/ui/menu/levelcontrol/r;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "SwitchFilterMenu"

    const-string p1, "switchFilterAnimator, onAnimationRepeat"

    .line 147
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "SwitchFilterMenu"

    const-string p1, "switchFilterAnimator, onAnimationStart"

    .line 127
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

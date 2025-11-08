.class Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;
.super Ljava/lang/Object;
.source "CameraSettingMenuPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1579
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;->a:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p0, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

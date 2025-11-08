.class Lcom/oplus/camera/ui/SwitchCameraBar$4;
.super Ljava/lang/Object;
.source "SwitchCameraBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/SwitchCameraBar;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/SwitchCameraBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$4;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

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

    .line 710
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$4;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->l(Lcom/oplus/camera/ui/SwitchCameraBar;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 703
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$4;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->c(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->c(Lcom/oplus/camera/ui/SwitchCameraBar;I)I

    .line 704
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$4;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->h(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->d(Lcom/oplus/camera/ui/SwitchCameraBar;I)I

    .line 705
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$4;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->i(Lcom/oplus/camera/ui/SwitchCameraBar;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$4;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->c(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/oplus/camera/ui/SwitchCameraBar$1;
.super Ljava/lang/Object;
.source "SwitchCameraBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/SwitchCameraBar;->a()V
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

    .line 193
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Lcom/oplus/camera/ui/SwitchCameraBar;)Lcom/oplus/camera/ui/SwitchCameraBar$a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Lcom/oplus/camera/ui/SwitchCameraBar;)Lcom/oplus/camera/ui/SwitchCameraBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/SwitchCameraBar$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Lcom/oplus/camera/ui/SwitchCameraBar;F)I

    move-result p1

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->b(Lcom/oplus/camera/ui/SwitchCameraBar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Lcom/oplus/camera/ui/SwitchCameraBar;I)I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v2}, Lcom/oplus/camera/ui/SwitchCameraBar;->c(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 213
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$1;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->b(Lcom/oplus/camera/ui/SwitchCameraBar;I)V

    :cond_1
    :goto_0
    return v1
.end method

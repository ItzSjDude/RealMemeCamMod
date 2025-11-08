.class Lcom/oplus/camera/ui/menu/setting/j$2;
.super Ljava/lang/Object;
.source "CameraMenuOptionSecondLevel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/j;->a(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/j;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j$2;->a:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j$2;->a:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j$2;->a:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j$2;->a:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

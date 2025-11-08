.class Lcom/oplus/camera/ui/menu/setting/h$3;
.super Ljava/lang/Object;
.source "CameraMenuOptionFirstLevel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/h;->c(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/h;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->b:Lcom/oplus/camera/ui/menu/setting/h;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->b:Lcom/oplus/camera/ui/menu/setting/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    .line 336
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->q()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->b:Lcom/oplus/camera/ui/menu/setting/h;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/h;->a(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/menu/i;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/i;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h$3;->b:Lcom/oplus/camera/ui/menu/setting/h;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    return-void
.end method

.class Lcom/oplus/camera/ui/b$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/oplus/camera/ui/b$9;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 545
    iget-object p1, p0, Lcom/oplus/camera/ui/b$9;->a:Lcom/oplus/camera/ui/b;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 546
    iget-object p0, p0, Lcom/oplus/camera/ui/b$9;->a:Lcom/oplus/camera/ui/b;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/oplus/camera/ui/b;->F:F

    .line 547
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->u:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/oplus/camera/ui/b$9;->a:Lcom/oplus/camera/ui/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/b;->aj:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

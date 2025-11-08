.class Lcom/oplus/camera/ui/b$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->j()V
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

    .line 655
    iput-object p1, p0, Lcom/oplus/camera/ui/b$18;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 658
    iget-object p1, p0, Lcom/oplus/camera/ui/b$18;->a:Lcom/oplus/camera/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 659
    iget-object p0, p0, Lcom/oplus/camera/ui/b$18;->a:Lcom/oplus/camera/ui/b;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/oplus/camera/ui/b;->G:F

    .line 660
    iput p1, p0, Lcom/oplus/camera/ui/b;->H:F

    .line 661
    iput p1, p0, Lcom/oplus/camera/ui/b;->I:F

    return-void
.end method

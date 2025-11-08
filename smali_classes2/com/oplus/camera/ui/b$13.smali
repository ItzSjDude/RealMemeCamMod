.class Lcom/oplus/camera/ui/b$13;
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

    .line 576
    iput-object p1, p0, Lcom/oplus/camera/ui/b$13;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 579
    iget-object p1, p0, Lcom/oplus/camera/ui/b$13;->a:Lcom/oplus/camera/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 580
    iget-object p0, p0, Lcom/oplus/camera/ui/b$13;->a:Lcom/oplus/camera/ui/b;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/camera/ui/b;->F:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 581
    iput p1, p0, Lcom/oplus/camera/ui/b;->N:F

    .line 582
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->u:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

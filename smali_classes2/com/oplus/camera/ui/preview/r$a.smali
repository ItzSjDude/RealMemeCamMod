.class Lcom/oplus/camera/ui/preview/r$a;
.super Landroid/view/animation/Animation;
.source "GuideLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/r;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/r;)V
    .locals 2

    .line 342
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r$a;->a:Lcom/oplus/camera/ui/preview/r;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$a;->b:F

    .line 340
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$a;->c:F

    const-wide/16 v0, 0x136

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/preview/r$a;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$a;->b:F

    .line 355
    iput p2, p0, Lcom/oplus/camera/ui/preview/r$a;->c:F

    .line 356
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/r$a;->start()V

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 348
    iget p2, p0, Lcom/oplus/camera/ui/preview/r$a;->c:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/r$a;->b:F

    sub-float/2addr p2, v0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    .line 349
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r$a;->a:Lcom/oplus/camera/ui/preview/r;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/r;->a(Lcom/oplus/camera/ui/preview/r;I)I

    .line 350
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$a;->a:Lcom/oplus/camera/ui/preview/r;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/r;->invalidate()V

    return-void
.end method

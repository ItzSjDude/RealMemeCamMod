.class public Lcom/oplus/camera/ui/preview/g$d;
.super Landroid/view/animation/AccelerateInterpolator;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 3694
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$d;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 3697
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$d;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->Q(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3698
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$d;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->R(Lcom/oplus/camera/ui/preview/g;)V

    :cond_0
    add-float/2addr p1, v0

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    .line 3701
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    double-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0
.end method

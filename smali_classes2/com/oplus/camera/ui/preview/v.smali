.class public Lcom/oplus/camera/ui/preview/v;
.super Ljava/lang/Object;
.source "PreviewAnimManager.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/view/animation/Interpolator;

.field private e:J

.field private f:J

.field private g:J

.field private final h:F

.field private final i:F

.field private j:F


# direct methods
.method public constructor <init>(FF)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/v;->a:Z

    .line 14
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/v;->b:Z

    .line 15
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/v;->c:Z

    .line 16
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/v;->d:Landroid/view/animation/Interpolator;

    const-wide v2, 0x7fffffffffffffffL

    .line 17
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->e:J

    const-wide/16 v2, 0xb4

    .line 18
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->f:J

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->g:J

    .line 22
    iput v1, p0, Lcom/oplus/camera/ui/preview/v;->j:F

    .line 25
    iput p1, p0, Lcom/oplus/camera/ui/preview/v;->h:F

    .line 26
    iput p2, p0, Lcom/oplus/camera/ui/preview/v;->i:F

    .line 27
    iget p1, p0, Lcom/oplus/camera/ui/preview/v;->h:F

    iput p1, p0, Lcom/oplus/camera/ui/preview/v;->j:F

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/v;->a:Z

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNeedAnim, needAnim: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewAnimManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 6

    .line 37
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/v;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/v;->c:Z

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->e:J

    .line 43
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/v;->c:Z

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/v;->b:Z

    if-eqz v0, :cond_3

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->g:J

    .line 48
    iget-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->g:J

    iget-wide v4, p0, Lcom/oplus/camera/ui/preview/v;->e:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/ui/preview/v;->f:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/v;->b:Z

    .line 52
    iget v0, p0, Lcom/oplus/camera/ui/preview/v;->i:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/v;->j:F

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/v;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 55
    iget v1, p0, Lcom/oplus/camera/ui/preview/v;->h:F

    .line 56
    iget v2, p0, Lcom/oplus/camera/ui/preview/v;->i:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/preview/v;->j:F

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public b()F
    .locals 0

    .line 66
    iget p0, p0, Lcom/oplus/camera/ui/preview/v;->j:F

    return p0
.end method

.class Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;
.super Ljava/lang/Object;
.source "BlurMenuSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:J

.field private k:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)V
    .locals 2

    .line 847
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 833
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->b:I

    const/16 v0, 0x10

    .line 834
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->c:I

    const v0, 0x3e19999a    # 0.15f

    .line 840
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->h:F

    .line 845
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$a;

    invoke-direct {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->k:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 848
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->i:Z

    .line 850
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 854
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 855
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->b:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->d:F

    .line 856
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->e:F

    int-to-float p1, v0

    .line 857
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->e:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->h:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->f:F

    .line 858
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->j:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 862
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->i:Z

    .line 864
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->a(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 871
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 876
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->k:Landroid/view/animation/Interpolator;

    int-to-float v2, v0

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->d:F

    mul-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 877
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->g:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->f:F

    mul-float/2addr v2, v3

    .line 878
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->g:F

    .line 880
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->b:I

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 881
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)V

    .line 882
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->f(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 884
    :cond_1
    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->g:F

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V

    const/4 v0, 0x1

    .line 886
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->i:Z

    .line 888
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->i:Z

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->a(Z)V

    .line 893
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_3

    .line 894
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->h(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V

    :cond_3
    return-void
.end method

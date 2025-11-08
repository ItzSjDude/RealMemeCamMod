.class public Lcom/oplus/camera/ui/preview/a/a/a;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "DoubleExposureTexturePreview.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/aa$a;


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private A:Z

.field private B:[F

.field private C:Landroid/renderscript/Matrix4f;

.field private D:Lcom/oplus/camera/doubleexposure/b;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Landroid/os/ConditionVariable;

.field private final I:Ljava/lang/Object;

.field private J:Lcom/oplus/camera/doubleexposure/g$a;

.field private K:Lcom/oplus/camera/doubleexposure/a;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:[F

.field private Q:J

.field private R:J

.field private S:I

.field private T:Lcom/oplus/camera/ui/preview/a/a/d;

.field private U:Lcom/oplus/camera/ui/preview/a/a/b;

.field private V:Z

.field private W:Z

.field private X:Ljava/lang/Runnable;

.field private b:Landroid/content/Context;

.field private c:Lcom/oplus/camera/ui/preview/a/aa;

.field private d:I

.field private k:I

.field private l:Lcom/oplus/camera/gl/s;

.field private m:Lcom/oplus/camera/gl/s;

.field private n:Lcom/oplus/camera/gl/s;

.field private o:Lcom/oplus/camera/gl/s;

.field private p:Lcom/oplus/camera/gl/s;

.field private q:Lcom/oplus/camera/gl/s;

.field private r:Lcom/oplus/camera/gl/s;

.field private s:Lcom/oplus/camera/gl/g;

.field private t:Z

.field private u:Lcom/oplus/camera/doubleexposure/d;

.field private v:Landroid/os/HandlerThread;

.field private w:Landroid/os/Handler;

.field private x:Lcom/oplus/camera/ui/preview/a/a/c;

.field private y:Landroid/graphics/SurfaceTexture;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 116
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->b:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->c:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->d:I

    .line 48
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->k:I

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->q:Lcom/oplus/camera/gl/s;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->r:Lcom/oplus/camera/gl/s;

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    .line 58
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->t:Z

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->y:Landroid/graphics/SurfaceTexture;

    .line 65
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    .line 66
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->A:Z

    const/16 v2, 0x10

    .line 67
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->B:[F

    .line 68
    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->C:Landroid/renderscript/Matrix4f;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    .line 71
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->E:Z

    .line 72
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->F:Z

    .line 73
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->G:I

    .line 74
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->H:Landroid/os/ConditionVariable;

    .line 75
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->J:Lcom/oplus/camera/doubleexposure/g$a;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->K:Lcom/oplus/camera/doubleexposure/a;

    .line 78
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    .line 79
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->M:Z

    .line 80
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->N:Z

    .line 81
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->P:[F

    const-wide/16 v2, 0x0

    .line 83
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->Q:J

    .line 84
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->R:J

    .line 85
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->S:I

    .line 86
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->U:Lcom/oplus/camera/ui/preview/a/a/b;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->V:Z

    .line 89
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->W:Z

    .line 91
    new-instance v0, Lcom/oplus/camera/ui/preview/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/a/a/a$1;-><init>(Lcom/oplus/camera/ui/preview/a/a/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->X:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method private A()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/d;->b()V

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->A:Z

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->J:Lcom/oplus/camera/doubleexposure/g$a;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Lcom/oplus/camera/doubleexposure/g$a;->onVideoClipDone()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->K:Lcom/oplus/camera/doubleexposure/a;

    if-eqz v0, :cond_1

    .line 301
    invoke-interface {v0}, Lcom/oplus/camera/doubleexposure/a;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->J:Lcom/oplus/camera/doubleexposure/g$a;

    .line 306
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->K:Lcom/oplus/camera/doubleexposure/a;

    :cond_2
    return-void
.end method

.method private C()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->f()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->f()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    .line 449
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->g()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->g()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 451
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->f()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->f()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    .line 456
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->g()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->g()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 458
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    :cond_3
    return-void
.end method

.method private D()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    const v1, 0x7f1005f1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/y$b;->a(I)V

    .line 551
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    const v0, 0x7f100130

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/y$b;->a(I)V

    return-void
.end method

.method private E()Z
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/a/c;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private F()Z
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/a/c;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private G()V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    :cond_0
    return-void
.end method

.method private H()V
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "DoubleExposureTexturePreview"

    const-string v2, "stopDecode"

    .line 716
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/a/c;->g()V

    .line 720
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/a/c;->k()V

    .line 725
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    .line 727
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    if-eqz v2, :cond_1

    .line 729
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->o()V

    .line 730
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    .line 732
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->E:Z

    .line 736
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->F:Z

    .line 737
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    const/4 v0, 0x1

    .line 738
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    return-void
.end method

.method private I()Lcom/oplus/camera/ui/preview/a/a/d;
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lcom/oplus/camera/ui/preview/a/a/d;

    invoke-direct {v0}, Lcom/oplus/camera/ui/preview/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/a/d;->a(I)V

    .line 778
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/a/d;->b(I)V

    .line 779
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/a/d;->c(I)V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/a/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/a/d;->a(I)V

    .line 782
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/a/d;->b(I)V

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/a/d;->c(I)V

    .line 786
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->T:Lcom/oplus/camera/ui/preview/a/a/d;

    return-object p0
.end method

.method private a(IZ)I
    .locals 3

    const/4 p0, 0x0

    const/16 v0, 0x10e

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/doubleexposure/d;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/a/a;Lcom/oplus/camera/doubleexposure/d;)Lcom/oplus/camera/doubleexposure/d;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    return-object p1
.end method

.method private a(Lcom/oplus/camera/doubleexposure/b;)V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->U:Lcom/oplus/camera/ui/preview/a/a/b;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Lcom/oplus/camera/ui/preview/a/a/a$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/a/a/a$3;-><init>(Lcom/oplus/camera/ui/preview/a/a/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->U:Lcom/oplus/camera/ui/preview/a/a/b;

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-nez v0, :cond_1

    .line 760
    new-instance v0, Lcom/oplus/camera/gl/g;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/oplus/camera/gl/g;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    .line 761
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->y:Landroid/graphics/SurfaceTexture;

    .line 762
    new-instance v0, Lcom/oplus/camera/ui/preview/a/a/c;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->y:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1, v1}, Lcom/oplus/camera/ui/preview/a/a/c;-><init>(Lcom/oplus/camera/doubleexposure/b;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    .line 763
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/a/a/c;->a(Ljava/lang/Object;)V

    .line 764
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->H:Landroid/os/ConditionVariable;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/a/a/c;->a(Landroid/os/ConditionVariable;)V

    .line 765
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->U:Lcom/oplus/camera/ui/preview/a/a/b;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/a/a/c;->a(Lcom/oplus/camera/ui/preview/a/a/b;)V

    .line 766
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/a/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a/c;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/gl/g;->a(II)V

    .line 767
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;III)V
    .locals 2

    .line 604
    div-int/lit8 p2, p2, 0x2

    .line 605
    div-int/lit8 p3, p3, 0x2

    int-to-float p0, p2

    int-to-float v0, p3

    .line 606
    invoke-interface {p1, p0, v0}, Lcom/oplus/camera/gl/h;->a(FF)V

    int-to-float p0, p4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 607
    invoke-interface {p1, p0, v0, v0, v1}, Lcom/oplus/camera/gl/h;->a(FFFF)V

    .line 609
    rem-int/lit16 p4, p4, 0xb4

    if-eqz p4, :cond_0

    neg-int p0, p3

    int-to-float p0, p0

    neg-int p2, p2

    int-to-float p2, p2

    .line 610
    invoke-interface {p1, p0, p2}, Lcom/oplus/camera/gl/h;->a(FF)V

    goto :goto_0

    :cond_0
    neg-int p0, p2

    int-to-float p0, p0

    neg-int p2, p3

    int-to-float p2, p2

    .line 612
    invoke-interface {p1, p0, p2}, Lcom/oplus/camera/gl/h;->a(FF)V

    :goto_0
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v5

    .line 568
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v6

    .line 569
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    const/4 p0, 0x0

    int-to-float p3, v6

    .line 570
    invoke-interface {p1, p0, p3}, Lcom/oplus/camera/gl/h;->a(FF)V

    const/high16 p0, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 571
    invoke-interface {p1, p3, p0, p3}, Lcom/oplus/camera/gl/h;->a(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    .line 572
    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 573
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FLcom/oplus/camera/ui/preview/a/a/d;)Z
    .locals 8

    .line 578
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v6

    .line 579
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    .line 580
    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->c()I

    move-result v0

    .line 581
    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->a()I

    move-result v1

    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->b()I

    move-result v2

    const/4 v7, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 582
    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->c()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->a()I

    move-result v1

    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p5}, Lcom/oplus/camera/ui/preview/a/a/d;->c()I

    move-result p5

    rem-int/lit16 p5, p5, 0xb4

    if-eqz p5, :cond_2

    :cond_1
    move p5, v7

    goto :goto_0

    :cond_2
    move p5, v3

    :goto_0
    if-eqz p5, :cond_4

    .line 586
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    .line 588
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    const/16 p5, 0x5a

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/oplus/camera/doubleexposure/b;->g()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v0, p5, :cond_3

    const/16 p5, 0x10e

    .line 594
    :cond_3
    invoke-direct {p0, p1, v6, v5, p5}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/gl/h;III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    .line 595
    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 596
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return v7

    :cond_4
    return v3
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/a/a;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->W:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->c:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/ui/preview/a/a/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->M:Z

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/a/a/a;)Landroid/os/ConditionVariable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->H:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private e(I)Z
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/a/a/a;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    return-object p0
.end method

.method private f(I)V
    .locals 13

    .line 522
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->N:Z

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const-wide/16 v3, 0x7d0

    if-ne p1, v2, :cond_2

    .line 529
    iget-wide v5, p0, Lcom/oplus/camera/ui/preview/a/a/a;->Q:J

    sub-long v5, v0, v5

    cmp-long v2, v5, v3

    if-gtz v2, :cond_1

    .line 530
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/a/a;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    const v4, 0x7f1005f1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x3e8

    invoke-interface/range {v3 .. v12}, Lcom/oplus/camera/ui/preview/a/y$b;->a(IIZZZZZZI)V

    .line 534
    :cond_1
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->Q:J

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 536
    iget v5, p0, Lcom/oplus/camera/ui/preview/a/a/a;->S:I

    if-eq v5, v2, :cond_3

    .line 537
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->R:J

    .line 540
    :cond_3
    iget-wide v5, p0, Lcom/oplus/camera/ui/preview/a/a/a;->R:J

    sub-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    .line 541
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    const v2, 0x7f100130

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x3e8

    invoke-interface/range {v1 .. v10}, Lcom/oplus/camera/ui/preview/a/y$b;->a(IIZZZZZZI)V

    .line 546
    :cond_4
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->S:I

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/a/a/a;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/a/a/a;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->q()V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/a/a/a;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->M:Z

    return p0
.end method

.method private q()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/d;->c()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    .line 179
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->A:Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 186
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(II)V

    .line 199
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->d:I

    .line 200
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->k:I

    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/c;)V
    .locals 5

    .line 628
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->a()Lcom/oplus/camera/doubleexposure/b;

    move-result-object v0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoLoadedDone, clipVideoInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoubleExposureTexturePreview"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 632
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->N:Z

    .line 633
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->D()V

    .line 635
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    invoke-virtual {v4}, Lcom/oplus/camera/doubleexposure/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/a/a;->E:Z

    .line 637
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->F:Z

    goto :goto_0

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    if-eqz v2, :cond_1

    .line 640
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/a/a;->M:Z

    .line 643
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->H()V

    .line 644
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    .line 645
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/a/a;->E:Z

    .line 646
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->F:Z

    .line 649
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->c()Lcom/oplus/camera/doubleexposure/g$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 650
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->c()Lcom/oplus/camera/doubleexposure/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->J:Lcom/oplus/camera/doubleexposure/g$a;

    .line 651
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    .line 654
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->d()Lcom/oplus/camera/doubleexposure/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 655
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/c;->d()Lcom/oplus/camera/doubleexposure/a;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->K:Lcom/oplus/camera/doubleexposure/a;

    :cond_3
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    const-string v1, "DoubleExposureTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mOutputTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->P:[F

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->P:[F

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "decode video"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    .line 140
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->c:Lcom/oplus/camera/ui/preview/a/aa;

    .line 141
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->c:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/ui/preview/a/aa$a;)V

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->X:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 1

    .line 270
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/a/a;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "DoubleExposureTexturePreview"

    const-string p1, "canProcess, not support"

    .line 271
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 276
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->t:Z

    if-nez p1, :cond_1

    return v0

    .line 280
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->c:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 312
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v8

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/a/a;->A()V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/a/a;->B()V

    .line 317
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    const/4 v10, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->E:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    if-eqz v1, :cond_0

    .line 318
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/doubleexposure/b;)V

    .line 319
    iput-boolean v10, v0, Lcom/oplus/camera/ui/preview/a/a/a;->E:Z

    .line 322
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->V:Z

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 326
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a/c;->e()V

    .line 333
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/a/a;->E()Z

    move-result v1

    const/4 v11, 0x1

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    if-eqz v1, :cond_a

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/a/a;->C()V

    .line 336
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    if-nez v1, :cond_3

    .line 337
    new-instance v1, Lcom/oplus/camera/gl/s;

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    iget v2, v2, Lcom/oplus/camera/gl/g;->a:I

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    iget v3, v3, Lcom/oplus/camera/gl/g;->b:I

    invoke-direct {v1, v2, v3, v11}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    .line 339
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 340
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 344
    :cond_3
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    if-nez v1, :cond_4

    .line 345
    new-instance v1, Lcom/oplus/camera/gl/s;

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    iget v2, v2, Lcom/oplus/camera/gl/g;->a:I

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    iget v3, v3, Lcom/oplus/camera/gl/g;->b:I

    invoke-direct {v1, v2, v3, v11}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    .line 347
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 352
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->y:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_5

    .line 353
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->y:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 354
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->y:Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/a/a;->B:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 357
    :cond_5
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/a/a;->s:Lcom/oplus/camera/gl/g;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->B:[F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V

    .line 359
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->F:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_7

    .line 360
    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->C:Landroid/renderscript/Matrix4f;

    .line 361
    invoke-virtual {v1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/a/a;->I()Lcom/oplus/camera/ui/preview/a/a/d;

    move-result-object v6

    move-object/from16 v1, p0

    .line 360
    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FLcom/oplus/camera/ui/preview/a/a/d;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 362
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->o:Lcom/oplus/camera/gl/s;

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    :goto_0
    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->r:Lcom/oplus/camera/gl/s;

    .line 363
    iput-boolean v11, v7, Lcom/oplus/camera/ui/preview/a/y$a;->f:Z

    .line 364
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->r:Lcom/oplus/camera/gl/s;

    iput-object v1, v7, Lcom/oplus/camera/ui/preview/a/y$a;->d:Lcom/oplus/camera/gl/s;

    .line 365
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->r:Lcom/oplus/camera/gl/s;

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->q:Lcom/oplus/camera/gl/s;

    .line 366
    iput-object v12, v0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    .line 367
    iput-boolean v11, v0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    .line 369
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 371
    invoke-static {v8, v9, v0, v1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/a/a/a;->a:Ljava/lang/String;

    return v11

    .line 375
    :cond_7
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/y$a;->e:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 377
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :try_start_1
    iget-object v13, v0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v14

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget v15, v3, Lcom/oplus/camera/gl/s;->a:I

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget v3, v3, Lcom/oplus/camera/gl/s;->b:I

    const/16 v17, 0x0

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    .line 379
    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/a/c;->c()I

    move-result v18

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    invoke-virtual {v4}, Lcom/oplus/camera/doubleexposure/b;->g()Z

    move-result v19

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    .line 380
    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v21

    iget v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->G:I

    iget-boolean v5, v0, Lcom/oplus/camera/ui/preview/a/a/a;->W:Z

    invoke-direct {v0, v4, v5}, Lcom/oplus/camera/ui/preview/a/a/a;->a(IZ)I

    move-result v22

    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->W:Z

    move/from16 v16, v3

    move-object/from16 v20, v1

    move/from16 v23, v4

    .line 378
    invoke-virtual/range {v13 .. v23}, Lcom/oplus/camera/doubleexposure/d;->a(IIIZIZLcom/oplus/camera/aps/util/CameraApsResult;IIZ)I

    move-result v3

    .line 382
    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    if-eqz v4, :cond_8

    .line 383
    iput-boolean v10, v0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    .line 384
    iget-object v13, v0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v14

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget v15, v3, Lcom/oplus/camera/gl/s;->a:I

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/a/a;->n:Lcom/oplus/camera/gl/s;

    iget v3, v3, Lcom/oplus/camera/gl/s;->b:I

    const/16 v17, 0x0

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    .line 385
    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/a/c;->c()I

    move-result v18

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->D:Lcom/oplus/camera/doubleexposure/b;

    invoke-virtual {v4}, Lcom/oplus/camera/doubleexposure/b;->g()Z

    move-result v19

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    .line 386
    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v21

    iget v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->G:I

    iget-boolean v5, v0, Lcom/oplus/camera/ui/preview/a/a/a;->W:Z

    invoke-direct {v0, v4, v5}, Lcom/oplus/camera/ui/preview/a/a/a;->a(IZ)I

    move-result v22

    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/a/a;->W:Z

    move/from16 v16, v3

    move-object/from16 v20, v1

    move/from16 v23, v4

    .line 384
    invoke-virtual/range {v13 .. v23}, Lcom/oplus/camera/doubleexposure/d;->a(IIIZIZLcom/oplus/camera/aps/util/CameraApsResult;IIZ)I

    move-result v3

    const-string v1, "DoubleExposureTexturePreview"

    const-string v4, "process, drop frame"

    .line 388
    invoke-static {v1, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    invoke-direct {v0, v3}, Lcom/oplus/camera/ui/preview/a/a/a;->e(I)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v0, "DoubleExposureTexturePreview"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 398
    :cond_9
    invoke-direct {v0, v3}, Lcom/oplus/camera/ui/preview/a/a/a;->f(I)V

    .line 399
    iput-boolean v11, v0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    .line 401
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    .line 402
    iput-object v12, v0, Lcom/oplus/camera/ui/preview/a/a/a;->q:Lcom/oplus/camera/gl/s;

    .line 403
    iput-boolean v11, v0, Lcom/oplus/camera/ui/preview/a/a/a;->V:Z

    .line 405
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 407
    invoke-static {v8, v9, v0, v1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/a/a/a;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return v11

    :catchall_0
    move-exception v0

    .line 390
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 411
    :cond_a
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->M:Z

    if-eqz v1, :cond_e

    .line 412
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->q:Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_b

    goto :goto_1

    :cond_b
    return v10

    .line 413
    :cond_c
    :goto_1
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_d

    .line 414
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    const-string v0, "DoubleExposureTexturePreview"

    const-string v1, "draw cache"

    .line 416
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 418
    :cond_d
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->q:Lcom/oplus/camera/gl/s;

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/a/a/a;->r:Lcom/oplus/camera/gl/s;

    .line 419
    iput-boolean v11, v7, Lcom/oplus/camera/ui/preview/a/y$a;->f:Z

    .line 420
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/a/a;->r:Lcom/oplus/camera/gl/s;

    iput-object v0, v7, Lcom/oplus/camera/ui/preview/a/y$a;->d:Lcom/oplus/camera/gl/s;

    const-string v0, "DoubleExposureTexturePreview"

    const-string v1, "draw video cache"

    .line 422
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 439
    :goto_2
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 441
    invoke-static {v8, v9, v0, v1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/a/a/a;->a:Ljava/lang/String;

    return v11

    .line 427
    :cond_e
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/a/a;->F()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "DoubleExposureTexturePreview"

    const-string v1, "process, decoding not ready"

    .line 428
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_f
    return v10

    :catch_0
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v10
.end method

.method public b()V
    .locals 0

    .line 618
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->r()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->G:I

    .line 711
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleExposureTypeChanged, newType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->z:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->u:Lcom/oplus/camera/doubleexposure/d;

    if-eqz p0, :cond_0

    .line 703
    invoke-virtual {p0, p1}, Lcom/oplus/camera/doubleexposure/d;->a(I)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x400

    return p0
.end method

.method public e()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 157
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->p:Lcom/oplus/camera/gl/s;

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->H()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->L:Z

    .line 164
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v2, Lcom/oplus/camera/ui/preview/a/a/a$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/a/a/a$2;-><init>(Lcom/oplus/camera/ui/preview/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    .line 171
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    .line 220
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->k:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    .line 221
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->k:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/a/a;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    .line 222
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/a/a;->t:Z

    return-void
.end method

.method public j()V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 252
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->m:Lcom/oplus/camera/gl/s;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 257
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->l:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->t:Z

    return-void
.end method

.method public u()V
    .locals 0

    .line 665
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->G()V

    .line 666
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->H()V

    return-void
.end method

.method public v()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/a/c;->h()V

    :cond_0
    const/4 v0, 0x1

    .line 682
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->N:Z

    return-void
.end method

.method public w()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->I:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 688
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/a/a;->O:Z

    .line 689
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a;->x:Lcom/oplus/camera/ui/preview/a/a/c;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/a/c;->d()V

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->G()V

    return-void

    :catchall_0
    move-exception p0

    .line 689
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public x()V
    .locals 0

    return-void
.end method

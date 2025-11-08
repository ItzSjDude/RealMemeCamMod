.class public Lcom/oplus/camera/capmode/x;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/x$a;,
        Lcom/oplus/camera/capmode/x$b;,
        Lcom/oplus/camera/capmode/x$c;,
        Lcom/oplus/camera/capmode/x$d;,
        Lcom/oplus/camera/capmode/x$e;,
        Lcom/oplus/camera/capmode/x$g;,
        Lcom/oplus/camera/capmode/x$f;,
        Lcom/oplus/camera/capmode/x$h;
    }
.end annotation


# static fields
.field public static a:F


# instance fields
.field public b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/media/AudioManager;

.field private f:Ljava/lang/String;

.field private g:F

.field private h:F

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/media/MediaRecorder;

.field private m:Lcom/oplus/camera/capmode/b;

.field private n:Lcom/oplus/camera/capmode/x$h;

.field private o:Lcom/oplus/camera/capmode/x$f;

.field private p:Lcom/oplus/camera/capmode/x$g;

.field private q:Lcom/oplus/camera/capmode/x$e;

.field private r:Lcom/oplus/camera/capmode/x$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/x;->d:Z

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->e:Landroid/media/AudioManager;

    const-string v2, ""

    .line 64
    iput-object v2, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    const/high16 v2, -0x40800000    # -1.0f

    .line 65
    iput v2, p0, Lcom/oplus/camera/capmode/x;->g:F

    .line 66
    iput v2, p0, Lcom/oplus/camera/capmode/x;->h:F

    const/4 v2, -0x1

    .line 67
    iput v2, p0, Lcom/oplus/camera/capmode/x;->i:I

    .line 68
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/x;->j:Z

    .line 70
    iput v1, p0, Lcom/oplus/camera/capmode/x;->b:I

    .line 71
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/x;->k:Z

    .line 72
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->n:Lcom/oplus/camera/capmode/x$h;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->o:Lcom/oplus/camera/capmode/x$f;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->p:Lcom/oplus/camera/capmode/x$g;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->q:Lcom/oplus/camera/capmode/x$e;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->r:Lcom/oplus/camera/capmode/x$d;

    .line 81
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/x;->k:Z

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr p2, p1

    .line 82
    sput p2, Lcom/oplus/camera/capmode/x;->a:F

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/capmode/x;->h()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$h;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->n:Lcom/oplus/camera/capmode/x$h;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "vendor_audiorecord_focus_angle"

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    const-string v1, "lock_focus"

    .line 570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 576
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/capmode/x$1;

    invoke-direct {p2, p0, v0}, Lcom/oplus/camera/capmode/x$1;-><init>(Lcom/oplus/camera/capmode/x;Ljava/lang/StringBuilder;)V

    const-string p0, "updateAudioParameters"

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$f;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->o:Lcom/oplus/camera/capmode/x$f;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$g;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->p:Lcom/oplus/camera/capmode/x$g;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$e;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->q:Lcom/oplus/camera/capmode/x$e;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->r:Lcom/oplus/camera/capmode/x$d;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    .line 466
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 471
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x321f40a

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x3fc6a675

    if-eq v1, v2, :cond_2

    const v2, 0x48e4b0c4    # 468358.12f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "lock_focus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "focusing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    const-string p1, "vendor_audiorecord_orientation"

    const-string v1, "vendor_audiorecord_focus_zoom"

    const-string v2, "vendor_audiorecord_effect_type"

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    .line 494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    iget v0, p0, Lcom/oplus/camera/capmode/x;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    iget v0, p0, Lcom/oplus/camera/capmode/x;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    iget p1, p0, Lcom/oplus/camera/capmode/x;->h:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "vendor_audiorecord_focus_angle"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 481
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    iget v0, p0, Lcom/oplus/camera/capmode/x;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    iget v0, p0, Lcom/oplus/camera/capmode/x;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 475
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    iget v0, p0, Lcom/oplus/camera/capmode/x;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    iget v0, p0, Lcom/oplus/camera/capmode/x;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/capmode/x;)Landroid/media/AudioManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->e:Landroid/media/AudioManager;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/oplus/camera/capmode/b;

    invoke-direct {v0}, Lcom/oplus/camera/capmode/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    new-instance v2, Lcom/oplus/camera/capmode/x$a;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/capmode/x$a;-><init>(Lcom/oplus/camera/capmode/x;Lcom/oplus/camera/capmode/x$1;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/capmode/c;)V

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-static {}, Lcom/oplus/camera/Storage;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/b;->c(Z)V

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/oplus/camera/capmode/x$c;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/capmode/x$c;-><init>(Lcom/oplus/camera/capmode/x;Lcom/oplus/camera/capmode/x$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/oplus/camera/capmode/x$b;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/capmode/x$b;-><init>(Lcom/oplus/camera/capmode/x;Lcom/oplus/camera/capmode/x$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 97
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oplus/camera/capmode/x;->e:Landroid/media/AudioManager;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, mbUseCameraMediaCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoRecorder"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-nez v0, :cond_0

    .line 793
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 443
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    .line 447
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 449
    iget v0, p0, Lcom/oplus/camera/capmode/x;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 450
    iput p1, p0, Lcom/oplus/camera/capmode/x;->g:F

    .line 451
    iget v0, p0, Lcom/oplus/camera/capmode/x;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "vendor_audiorecord_focus_zoom"

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->c:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    const-string v1, "lock_focus"

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const-string p1, "panorama"

    goto :goto_0

    :cond_1
    const-string p1, "focusing"

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/b;->a(FF)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-nez v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusingSoundVolume, soundVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object p2, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    if-eqz p2, :cond_2

    .line 695
    invoke-virtual {p2, p1}, Lcom/oplus/camera/capmode/b;->a(I)V

    .line 696
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->l(I)V

    goto :goto_1

    .line 699
    :cond_0
    iput p1, p0, Lcom/oplus/camera/capmode/x;->b:I

    const-string p1, "com.oplus.feature.media.recorder.custom.focus.sector.width.support"

    .line 701
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 703
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->b(F)F

    move-result p2

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/oplus/camera/capmode/x;->b:I

    invoke-static {p2}, Lcom/oplus/camera/util/Util;->m(I)F

    move-result p2

    .line 705
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "vendor.ozoaudio.focus-gain.value"

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p1, "vendor.ozoaudio.focus-sector-width.value"

    const-string p2, "60.0"

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/b;->a(II)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 799
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/b;->b(J)V

    goto :goto_0

    .line 801
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-nez v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/x$d;)V
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_1

    .line 823
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->r:Lcom/oplus/camera/capmode/x$d;

    .line 824
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->h(Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/x$e;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->q:Lcom/oplus/camera/capmode/x$e;

    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/x$f;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->o:Lcom/oplus/camera/capmode/x$f;

    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/x$g;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->p:Lcom/oplus/camera/capmode/x$g;

    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/x$h;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->n:Lcom/oplus/camera/capmode/x$h;

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/q;)V
    .locals 1

    .line 829
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 830
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/gl/q;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutputFile, fileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 775
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSoundType, soundType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 717
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    if-eqz p0, :cond_3

    .line 718
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "vendor.ozoaudio.focus-mode.value"

    const-string v2, "vendor.ozoaudio.device.value"

    if-eqz v0, :cond_1

    const-string p1, ""

    .line 722
    invoke-virtual {p0, v2, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "off"

    .line 723
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "panorama"

    .line 724
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "on"

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p0, v2, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "focusing"

    .line 727
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    invoke-virtual {p0, v2, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;FI)V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->j:Z

    if-eqz v0, :cond_0

    const-string p1, "normal"

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/capmode/x;->c:Ljava/lang/String;

    .line 437
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/x;->a(F)V

    .line 438
    invoke-virtual {p0, p3}, Lcom/oplus/camera/capmode/x;->m(I)V

    .line 439
    iget-object p1, p0, Lcom/oplus/camera/capmode/x;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 299
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz p1, :cond_0

    .line 300
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/b;->a(Landroid/media/CamcorderProfile;)V

    goto :goto_0

    .line 302
    :cond_0
    iget p1, p2, Landroid/media/CamcorderProfile;->audioCodec:I

    if-gez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v0, p1, :cond_1

    const-string p1, "com.oplus.rom.platform.version"

    .line 303
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    iget v0, p2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 305
    iget-object p1, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 306
    iget-object p1, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 307
    iget-object p1, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    iget v0, p2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 308
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    iget p1, p2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setParameter"

    .line 660
    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/capmode/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->j:Z

    if-eqz v0, :cond_0

    const-string p2, "normal"

    .line 420
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/oplus/camera/capmode/x;->c(II)Ljava/lang/String;

    move-result-object p3

    .line 422
    iget-boolean p4, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz p4, :cond_1

    .line 423
    iget-object p4, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p4, p3}, Lcom/oplus/camera/capmode/b;->c(Ljava/lang/String;)V

    .line 424
    iget-object p3, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p3, p2}, Lcom/oplus/camera/capmode/b;->a(Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "normal"

    .line 595
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "vendor.ozoaudio.focus-mode.value"

    const-string v2, "vendor.ozoaudio.device.value"

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 596
    invoke-virtual {p0, v2, p2}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "off"

    .line 597
    invoke-virtual {p0, v1, p2}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "panorama"

    .line 598
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "on"

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0, v2, p3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "focusing"

    .line 601
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 602
    invoke-virtual {p0, v2, p3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget p2, p0, Lcom/oplus/camera/capmode/x;->b:I

    .line 605
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->m(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string p3, "vendor.ozoaudio.focus-gain.value"

    .line 604
    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_2
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->D()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "vendor.ozoaudio.wnr-mode.value"

    .line 609
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 956
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->a([B)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/b;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public b(FF)V
    .locals 2

    .line 526
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/x;->d:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/x;->j:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 530
    :cond_0
    iget p1, p0, Lcom/oplus/camera/capmode/x;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/16 p1, 0x3c

    goto :goto_0

    :cond_1
    const/16 p1, 0x24

    .line 531
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    sub-float/2addr v0, p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x41200000    # 10.0f

    div-float/2addr v0, p1

    float-to-double p1, v0

    .line 532
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    .line 534
    iget p2, p0, Lcom/oplus/camera/capmode/x;->i:I

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 539
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/capmode/x;->f:Ljava/lang/String;

    const-string v0, "lock_focus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 540
    iput p1, p0, Lcom/oplus/camera/capmode/x;->h:F

    .line 541
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :cond_4
    iget p2, p0, Lcom/oplus/camera/capmode/x;->h:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_5

    .line 543
    iput p1, p0, Lcom/oplus/camera/capmode/x;->h:F

    .line 544
    iget p1, p0, Lcom/oplus/camera/capmode/x;->h:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "vendor_audiorecord_focus_angle"

    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->h(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-nez v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutputFile, path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 785
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 667
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p1, 0x0

    .line 672
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 675
    :try_start_1
    iget-object v2, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 676
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 683
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 681
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/b;->d()Z

    move-result p0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->start()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public c(II)Ljava/lang/String;
    .locals 3

    const/16 p0, 0x10e

    const/16 v0, 0xb4

    const/16 v1, 0x5a

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_2

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "1"

    goto :goto_1

    :cond_1
    const-string p0, "2"

    goto :goto_1

    :cond_2
    const-string p0, "3"

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_6

    if-eq p2, p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "5"

    goto :goto_1

    :cond_5
    const-string p0, "6"

    goto :goto_1

    :cond_6
    const-string p0, "4"

    goto :goto_1

    :cond_7
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public c(I)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->i(I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeExifTag, exifInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 843
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 844
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "set-title="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 850
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 848
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 846
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->e(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/capmode/c;)V

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/b;->e()Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/x;->d(Z)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/x;->g(Z)V

    const-string v1, "normal"

    .line 229
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->j(I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMediaRecorderParameter, parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 863
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 864
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 870
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 868
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 866
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 392
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/x;->j:Z

    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "binaural_recording_switch"

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/b;->d(Z)V

    .line 399
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/x;->j:Z

    if-eqz p1, :cond_1

    const-string p1, "normal"

    .line 400
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    iput-object v1, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 240
    iput-object v1, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    .line 243
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release, mbUseCameraMediaCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoRecorder"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 876
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/b;->c()V

    goto :goto_0

    .line 878
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->k(I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "front"

    goto :goto_0

    :cond_0
    const-string p1, "back"

    :goto_0
    const-string v0, "binaural_recording_orientation"

    .line 405
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-nez v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 411
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "binaural_recording_mirror"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f()Z
    .locals 2

    .line 884
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/b;->g()V

    goto :goto_0

    .line 887
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "VideoRecorder"

    const-string v1, "resume, Could not resume video recorder"

    .line 890
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public g(I)V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->d(I)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 549
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->d:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/x;->d:Z

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusTrackingState, isTracing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoRecorder"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/x;->d:Z

    if-nez p1, :cond_3

    .line 558
    iget-object p1, p0, Lcom/oplus/camera/capmode/x;->c:Ljava/lang/String;

    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 559
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const p1, 0x3f8ccccd    # 1.1f

    .line 561
    iget v0, p0, Lcom/oplus/camera/capmode/x;->g:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const-string p1, "panorama"

    goto :goto_0

    :cond_2
    const-string p1, "focusing"

    .line 563
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/x;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public g()Z
    .locals 1

    .line 901
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/b;->f()V

    goto :goto_0

    .line 904
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 907
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string p0, "VideoRecorder"

    const-string v0, "pause, Could not pause video recorder"

    .line 909
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public h(I)V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->f(I)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->e(Z)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->e(I)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 932
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 933
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->g(I)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_0
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 939
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->g(Z)V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 359
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->b(I)V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 384
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/b;->a(J)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_0
    return-void
.end method

.method public m(I)V
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 519
    :goto_0
    iget v0, p0, Lcom/oplus/camera/capmode/x;->i:I

    if-eq p1, v0, :cond_3

    .line 520
    iput p1, p0, Lcom/oplus/camera/capmode/x;->i:I

    .line 521
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vendor_audiorecord_orientation"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public n(I)V
    .locals 7

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMirror, mirrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 745
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v2, "setParameter"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 746
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 747
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set-video-mirror="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 757
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string p1, "setVideoMirror, IllegalAccessException"

    .line 759
    invoke-static {v1, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 753
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string p1, "setVideoMirror, InvocationTargetException"

    .line 755
    invoke-static {v1, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 749
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string p1, "setVideoMirror, NoSuchMethodException"

    .line 751
    invoke-static {v1, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 738
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoMirror, mMediaRecorder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mbUseCameraMediaCodec: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 764
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/x;->k:Z

    if-eqz v0, :cond_0

    .line 765
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->m:Lcom/oplus/camera/capmode/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/b;->c(I)V

    goto :goto_0

    .line 767
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/x;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_0
    return-void
.end method

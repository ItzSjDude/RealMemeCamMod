.class public Lcom/oplus/camera/ui/preview/h;
.super Lcom/oplus/camera/gl/t;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/h$b;,
        Lcom/oplus/camera/ui/preview/h$a;,
        Lcom/oplus/camera/ui/preview/h$d;,
        Lcom/oplus/camera/ui/preview/h$c;
    }
.end annotation


# instance fields
.field private final R:[F

.field private S:I

.field private T:F

.field private U:F

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Landroid/content/Context;

.field private ac:Lcom/oplus/camera/ui/preview/ad;

.field private ad:Lcom/oplus/camera/ui/preview/c;

.field private ae:Lcom/oplus/camera/gl/s;

.field private af:Lcom/oplus/camera/gl/s;

.field private ag:Lcom/oplus/camera/gl/d;

.field private ah:Lcom/oplus/camera/ui/preview/h$d;

.field private ai:Lcom/oplus/camera/ui/preview/h$a;

.field private aj:Lcom/oplus/camera/gl/a/b;

.field private ak:Lcom/oplus/camera/gl/a/a;

.field private al:I

.field private am:I

.field private an:J

.field private ao:I

.field private ap:Landroid/util/Size;

.field private aq:[F

.field private ar:Lcom/oplus/camera/ui/preview/d;

.field private as:Z

.field private at:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ui/preview/h$c;Z)V
    .locals 5

    .line 142
    invoke-direct {p0}, Lcom/oplus/camera/gl/t;-><init>()V

    const/16 v0, 0x10

    .line 104
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->R:[F

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->S:I

    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lcom/oplus/camera/ui/preview/h;->T:F

    .line 108
    iput v1, p0, Lcom/oplus/camera/ui/preview/h;->U:F

    .line 111
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->W:Z

    .line 114
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->X:Z

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    .line 116
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->Z:Z

    .line 117
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->aa:Z

    const/4 v2, 0x0

    .line 119
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    .line 120
    new-instance v3, Lcom/oplus/camera/ui/preview/ad;

    invoke-direct {v3}, Lcom/oplus/camera/ui/preview/ad;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/h;->ac:Lcom/oplus/camera/ui/preview/ad;

    .line 121
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    .line 122
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ae:Lcom/oplus/camera/gl/s;

    .line 123
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    .line 124
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ag:Lcom/oplus/camera/gl/d;

    .line 125
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ah:Lcom/oplus/camera/ui/preview/h$d;

    .line 126
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ai:Lcom/oplus/camera/ui/preview/h$a;

    .line 127
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    .line 128
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    .line 129
    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->al:I

    .line 130
    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->am:I

    const-wide/16 v3, 0x0

    .line 131
    iput-wide v3, p0, Lcom/oplus/camera/ui/preview/h;->an:J

    .line 132
    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->ao:I

    .line 133
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ap:Landroid/util/Size;

    .line 134
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->aq:[F

    .line 135
    new-instance v2, Lcom/oplus/camera/ui/preview/d;

    invoke-direct {v2}, Lcom/oplus/camera/ui/preview/d;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->ar:Lcom/oplus/camera/ui/preview/d;

    .line 136
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->as:Z

    .line 718
    new-instance v2, Lcom/oplus/camera/ui/preview/h$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/h$5;-><init>(Lcom/oplus/camera/ui/preview/h;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->at:Ljava/lang/Runnable;

    .line 143
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    .line 146
    new-instance p1, Lcom/oplus/camera/ui/preview/aa;

    invoke-direct {p1}, Lcom/oplus/camera/ui/preview/aa;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    if-nez p3, :cond_0

    move v0, v1

    .line 147
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->W:Z

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/b/h;->a(I)V

    .line 149
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/b/h;->b(I)V

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/b/h;->c(I)V

    .line 151
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private C()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->p()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    if-eqz p0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/oplus/camera/gl/a/b;->b()V

    :cond_1
    return-void
.end method

.method private D()V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->E:Z

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->aq:[F

    const-string v0, "CameraStartupPerformance.onFirstFrameDrawed"

    .line 386
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 388
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/h$c;->ac()V

    .line 390
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string p0, "launch_first_frame_draw"

    .line 392
    invoke-static {p0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    const-string p0, "CameraScreenNail"

    const-string v0, "CameraTest First Frame Draw"

    .line 394
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 8

    .line 932
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 934
    iget-wide v2, p0, Lcom/oplus/camera/ui/preview/h;->an:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 935
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/h;->an:J

    goto :goto_0

    :cond_0
    sub-long v4, v0, v2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 937
    iget v4, p0, Lcom/oplus/camera/ui/preview/h;->ao:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    sub-long v2, v0, v2

    long-to-double v2, v2

    div-double/2addr v4, v2

    .line 938
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v2

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/oplus/camera/w/a;->b(I)V

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFrameAvailableFps, fps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraScreenNail"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/h;->an:J

    const/4 v0, 0x0

    .line 943
    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->ao:I

    .line 946
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/h;->ao:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->ao:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/a/a;)Lcom/oplus/camera/gl/a/a;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/a/b;)Lcom/oplus/camera/gl/a/b;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/b/f;)Lcom/oplus/camera/gl/b/f;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/p;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->n:Lcom/oplus/camera/gl/p;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->F:[F

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/h;->a([F)V

    .line 734
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/g;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/h;->ae:Lcom/oplus/camera/gl/s;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/h;->F:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V

    :cond_0
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;)V
    .locals 6

    .line 726
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    .line 727
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v4

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;IIII)V

    .line 728
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/p;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->n:Lcom/oplus/camera/gl/p;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/gl/h;IIII)Z
    .locals 12

    move-object v0, p0

    .line 399
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/h;->ar:Lcom/oplus/camera/ui/preview/d;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/d;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 400
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/h;->ar:Lcom/oplus/camera/ui/preview/d;

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/h;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/h;->l:Ljava/util/List;

    .line 401
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/oplus/camera/gl/g;

    iget-object v6, v0, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 400
    invoke-virtual/range {v3 .. v11}, Lcom/oplus/camera/ui/preview/d;->a(Lcom/oplus/camera/ui/preview/a/t;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/h;IIII)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/w;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->o:Lcom/oplus/camera/gl/w;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/w;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->o:Lcom/oplus/camera/gl/w;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/a/b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/a/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/b/f;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/b/f;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ah:Lcom/oplus/camera/ui/preview/h$d;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ai:Lcom/oplus/camera/ui/preview/h$a;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/preview/h;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/h;->H:Z

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$c;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/ui/preview/h;)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$c;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p0

    return p0
.end method

.method public B()Landroid/graphics/Rect;
    .locals 0

    .line 921
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->o()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public a(IIII)I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/gl/a/a;->b(II)V

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/gl/a/a;->a(II)V

    .line 287
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    invoke-virtual {p2, p4}, Lcom/oplus/camera/gl/a/a;->a(I)V

    .line 288
    sget-object p2, Lcom/oplus/camera/gl/a/c;->a:[F

    invoke-static {p2}, Lcom/oplus/camera/util/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    .line 289
    sget-object p3, Lcom/oplus/camera/gl/a/c;->b:[F

    invoke-static {p3}, Lcom/oplus/camera/util/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    .line 290
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/gl/a/a;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method public a(II)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/gl/t;->a(II)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "setGaussianBlurBitmap"

    .line 267
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput p2, p0, Lcom/oplus/camera/ui/preview/h;->al:I

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 272
    new-instance p2, Lcom/oplus/camera/gl/d;

    invoke-direct {p2, p1}, Lcom/oplus/camera/gl/d;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/h;->ag:Lcom/oplus/camera/gl/d;

    .line 274
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 275
    :try_start_0
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    const/4 p2, 0x5

    .line 276
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 277
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p1, 0x0

    .line 279
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ah:Lcom/oplus/camera/ui/preview/h$d;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/h$d;->d()V

    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/gl/a/b;->a(Landroid/util/Size;Landroid/util/Size;)V

    .line 252
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ap:Landroid/util/Size;

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ap:Landroid/util/Size;

    if-eqz p1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/gl/a/b;->a(Landroid/util/Size;Landroid/util/Size;)V

    .line 257
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 259
    :try_start_0
    iget p2, p0, Lcom/oplus/camera/ui/preview/h;->S:I

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v0, 0xf

    if-ne p2, v0, :cond_4

    .line 260
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    const/16 p2, 0xd

    .line 261
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 263
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/gl/h;IIII)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 409
    invoke-super/range {v0 .. v6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/h$a;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ai:Lcom/oplus/camera/ui/preview/h$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/h$b;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->r:Lcom/oplus/camera/ui/preview/h$b;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/h$d;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ah:Lcom/oplus/camera/ui/preview/h$d;

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v5, p5

    move/from16 v6, p6

    .line 417
    iget-object v15, v7, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v15

    .line 418
    :try_start_0
    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->V:Z

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 419
    iput-boolean v4, v7, Lcom/oplus/camera/ui/preview/h;->V:Z

    const-string v1, "CameraScreenNail"

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw, mbVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->V:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->X:Z

    if-nez v1, :cond_2

    :cond_1
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    if-nez v1, :cond_2

    .line 426
    monitor-exit v15

    return v3

    :cond_2
    if-eqz p2, :cond_3

    .line 430
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    goto/16 :goto_12

    :cond_3
    if-eqz v0, :cond_2f

    const/16 v1, 0xb

    .line 432
    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const v8, 0x3e99999a    # 0.3f

    if-ne v1, v2, :cond_5

    .line 433
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->T:F

    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->U:F

    add-float/2addr v1, v2

    iput v1, v7, Lcom/oplus/camera/ui/preview/h;->T:F

    .line 434
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->c()V

    .line 436
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->T:F

    float-to-double v1, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v9

    if-gtz v1, :cond_4

    .line 437
    invoke-interface {v0, v8}, Lcom/oplus/camera/gl/h;->a(F)V

    .line 438
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    .line 439
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 440
    monitor-exit v15

    return v4

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 442
    iput v1, v7, Lcom/oplus/camera/ui/preview/h;->T:F

    .line 443
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->T:F

    invoke-interface {v0, v1}, Lcom/oplus/camera/gl/h;->a(F)V

    .line 445
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/h;->s()V

    .line 447
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 448
    monitor-exit v15

    return v4

    .line 452
    :cond_5
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 453
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->c()V

    .line 454
    invoke-interface {v0, v8}, Lcom/oplus/camera/gl/h;->a(F)V

    .line 455
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    .line 456
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 457
    monitor-exit v15

    return v4

    .line 460
    :cond_6
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    if-nez v1, :cond_8

    .line 461
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/h;->D()V

    .line 465
    :cond_7
    monitor-exit v15

    return v4

    .line 468
    :cond_8
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v2, 0xe

    const/16 v14, 0x10

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/16 v11, 0x9

    if-eq v1, v4, :cond_19

    const/4 v8, 0x2

    if-eq v1, v8, :cond_18

    const/4 v8, 0x5

    const/16 v10, 0x8

    const/4 v9, 0x6

    if-eq v1, v8, :cond_13

    if-eq v1, v9, :cond_14

    const/4 v8, 0x7

    if-eq v1, v8, :cond_14

    if-eq v1, v10, :cond_12

    const/16 v8, 0xd

    if-eq v1, v8, :cond_9

    :goto_0
    move/from16 v4, p3

    move v1, v13

    move v2, v14

    move/from16 v14, p4

    move v13, v12

    goto/16 :goto_9

    .line 526
    :cond_9
    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->aa:Z

    if-nez v1, :cond_11

    .line 527
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    iget v8, v7, Lcom/oplus/camera/ui/preview/h;->w:I

    iget v9, v7, Lcom/oplus/camera/ui/preview/h;->x:I

    invoke-virtual {v1, v8, v9}, Lcom/oplus/camera/gl/a/b;->c(II)V

    .line 528
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->w:I

    div-int/lit8 v1, v1, 0xa

    .line 529
    iget v8, v7, Lcom/oplus/camera/ui/preview/h;->x:I

    div-int/lit8 v8, v8, 0xa

    .line 531
    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    if-nez v9, :cond_a

    .line 532
    new-instance v9, Lcom/oplus/camera/gl/s;

    invoke-direct {v9, v1, v8, v4}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    goto :goto_1

    .line 533
    :cond_a
    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v9}, Lcom/oplus/camera/gl/s;->g()I

    move-result v9

    if-ne v9, v8, :cond_b

    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    .line 534
    invoke-virtual {v9}, Lcom/oplus/camera/gl/s;->f()I

    move-result v9

    if-eq v9, v1, :cond_c

    .line 535
    :cond_b
    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v9}, Lcom/oplus/camera/gl/s;->o()V

    .line 536
    new-instance v9, Lcom/oplus/camera/gl/s;

    invoke-direct {v9, v1, v8, v4}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    :cond_c
    :goto_1
    const-string v1, "CameraScreenNail"

    const-string v8, "draw, mModeChangeBlurTexture init"

    .line 539
    invoke-static {v1, v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 541
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aq:[F

    if-nez v1, :cond_d

    .line 542
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->F:[F

    iput-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aq:[F

    .line 543
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aq:[F

    invoke-virtual {v7, v1}, Lcom/oplus/camera/ui/preview/h;->a([F)V

    .line 546
    :cond_d
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    :try_start_1
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->G:I

    const/16 v8, 0x5a

    if-eq v1, v8, :cond_e

    .line 548
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->G:I

    sub-int/2addr v1, v8

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 550
    div-int/2addr v1, v8

    move v8, v3

    :goto_2
    if-ge v8, v1, :cond_e

    .line 553
    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->F:[F

    const/16 v17, 0x0

    iget-object v10, v7, Lcom/oplus/camera/ui/preview/h;->F:[F

    const/16 v19, 0x0

    sget-object v20, Lcom/oplus/camera/ui/preview/h;->i:[F

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 557
    :cond_e
    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->I:Z

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    .line 559
    invoke-virtual {v1}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 560
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    invoke-direct {v7, v0, v1, v8}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;)V

    .line 561
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/gl/a/b;->a(Z)V

    goto :goto_3

    .line 563
    :cond_f
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->aq:[F

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V

    .line 564
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/gl/a/b;->a(Z)V

    .line 566
    :goto_3
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 569
    :cond_10
    :goto_4
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/a/b;->d()V

    .line 572
    :cond_11
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->c:Z

    .line 573
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->d:Z

    .line 574
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->e:Z

    .line 575
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->f:Z

    .line 576
    iput-boolean v4, v7, Lcom/oplus/camera/ui/preview/h;->aa:Z

    .line 577
    invoke-virtual {v7, v2}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    goto/16 :goto_0

    :cond_12
    move v2, v14

    goto :goto_5

    .line 470
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;)V

    .line 471
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    invoke-interface {v1, v5, v6}, Lcom/oplus/camera/ui/preview/c;->a(II)V

    .line 472
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/h$c;->aa()V

    .line 473
    invoke-virtual {v7, v9}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 482
    :cond_14
    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->Z:Z

    if-eqz v1, :cond_15

    .line 483
    monitor-exit v15

    return v4

    .line 486
    :cond_15
    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ae:Lcom/oplus/camera/gl/s;

    move-object/from16 v9, p1

    move v4, v10

    move/from16 v10, p3

    move v2, v11

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move v2, v14

    move-object v14, v1

    invoke-interface/range {v8 .. v14}, Lcom/oplus/camera/ui/preview/c;->b(Lcom/oplus/camera/gl/h;IIIILcom/oplus/camera/gl/c;)Z

    .line 487
    invoke-virtual {v7, v4}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 490
    :goto_5
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    iget-object v4, v7, Lcom/oplus/camera/ui/preview/h;->ah:Lcom/oplus/camera/ui/preview/h$d;

    iget v8, v7, Lcom/oplus/camera/ui/preview/h;->al:I

    invoke-interface {v4, v8}, Lcom/oplus/camera/ui/preview/h$d;->a(I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/oplus/camera/ui/preview/c;->a(I)V

    .line 491
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    iget-object v4, v7, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->ah:Lcom/oplus/camera/ui/preview/h$d;

    invoke-interface {v1, v4, v8}, Lcom/oplus/camera/ui/preview/c;->a(Landroid/content/Context;Lcom/oplus/camera/ui/preview/h$d;)V

    .line 493
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v4, Lcom/oplus/camera/ui/preview/h$2;

    invoke-direct {v4, v7}, Lcom/oplus/camera/ui/preview/h$2;-><init>(Lcom/oplus/camera/ui/preview/h;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->c:Z

    .line 501
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->d:Z

    .line 502
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->e:Z

    .line 503
    iput-boolean v3, v7, Lcom/oplus/camera/ui/preview/h;->f:Z

    .line 505
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 506
    invoke-virtual {v7, v2}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    goto :goto_6

    :cond_16
    const/16 v1, 0x9

    .line 508
    invoke-virtual {v7, v1}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 511
    :goto_6
    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->W:Z

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_7

    :cond_17
    move v1, v3

    :goto_7
    iput-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->W:Z

    move/from16 v4, p3

    move/from16 v14, p4

    const/4 v1, 0x4

    goto :goto_8

    :cond_18
    move v2, v14

    .line 520
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;)V

    .line 521
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ac:Lcom/oplus/camera/ui/preview/ad;

    move/from16 v4, p3

    move/from16 v14, p4

    invoke-virtual {v1, v4, v14, v5, v6}, Lcom/oplus/camera/ui/preview/ad;->a(IIII)V

    const/4 v1, 0x4

    .line 522
    invoke-virtual {v7, v1}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    :goto_8
    const/4 v13, 0x3

    goto :goto_9

    :cond_19
    move/from16 v4, p3

    move v1, v13

    move v2, v14

    move/from16 v14, p4

    .line 515
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v13, 0x3

    .line 516
    invoke-virtual {v7, v13}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 584
    :goto_9
    iget v8, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v12, 0xf

    const/16 v9, 0xe

    if-ne v8, v9, :cond_20

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    if-eqz v8, :cond_20

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    if-eqz v8, :cond_20

    .line 587
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v8}, Lcom/oplus/camera/gl/s;->f()I

    move-result v8

    goto :goto_a

    .line 588
    :cond_1a
    div-int/lit8 v8, v5, 0xa

    .line 589
    :goto_a
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v9}, Lcom/oplus/camera/gl/s;->g()I

    move-result v9

    goto :goto_b

    .line 590
    :cond_1b
    div-int/lit8 v9, v6, 0xa

    .line 591
    :goto_b
    iget-object v10, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    iget-object v11, v7, Lcom/oplus/camera/ui/preview/h;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v11}, Lcom/oplus/camera/gl/s;->e()I

    move-result v11

    invoke-virtual {v10, v11, v8, v9}, Lcom/oplus/camera/gl/a/b;->a(III)I

    move-result v10

    iput v10, v7, Lcom/oplus/camera/ui/preview/h;->am:I

    .line 594
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 596
    iget-object v10, v7, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    if-nez v10, :cond_1c

    .line 597
    new-instance v10, Lcom/oplus/camera/gl/s;

    const/4 v11, 0x1

    invoke-direct {v10, v8, v9, v11}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v10, v7, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    .line 600
    :cond_1c
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 601
    iget-object v10, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v10, v5, v6}, Lcom/oplus/camera/gl/a/b;->b(II)V

    .line 604
    :cond_1d
    iget-object v10, v7, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    invoke-virtual {v10, v8, v9}, Lcom/oplus/camera/gl/s;->a(II)V

    .line 605
    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    iget v9, v7, Lcom/oplus/camera/ui/preview/h;->am:I

    invoke-virtual {v8, v0, v9}, Lcom/oplus/camera/gl/s;->a(Lcom/oplus/camera/gl/h;I)V

    .line 606
    iget-object v9, v7, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    invoke-virtual {v8}, Lcom/oplus/camera/gl/a/b;->a()[F

    move-result-object v10

    move-object/from16 v8, p1

    move/from16 v11, p3

    move v2, v12

    move/from16 v12, p4

    move v1, v13

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-interface/range {v8 .. v14}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 609
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 611
    iget-boolean v8, v7, Lcom/oplus/camera/ui/preview/h;->c:Z

    if-eqz v8, :cond_1f

    iget-boolean v8, v7, Lcom/oplus/camera/ui/preview/h;->aa:Z

    if-nez v8, :cond_1f

    .line 612
    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    new-instance v9, Lcom/oplus/camera/ui/preview/h$3;

    invoke-direct {v9, v7}, Lcom/oplus/camera/ui/preview/h$3;-><init>(Lcom/oplus/camera/ui/preview/h;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const v8, 0x8d40

    .line 624
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v8, 0xde1

    .line 625
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 626
    invoke-super/range {p0 .. p0}, Lcom/oplus/camera/gl/t;->j()V

    .line 627
    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->ar:Lcom/oplus/camera/ui/preview/d;

    invoke-virtual {v8}, Lcom/oplus/camera/ui/preview/d;->b()V

    .line 629
    iget-boolean v8, v7, Lcom/oplus/camera/ui/preview/h;->as:Z

    if-eqz v8, :cond_1e

    .line 630
    invoke-virtual {v7, v2}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    goto :goto_c

    .line 632
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/h;->C()V

    .line 633
    invoke-virtual {v7, v3}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    goto :goto_c

    .line 636
    :cond_1f
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    .line 637
    monitor-exit v15

    const/4 v8, 0x1

    return v8

    :cond_20
    move v2, v12

    move v1, v13

    :goto_c
    const/4 v8, 0x1

    .line 641
    iget v9, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    if-ne v9, v2, :cond_23

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/h;->af:Lcom/oplus/camera/gl/s;

    if-eqz v2, :cond_23

    .line 643
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 644
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/h;->D()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v14, v3

    move/from16 v3, p3

    move/from16 v16, v8

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 646
    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/h;->b(Lcom/oplus/camera/gl/h;IIII)Z

    move-result v0

    if-nez v0, :cond_22

    .line 647
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/h;->ar:Lcom/oplus/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/d;->b()V

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/h;->C()V

    .line 649
    invoke-virtual {v7, v14}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    goto :goto_d

    :cond_21
    move/from16 v16, v8

    .line 653
    :cond_22
    :goto_d
    monitor-exit v15

    return v16

    :cond_23
    move v14, v3

    move/from16 v16, v8

    .line 656
    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    if-eq v2, v1, :cond_25

    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_25

    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_25

    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_24

    goto :goto_e

    :cond_24
    move v2, v14

    goto/16 :goto_13

    .line 660
    :cond_25
    :goto_e
    iget v2, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    if-ne v2, v1, :cond_27

    :cond_26
    move v2, v14

    goto :goto_f

    .line 661
    :cond_27
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_28

    .line 662
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ac:Lcom/oplus/camera/ui/preview/ad;

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/h;->ae:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1, v0, v7, v2}, Lcom/oplus/camera/ui/preview/ad;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/s;)Z

    move-result v3

    move v2, v14

    goto :goto_10

    .line 664
    :cond_28
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ag:Lcom/oplus/camera/gl/d;

    if-eqz v1, :cond_26

    .line 665
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_26

    .line 666
    iget-object v8, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ag:Lcom/oplus/camera/gl/d;

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move v2, v14

    move-object v14, v1

    invoke-interface/range {v8 .. v14}, Lcom/oplus/camera/ui/preview/c;->a(Lcom/oplus/camera/gl/h;IIIILcom/oplus/camera/gl/c;)Z

    move-result v3

    goto :goto_10

    :goto_f
    move v3, v2

    :goto_10
    if-eqz v3, :cond_29

    .line 672
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    goto :goto_13

    .line 674
    :cond_29
    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2a

    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2e

    .line 675
    :cond_2a
    iget-boolean v1, v7, Lcom/oplus/camera/ui/preview/h;->c:Z

    if-eqz v1, :cond_2c

    iget v1, v7, Lcom/oplus/camera/ui/preview/h;->S:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2b

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    .line 676
    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 677
    :cond_2b
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/ui/preview/h$4;

    invoke-direct {v3, v7}, Lcom/oplus/camera/ui/preview/h$4;-><init>(Lcom/oplus/camera/ui/preview/h;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 684
    invoke-virtual {v7, v2}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 687
    :cond_2c
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ag:Lcom/oplus/camera/gl/d;

    if-eqz v1, :cond_2e

    .line 689
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/c;->a()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/gl/h;->a(F)V

    .line 690
    iget-object v2, v7, Lcom/oplus/camera/ui/preview/h;->ag:Lcom/oplus/camera/gl/d;

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;IIII)V

    .line 692
    iget-boolean v0, v7, Lcom/oplus/camera/ui/preview/h;->c:Z

    if-nez v0, :cond_2d

    .line 693
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    goto :goto_11

    .line 696
    :cond_2d
    invoke-super/range {p0 .. p0}, Lcom/oplus/camera/gl/t;->j()V

    .line 699
    :goto_11
    monitor-exit v15

    return v16

    :cond_2e
    move/from16 v2, v16

    goto :goto_13

    :cond_2f
    :goto_12
    move v2, v3

    move/from16 v16, v4

    move/from16 v4, p3

    .line 707
    :goto_13
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_30

    .line 712
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    :cond_30
    return v16

    :catchall_1
    move-exception v0

    .line 707
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public b(II)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 336
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/t;->a(II)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ad:Lcom/oplus/camera/ui/preview/c;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/c;->b(II)V

    .line 806
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-super {p0}, Lcom/oplus/camera/gl/t;->d()V

    .line 182
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/h;->C()V

    .line 183
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/h;->ar:Lcom/oplus/camera/ui/preview/d;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/d;->b()V

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(I)V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraScreenNail"

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimState, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/preview/h;->S:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iput p1, p0, Lcom/oplus/camera/ui/preview/h;->S:I

    .line 378
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(II)V
    .locals 2

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmallSurfaceSize, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/gl/b/h;->a(II)V

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 167
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->X:Z

    .line 168
    invoke-super {p0, p1}, Lcom/oplus/camera/gl/t;->d(Z)V

    .line 169
    new-instance p1, Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->g()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p1, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h;->ae:Lcom/oplus/camera/gl/s;

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e(I)V
    .locals 2

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiVideoType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/b/h;->f(I)V

    return-void
.end method

.method public e(II)V
    .locals 2

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmallSurfacePosition, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/b/h;->d(I)V

    .line 928
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/b/h;->e(I)V

    return-void
.end method

.method public f(I)V
    .locals 5

    .line 950
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/h;->J:Landroid/media/Image;

    if-eqz v1, :cond_1

    const-string v1, "CameraScreenNail"

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeMultiImage cameraRole: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->J:Landroid/media/Image;

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 956
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->J:Landroid/media/Image;

    goto :goto_0

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/h;->K:Landroid/media/Image;

    if-eqz v1, :cond_1

    const-string v1, "CameraScreenNail"

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeMultiImage cameraRole: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->K:Landroid/media/Image;

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 963
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/h;->K:Landroid/media/Image;

    .line 966
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i()V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/a/a;->a()V

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->H:Z

    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->d:Z

    .line 833
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public l(Z)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->e:Z

    .line 839
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public m()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 812
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->c:Z

    .line 813
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    invoke-super {p0}, Lcom/oplus/camera/gl/t;->m()V

    return-void

    :catchall_0
    move-exception p0

    .line 813
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public m(Z)V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->f:Z

    .line 845
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public n()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 156
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->E:Z

    .line 157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public n(Z)V
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 880
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    .line 882
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->V:Z

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    .line 887
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    const-string p1, "CameraScreenNail"

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrawFrame, mbDrawFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public o(Z)V
    .locals 2

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMainOneCameraImplDraw, mainOneCameraImplDraw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/b/h;->a(Z)V

    return-void
.end method

.method public o()Z
    .locals 0

    .line 161
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/h;->E:Z

    return p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string v0, "CameraScreenNail.onFrameAvailable"

    .line 749
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/h;->E()V

    .line 753
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 755
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/h;->C:J

    .line 764
    monitor-exit v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "CameraScreenNail"

    const-string p1, "onFrameAvailable, surfaceTexture does not correspond."

    .line 756
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CameraScreenNail.onFrameAvailable"

    .line 758
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 760
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 764
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 767
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->V:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 768
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->V:Z

    .line 771
    :cond_3
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->X:Z

    if-nez p1, :cond_4

    const-string p1, "CameraStartupPerformance.onFirstFrameAvailable"

    .line 772
    invoke-static {p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 774
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/h;->X:Z

    const-string p1, "CameraStartupPerformance.onFirstFrameAvailable"

    .line 776
    invoke-static {p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string p1, "launch_first_frame_available"

    .line 778
    invoke-static {p1}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    const-string p1, "CameraScreenNail"

    const-string v0, "CameraTest First Frame available"

    .line 780
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_4
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->V:Z

    if-eqz p1, :cond_6

    .line 784
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_5

    .line 785
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->at:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 787
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/h;->at:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 791
    :goto_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->Y:Z

    if-eqz p1, :cond_6

    .line 792
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    :cond_6
    const-string p0, "CameraScreenNail.onFrameAvailable"

    .line 796
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/b/h;->a(I)V

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/b/h;->b(I)V

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/b/h;->c(I)V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 970
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/h;->as:Z

    return-void
.end method

.method public q()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->i()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->ai:Lcom/oplus/camera/ui/preview/h$a;

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->v:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/h$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/h$1;-><init>(Lcom/oplus/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->b()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    if-nez v0, :cond_1

    .line 315
    new-instance v0, Lcom/oplus/camera/gl/a/b;

    invoke-direct {v0}, Lcom/oplus/camera/gl/a/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->aj:Lcom/oplus/camera/gl/a/b;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Lcom/oplus/camera/gl/a/a;

    invoke-direct {v0}, Lcom/oplus/camera/gl/a/a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->ak:Lcom/oplus/camera/gl/a/a;

    .line 322
    :cond_2
    new-instance v0, Lcom/oplus/camera/gl/p;

    invoke-direct {v0}, Lcom/oplus/camera/gl/p;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->n:Lcom/oplus/camera/gl/p;

    .line 323
    new-instance v0, Lcom/oplus/camera/gl/w;

    invoke-direct {v0}, Lcom/oplus/camera/gl/w;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->o:Lcom/oplus/camera/gl/w;

    .line 325
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    if-nez v0, :cond_3

    const-string v0, "com.oplus.multi.video.mode.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    new-instance v0, Lcom/oplus/camera/gl/b/f;

    invoke-direct {v0}, Lcom/oplus/camera/gl/b/f;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    if-eqz v0, :cond_4

    .line 330
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/f;->a()V

    :cond_4
    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "animateOpenEnd"

    .line 358
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/oplus/camera/ui/preview/h;->T:F

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 363
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public t()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/h;->d(I)V

    .line 370
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public u()Z
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->c:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/oplus/camera/ui/preview/h;->S:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public v()Z
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/h;->d:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 827
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public w()V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraScreenNail"

    const-string v2, "noModeChangeTask"

    .line 850
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 852
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/h;->aa:Z

    .line 853
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public x()Z
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/h;->aa:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 859
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public y()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "forceRequestRender"

    .line 863
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h;->ab:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 866
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/ui/preview/h$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/h$6;-><init>(Lcom/oplus/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public z()I
    .locals 0

    .line 913
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h;->M:Lcom/oplus/camera/gl/b/h;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->h()I

    move-result p0

    return p0
.end method

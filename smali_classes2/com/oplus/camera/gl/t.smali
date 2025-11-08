.class public abstract Lcom/oplus/camera/gl/t;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/gl/t$a;,
        Lcom/oplus/camera/gl/t$c;,
        Lcom/oplus/camera/gl/t$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Integer;

.field private static ai:Lcom/oplus/camera/ui/preview/v;

.field public static final b:Ljava/lang/Integer;

.field protected static final g:[F

.field protected static final h:[F

.field protected static final i:[F


# instance fields
.field protected A:Z

.field protected B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/gl/t$c;",
            ">;"
        }
    .end annotation
.end field

.field protected C:J

.field protected D:I

.field protected E:Z

.field protected F:[F

.field protected G:I

.field protected H:Z

.field protected I:Z

.field protected J:Landroid/media/Image;

.field protected K:Landroid/media/Image;

.field protected L:Lcom/oplus/camera/gl/b/f;

.field protected M:Lcom/oplus/camera/gl/b/h;

.field protected N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected P:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected Q:J

.field private R:Landroid/graphics/SurfaceTexture;

.field private final S:[F

.field private volatile T:Z

.field private volatile U:Lcom/oplus/camera/screen/out/e;

.field private final V:Ljava/util/concurrent/locks/Lock;

.field private W:Z

.field private X:F

.field private Y:I

.field private Z:I

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/aps/util/CameraApsResult;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/oplus/camera/aps/util/CameraApsResult;

.field private final ac:Ljava/lang/Object;

.field private ad:J

.field private ae:[F

.field private af:I

.field private ag:Lcom/oplus/camera/gl/s;

.field private ah:Lcom/oplus/camera/ui/preview/y;

.field private volatile aj:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/gl/t$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final k:Ljava/lang/Object;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/gl/g;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lcom/oplus/camera/gl/s;

.field protected n:Lcom/oplus/camera/gl/p;

.field protected o:Lcom/oplus/camera/gl/w;

.field protected p:Landroid/os/Handler;

.field protected q:Lcom/oplus/camera/ui/preview/h$c;

.field protected r:Lcom/oplus/camera/ui/preview/h$b;

.field protected final s:Ljava/lang/Object;

.field protected t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/gl/t$b;",
            ">;"
        }
    .end annotation
.end field

.field protected u:Lcom/oplus/camera/ui/preview/a/t;

.field protected v:Lcom/oplus/camera/gl/GLRootView;

.field protected w:I

.field protected x:I

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    const/16 v0, 0x10

    .line 86
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oplus/camera/gl/t;->g:[F

    .line 87
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oplus/camera/gl/t;->h:[F

    .line 88
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oplus/camera/gl/t;->i:[F

    .line 159
    new-instance v0, Lcom/oplus/camera/ui/preview/v;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/preview/v;-><init>(FF)V

    sput-object v0, Lcom/oplus/camera/gl/t;->ai:Lcom/oplus/camera/ui/preview/v;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->c:Z

    .line 81
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->d:Z

    .line 82
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->e:Z

    .line 83
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->f:Z

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->m:Lcom/oplus/camera/gl/s;

    .line 110
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->n:Lcom/oplus/camera/gl/p;

    .line 111
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->o:Lcom/oplus/camera/gl/w;

    .line 112
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/gl/t;->p:Landroid/os/Handler;

    .line 113
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->q:Lcom/oplus/camera/ui/preview/h$c;

    .line 114
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->r:Lcom/oplus/camera/ui/preview/h$b;

    .line 115
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    .line 117
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    .line 118
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->v:Lcom/oplus/camera/gl/GLRootView;

    .line 121
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->y:Z

    .line 122
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->z:Z

    .line 123
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->A:Z

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 125
    iput-wide v2, p0, Lcom/oplus/camera/gl/t;->C:J

    .line 126
    iput v0, p0, Lcom/oplus/camera/gl/t;->D:I

    .line 127
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->E:Z

    const/16 v4, 0x10

    .line 128
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->F:[F

    const/16 v5, 0x5a

    .line 129
    iput v5, p0, Lcom/oplus/camera/gl/t;->G:I

    .line 130
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->H:Z

    .line 131
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->I:Z

    .line 132
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    .line 133
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    .line 134
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    .line 135
    new-instance v5, Lcom/oplus/camera/gl/b/h;

    invoke-direct {v5}, Lcom/oplus/camera/gl/b/h;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->M:Lcom/oplus/camera/gl/b/h;

    .line 136
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->N:Ljava/util/Set;

    .line 137
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->O:Ljava/util/Set;

    .line 138
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->P:Ljava/util/Set;

    const-wide/16 v5, -0x1

    .line 139
    iput-wide v5, p0, Lcom/oplus/camera/gl/t;->Q:J

    .line 141
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    .line 142
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->S:[F

    .line 143
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->T:Z

    .line 144
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->U:Lcom/oplus/camera/screen/out/e;

    .line 145
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->V:Ljava/util/concurrent/locks/Lock;

    .line 146
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->W:Z

    const/4 v5, 0x0

    .line 147
    iput v5, p0, Lcom/oplus/camera/gl/t;->X:F

    .line 148
    iput v0, p0, Lcom/oplus/camera/gl/t;->Y:I

    .line 149
    iput v0, p0, Lcom/oplus/camera/gl/t;->Z:I

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    .line 151
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 152
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/gl/t;->ac:Ljava/lang/Object;

    .line 153
    iput-wide v2, p0, Lcom/oplus/camera/gl/t;->ad:J

    .line 154
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/oplus/camera/gl/t;->ae:[F

    const/4 v2, 0x1

    .line 155
    iput v2, p0, Lcom/oplus/camera/gl/t;->af:I

    .line 156
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    .line 158
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    .line 160
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->aj:Z

    const-string v1, "com.oplus.preview.buffer.cache.support"

    .line 300
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    iput v1, p0, Lcom/oplus/camera/gl/t;->af:I

    .line 302
    sget-object p0, Lcom/oplus/camera/gl/t;->ai:Lcom/oplus/camera/ui/preview/v;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/v;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)Lcom/oplus/camera/gl/t$a;
    .locals 9

    .line 619
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 620
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 621
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/gl/t;->b(I)J

    move-result-wide v2

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peekMatchedPreview, which: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SurfaceTextureScreenNail"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-object v4, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    const/4 v5, 0x1

    if-ne v4, p1, :cond_4

    .line 626
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 627
    :try_start_0
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    sget-object v6, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/t$b;

    .line 628
    iget-object v6, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    sub-int/2addr v0, v5

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/t$a;

    .line 629
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/t$a;

    .line 630
    invoke-virtual {v0}, Lcom/oplus/camera/gl/t$a;->b()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/oplus/camera/gl/t$a;->b()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    move-object p0, v0

    :cond_0
    if-eqz v4, :cond_1

    .line 632
    iget-boolean v0, v4, Lcom/oplus/camera/gl/t$b;->g:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/gl/t$a;->b()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    .line 633
    :cond_3
    :goto_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    .line 634
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    move p1, v5

    :goto_1
    if-ge p1, v0, :cond_6

    .line 638
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/t$a;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/t$a;->a()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-nez v4, :cond_5

    .line 639
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/t$a;

    return-object p0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    move p1, v5

    :cond_7
    add-int/lit8 v4, v0, -0x1

    if-ge p1, v4, :cond_9

    .line 644
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/t$a;

    .line 645
    iget-object v6, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/gl/t$a;

    .line 647
    invoke-virtual {v4}, Lcom/oplus/camera/gl/t$a;->a()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-gez v7, :cond_7

    invoke-virtual {v6}, Lcom/oplus/camera/gl/t$a;->a()J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-gez v7, :cond_7

    .line 648
    invoke-virtual {v4}, Lcom/oplus/camera/gl/t$a;->a()J

    move-result-wide p0

    sub-long p0, v2, p0

    invoke-virtual {v6}, Lcom/oplus/camera/gl/t$a;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_8

    goto :goto_2

    :cond_8
    move-object v4, v6

    :goto_2
    return-object v4

    :cond_9
    if-le v0, v5, :cond_a

    .line 652
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/gl/t$a;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/t$a;->a()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-ltz p1, :cond_a

    .line 653
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/t$a;

    return-object p0

    :cond_a
    return-object v1
.end method

.method private a(Lcom/oplus/camera/aps/util/CameraApsResult;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;)V
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->r:Lcom/oplus/camera/ui/preview/h$b;

    if-eqz v0, :cond_2

    .line 1083
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/h$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    if-nez v0, :cond_1

    .line 1088
    new-instance v0, Lcom/oplus/camera/ui/preview/y;

    invoke-direct {v0}, Lcom/oplus/camera/ui/preview/y;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    iget-object v1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/y;->a(Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1092
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    iget-object v1, p0, Lcom/oplus/camera/gl/t;->r:Lcom/oplus/camera/ui/preview/h$b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/y;->a(Lcom/oplus/camera/ui/preview/h$b;)V

    .line 1093
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/t;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/t;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/y;->a(II)V

    .line 1094
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/y;->a(Lcom/oplus/camera/aps/util/CameraApsResult;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;IIII)V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    :cond_0
    const/4 v0, 0x2

    .line 929
    invoke-interface {p1, v0}, Lcom/oplus/camera/gl/h;->a(I)V

    .line 931
    div-int/2addr p4, v0

    add-int/2addr p2, p4

    .line 932
    div-int/2addr p5, v0

    add-int/2addr p3, p5

    int-to-float p4, p2

    int-to-float p5, p3

    .line 934
    invoke-interface {p1, p4, p5}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 936
    iget-boolean p4, p0, Lcom/oplus/camera/gl/t;->W:Z

    const/4 p5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p4, :cond_2

    .line 937
    iget p4, p0, Lcom/oplus/camera/gl/t;->X:F

    sub-float/2addr p4, p5

    const v2, 0x3a83126f    # 0.001f

    cmpg-float p4, p4, v2

    if-gez p4, :cond_1

    const-string p4, "com.oplus.tunning.video.eis.preview.scale"

    .line 938
    invoke-static {p4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p4

    iput p4, p0, Lcom/oplus/camera/gl/t;->X:F

    .line 941
    :cond_1
    iget p4, p0, Lcom/oplus/camera/gl/t;->X:F

    neg-float v2, p4

    invoke-interface {p1, p4, v2, v1}, Lcom/oplus/camera/gl/h;->a(FFF)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object p4, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p4}, Lcom/oplus/camera/ui/preview/a/t;->l()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 943
    iget-object p4, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p4}, Lcom/oplus/camera/ui/preview/a/t;->m()F

    move-result p4

    .line 944
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/a/t;->n()F

    move-result v2

    neg-float v2, v2

    .line 946
    invoke-interface {p1, p4, v2, v1}, Lcom/oplus/camera/gl/h;->a(FFF)V

    goto :goto_0

    :cond_3
    const/high16 p4, -0x40800000    # -1.0f

    .line 948
    invoke-interface {p1, v1, p4, v1}, Lcom/oplus/camera/gl/h;->a(FFF)V

    .line 951
    :goto_0
    iget p4, p0, Lcom/oplus/camera/gl/t;->G:I

    const/16 v2, 0x5a

    if-eq p4, v2, :cond_4

    sub-int/2addr p4, v2

    add-int/lit16 p4, p4, 0x168

    .line 952
    rem-int/lit16 p4, p4, 0x168

    int-to-float p4, p4

    .line 955
    invoke-interface {p1, p4, p5, p5, v1}, Lcom/oplus/camera/gl/h;->a(FFFF)V

    :cond_4
    neg-int p2, p2

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    .line 958
    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 960
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_5

    .line 961
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 964
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->F:[F

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/t;->a([F)V

    .line 966
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p1

    if-ne v0, p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_6

    .line 967
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/gl/t;->C:J

    .line 970
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-wide p2, p0, Lcom/oplus/camera/gl/t;->C:J

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/ui/preview/a/t;->b(J)V

    .line 971
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object p0, p0, Lcom/oplus/camera/gl/t;->F:[F

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/preview/a/t;->a([F)V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII)V
    .locals 7

    .line 1098
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ah:Lcom/oplus/camera/ui/preview/y;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1099
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/y;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII)V

    :cond_0
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/aps/util/CameraApsResult;)V
    .locals 6

    .line 579
    invoke-direct {p0, p3}, Lcom/oplus/camera/gl/t;->b(Lcom/oplus/camera/aps/util/CameraApsResult;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 581
    :goto_1
    iget-boolean v3, p0, Lcom/oplus/camera/gl/t;->E:Z

    if-eqz v3, :cond_d

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->p()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 582
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->o()I

    move-result v3

    .line 583
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v5, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    .line 584
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/gl/t$a;

    iget-object v5, v5, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    invoke-interface {v4, p2, v5}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v2

    :goto_3
    if-nez v0, :cond_5

    .line 585
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/t$a;

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    .line 586
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/t$a;

    goto :goto_4

    .line 587
    :cond_6
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->s()I

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/oplus/camera/gl/t$a;

    iget v4, p0, Lcom/oplus/camera/gl/t;->w:I

    iget v5, p0, Lcom/oplus/camera/gl/t;->x:I

    invoke-direct {v1, v4, v5}, Lcom/oplus/camera/gl/t$a;-><init>(II)V

    goto :goto_4

    .line 588
    :cond_7
    new-instance v1, Lcom/oplus/camera/gl/t$a;

    const/16 v4, 0x10

    new-array v4, v4, [F

    invoke-direct {v1, p3, p1, v4}, Lcom/oplus/camera/gl/t$a;-><init>(Lcom/oplus/camera/aps/util/CameraApsResult;Lcom/oplus/camera/gl/h;[F)V

    .line 589
    :goto_4
    iget-object v4, v1, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_8

    .line 592
    iput-object v4, p0, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    :cond_8
    if-eqz v4, :cond_a

    .line 596
    iget-object v5, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v5, p1, p2, v4, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v1, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 597
    iget-object p1, v1, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    goto :goto_5

    :cond_9
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/s;->a(Landroid/hardware/camera2/CaptureResult;)V

    if-eqz v0, :cond_b

    .line 600
    iget-object p1, v1, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    iput-object p1, p0, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    goto :goto_6

    .line 603
    :cond_a
    iget-object p1, v1, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->addRef()V

    .line 604
    iget-object p1, v1, Lcom/oplus/camera/gl/t$a;->d:[F

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/t;->a([F)V

    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    .line 607
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_c

    .line 608
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/gl/t$a;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/t$a;->c()V

    .line 611
    :cond_c
    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->n()V

    :cond_d
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;[F)V
    .locals 8

    if-eqz p3, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1368
    :cond_0
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    invoke-virtual {p3, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 1372
    :cond_1
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v6

    .line 1373
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v7

    .line 1375
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1376
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 1379
    :cond_2
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    const/4 v0, 0x0

    int-to-float v1, v7

    .line 1380
    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/gl/h;->a(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1381
    invoke-interface {p1, v1, v0, v1}, Lcom/oplus/camera/gl/h;->a(FFF)V

    .line 1383
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->F:[F

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/t;->a([F)V

    if-eqz p4, :cond_3

    goto :goto_0

    .line 1384
    :cond_3
    iget-object p4, p0, Lcom/oplus/camera/gl/t;->F:[F

    :goto_0
    move-object v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 1385
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    .line 1387
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->j()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/oplus/camera/gl/s;->a(J)V

    .line 1388
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->k()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/oplus/camera/gl/s;->b(J)V

    .line 1389
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->s()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/oplus/camera/gl/s;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/t;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->n()V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V
    .locals 7

    .line 1014
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v2}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v2}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    const v3, 0x8d65

    iget-object v4, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    .line 1021
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/g;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/g;->e()I

    move-result v4

    iget-wide v5, p0, Lcom/oplus/camera/gl/t;->ad:J

    .line 1020
    invoke-static {v2, v3, v4, v5, v6}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 1024
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b(I)V

    .line 1025
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_2

    .line 1028
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 1025
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v14, p4

    .line 773
    sget-object v1, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "CameraCapturePerformance.capturePreview"

    const-string v4, "11ct_capturePreview"

    invoke-static {v3, v4, v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 777
    iget-object v1, v7, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    iget-object v2, v7, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    .line 779
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 781
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/oplus/camera/gl/t$b;

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 785
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->h()I

    move-result v1

    .line 786
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->i()I

    move-result v2

    .line 788
    sget-object v3, Lcom/oplus/camera/gl/t$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/16 v19, 0x0

    if-nez v3, :cond_8

    sget-object v3, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 790
    :cond_0
    sget-object v3, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v15, :cond_4

    if-eqz v14, :cond_4

    .line 791
    sget-object v3, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    if-ne v3, v14, :cond_1

    .line 792
    iget-object v3, v7, Lcom/oplus/camera/gl/t;->n:Lcom/oplus/camera/gl/p;

    invoke-virtual {v15}, Lcom/oplus/camera/gl/t$b;->b()I

    move-result v6

    .line 793
    invoke-virtual {v15}, Lcom/oplus/camera/gl/t$b;->a()Z

    move-result v9

    .line 792
    invoke-virtual {v3, v1, v2, v6, v9}, Lcom/oplus/camera/gl/p;->a(IIIZ)V

    .line 794
    iget-object v3, v7, Lcom/oplus/camera/gl/t;->n:Lcom/oplus/camera/gl/p;

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v6

    invoke-virtual {v3, v6, v1, v2}, Lcom/oplus/camera/gl/p;->a(III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 796
    invoke-virtual {v15, v3}, Lcom/oplus/camera/gl/t$b;->a(Landroid/graphics/Bitmap;)V

    .line 799
    :cond_1
    iget v3, v7, Lcom/oplus/camera/gl/t;->G:I

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_2

    .line 800
    iget-object v3, v7, Lcom/oplus/camera/gl/t;->o:Lcom/oplus/camera/gl/w;

    invoke-virtual {v3, v8}, Lcom/oplus/camera/gl/w;->a(Lcom/oplus/camera/gl/s;)I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/oplus/camera/util/Util;->c(III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/oplus/camera/util/Util;->c(III)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 805
    iget-boolean v1, v15, Lcom/oplus/camera/gl/t$b;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->j()J

    move-result-wide v4

    :cond_3
    move-wide v10, v4

    .line 806
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/gl/t;->a(IJJ)V

    move-object v3, v14

    move-object v6, v15

    move-wide v14, v10

    move-object v11, v9

    goto/16 :goto_3

    .line 807
    :cond_4
    sget-object v3, Lcom/oplus/camera/gl/t$b;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v15, :cond_6

    .line 808
    div-int/lit8 v1, v1, 0x14

    .line 809
    div-int/lit8 v2, v2, 0x14

    .line 811
    monitor-enter p0

    .line 812
    :try_start_1
    iget-object v3, v7, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    if-eqz v3, :cond_5

    iget-boolean v3, v7, Lcom/oplus/camera/gl/t;->H:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    .line 813
    new-array v3, v3, [F

    const/4 v6, 0x0

    .line 814
    invoke-static {v3, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 815
    iget-object v6, v7, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v6}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v6

    move-object/from16 v9, p2

    invoke-direct {v7, v9, v6, v8, v3}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;[F)V

    .line 817
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    const/16 v6, 0xa

    invoke-virtual {v7, v3, v1, v2, v6}, Lcom/oplus/camera/gl/t;->a(IIII)I

    move-result v3

    .line 820
    invoke-static {v3, v1, v2}, Lcom/oplus/camera/util/Util;->c(III)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/gl/t;->i()V

    const-wide/16 v12, 0x0

    const-wide/16 v1, 0x0

    const/16 v16, 0x0

    move-object v9, v15

    move-object/from16 v10, p4

    move-object v3, v14

    move-object v6, v15

    move-wide v14, v1

    .line 823
    invoke-virtual/range {v9 .. v16}, Lcom/oplus/camera/gl/t$b;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V

    const/4 v1, 0x1

    .line 824
    invoke-virtual {v7, v1}, Lcom/oplus/camera/gl/t;->g(Z)V

    .line 826
    sget-object v1, Lcom/oplus/camera/gl/t$b;->e:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 817
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    move-object v3, v14

    move-object v6, v15

    .line 827
    invoke-static {}, Lcom/oplus/camera/util/Util;->b()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 828
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v9

    const-string v10, "preview"

    invoke-static {v9, v1, v2, v10}, Lcom/oplus/camera/util/Util;->a(IIILjava/lang/String;)V

    :cond_7
    :goto_1
    move-wide v14, v4

    move-object/from16 v11, v19

    goto :goto_3

    :cond_8
    :goto_2
    move-object v3, v14

    move-object v6, v15

    .line 789
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v9

    invoke-static {v9, v1, v2}, Lcom/oplus/camera/util/Util;->c(III)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v11, v1

    move-wide v14, v4

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v11, :cond_b

    .line 832
    sget-object v1, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    if-ne v1, v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/camera/gl/s;->s()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_4

    :cond_9
    move-object/from16 v16, v19

    :goto_4
    move-object v9, v6

    move-object/from16 v10, p4

    move-wide/from16 v12, p5

    .line 833
    invoke-virtual/range {v9 .. v16}, Lcom/oplus/camera/gl/t$b;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V

    .line 835
    sget-object v1, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v6, Lcom/oplus/camera/gl/t$b;->g:Z

    if-nez v1, :cond_b

    .line 836
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;)V

    .line 840
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capturePreview, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rawTexture: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", which: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dump bitmap use time: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    .line 840
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraCapturePerformance.capturePreview"

    const-string v1, "11ct_capturePreview"

    .line 843
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 779
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private final a(Lcom/oplus/camera/aps/util/CameraApsResult;)Z
    .locals 8

    .line 1211
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/gl/t;->A:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1213
    monitor-exit v0

    return v2

    .line 1214
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->P:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1215
    monitor-exit v0

    return v3

    :cond_1
    if-eqz p1, :cond_3

    .line 1217
    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1218
    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    iget-wide p0, p0, Lcom/oplus/camera/gl/t;->Q:J

    const-wide/16 v6, 0x3

    add-long/2addr p0, v6

    cmp-long p0, v4, p0

    if-gtz p0, :cond_2

    goto :goto_0

    .line 1221
    :cond_2
    monitor-exit v0

    return v3

    .line 1219
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Lcom/oplus/camera/gl/h;)Z
    .locals 0

    .line 1104
    sget-object p0, Lcom/oplus/camera/gl/t;->ai:Lcom/oplus/camera/ui/preview/v;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/v;->a()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1108
    :cond_0
    sget-object p0, Lcom/oplus/camera/gl/t;->ai:Lcom/oplus/camera/ui/preview/v;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/v;->b()F

    move-result p0

    .line 1110
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->c()V

    .line 1111
    invoke-interface {p1, p0}, Lcom/oplus/camera/gl/h;->a(F)V

    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/oplus/camera/gl/h;)V
    .locals 0

    .line 1116
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->f()V

    return-void
.end method

.method private b(Lcom/oplus/camera/gl/h;IIII)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/t;->a(I)V

    .line 977
    invoke-static {}, Lcom/oplus/camera/util/Util;->b()Z

    move-result v1

    .line 978
    sget-object v2, Lcom/oplus/camera/gl/t$b;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/gl/t;->b(Ljava/lang/String;)Z

    move-result v9

    .line 979
    sget-object v2, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/gl/t;->b(Ljava/lang/String;)Z

    move-result v10

    .line 980
    sget-object v2, Lcom/oplus/camera/gl/t$b;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/gl/t;->b(Ljava/lang/String;)Z

    move-result v11

    .line 981
    iget-boolean v2, v7, Lcom/oplus/camera/gl/t;->E:Z

    if-eqz v2, :cond_4

    if-nez v10, :cond_0

    if-nez v1, :cond_0

    if-nez v9, :cond_0

    if-eqz v11, :cond_4

    .line 982
    :cond_0
    iget-object v2, v7, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/t$a;

    iget-object v12, v2, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 983
    iget-object v2, v7, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v3, v7, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/g;

    invoke-interface {v2, p1, v3, v12, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_1

    .line 986
    iget-object v1, v7, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v2, v7, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/g;

    invoke-interface {v1, p1, v2, v12, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v12

    .line 987
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    goto :goto_0

    .line 989
    :cond_1
    iget-object v1, v7, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/g;

    iget-object v1, v7, Lcom/oplus/camera/gl/t;->F:[F

    invoke-virtual {p0, p1, v0, v12, v1}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V

    :goto_0
    if-eqz v10, :cond_2

    .line 993
    sget-object v1, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    :cond_2
    if-eqz v9, :cond_3

    .line 997
    sget-object v1, Lcom/oplus/camera/gl/t$b;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    :cond_3
    if-eqz v11, :cond_4

    .line 1001
    sget-object v1, Lcom/oplus/camera/gl/t$b;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    .line 1005
    :cond_4
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 1006
    iget-object v0, v7, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;IIII)Z

    .line 1008
    iget-object v0, v7, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_5

    .line 1009
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    :cond_5
    return-void
.end method

.method private final b(Lcom/oplus/camera/aps/util/CameraApsResult;)Z
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/aps/util/CameraApsResult;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/gl/t;->z:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 757
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c(Lcom/oplus/camera/gl/h;IIII)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1033
    iget-object v1, v0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1034
    :try_start_0
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    .line 1036
    invoke-virtual {v2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    .line 1037
    invoke-virtual {v2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1038
    iget-boolean v2, v0, Lcom/oplus/camera/gl/t;->H:Z

    invoke-virtual {v0, v2}, Lcom/oplus/camera/gl/t;->i(Z)V

    .line 1040
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iget-object v4, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    .line 1041
    invoke-virtual {v4}, Lcom/oplus/camera/gl/b/f;->c()I

    move-result v4

    iget-wide v5, v0, Lcom/oplus/camera/gl/t;->ad:J

    const v7, 0x8d65

    .line 1040
    invoke-static {v2, v7, v4, v5, v6}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 1042
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iget-object v4, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    .line 1043
    invoke-virtual {v4}, Lcom/oplus/camera/gl/b/f;->d()I

    move-result v4

    iget-wide v5, v0, Lcom/oplus/camera/gl/t;->ad:J

    .line 1042
    invoke-static {v2, v7, v4, v5, v6}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 1045
    new-instance v12, Landroid/util/Size;

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-direct {v12, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 1046
    new-instance v13, Landroid/util/Size;

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-direct {v13, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 1048
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v4, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/oplus/camera/ui/preview/a/t;->b(J)V

    .line 1049
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->e()Lcom/oplus/camera/gl/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/oplus/camera/gl/g;->b(Z)V

    .line 1051
    iget-object v4, v0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->e()Lcom/oplus/camera/gl/g;

    move-result-object v6

    iget v11, v0, Lcom/oplus/camera/gl/t;->D:I

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-interface/range {v4 .. v11}, Lcom/oplus/camera/ui/preview/a/t;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/preview/a/t;->j(I)Lcom/oplus/camera/ui/preview/a/y;

    move-result-object v2

    .line 1054
    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v10

    .line 1055
    iget-object v8, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->c()I

    move-result v11

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->M:Lcom/oplus/camera/gl/b/h;

    .line 1056
    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/h;->m()I

    move-result v14

    const/4 v15, 0x1

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->M:Lcom/oplus/camera/gl/b/h;

    move-object/from16 v9, p1

    move-object/from16 v16, v2

    .line 1055
    invoke-virtual/range {v8 .. v16}, Lcom/oplus/camera/gl/b/f;->a(Lcom/oplus/camera/gl/h;IILandroid/util/Size;Landroid/util/Size;IZLcom/oplus/camera/gl/b/h;)I

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v8, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->d()I

    move-result v10

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->c()I

    move-result v11

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->M:Lcom/oplus/camera/gl/b/h;

    .line 1060
    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/h;->m()I

    move-result v14

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/oplus/camera/gl/t;->M:Lcom/oplus/camera/gl/b/h;

    move-object/from16 v9, p1

    move-object/from16 v16, v2

    .line 1059
    invoke-virtual/range {v8 .. v16}, Lcom/oplus/camera/gl/b/f;->a(Lcom/oplus/camera/gl/h;IILandroid/util/Size;Landroid/util/Size;IZLcom/oplus/camera/gl/b/h;)I

    .line 1064
    :goto_0
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 1065
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    const/4 v2, 0x0

    .line 1066
    iput-object v2, v0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    .line 1067
    iput-object v2, v0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    .line 1068
    iput-boolean v3, v0, Lcom/oplus/camera/gl/t;->d:Z

    goto :goto_1

    .line 1070
    :cond_1
    iget-object v2, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    .line 1071
    new-array v6, v2, [F

    const/4 v2, 0x0

    .line 1072
    invoke-static {v6, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1073
    iget-object v0, v0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v5

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-interface/range {v4 .. v10}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 1076
    :cond_2
    :goto_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d(Lcom/oplus/camera/gl/h;IIII)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    if-nez v1, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1125
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1126
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->ac:Ljava/lang/Object;

    monitor-enter v2

    .line 1127
    :try_start_0
    iget-object v3, v8, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1128
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 1129
    invoke-virtual {v1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/oplus/camera/gl/t;->C:J

    goto :goto_1

    :cond_0
    const-string v3, "SurfaceTextureScreenNail"

    const-string v4, "drawNormalPreview, mBufferList is empty"

    .line 1131
    invoke-static {v3, v4}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 1136
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    :cond_2
    move-object v6, v1

    .line 1137
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-direct {v8, v6, v0, v1}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/aps/util/CameraApsResult;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;)V

    .line 1138
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;)Z

    move-result v1

    .line 1140
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v2

    .line 1141
    :try_start_1
    iget-object v3, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/g;

    if-eqz v6, :cond_3

    iget-object v4, v8, Lcom/oplus/camera/gl/t;->N:Ljava/util/Set;

    .line 1142
    invoke-virtual {v6}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v7

    .line 1141
    :goto_3
    invoke-virtual {v3, v4}, Lcom/oplus/camera/gl/g;->b(Z)V

    .line 1143
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1145
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/g;

    iget-wide v3, v8, Lcom/oplus/camera/gl/t;->C:J

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/gl/g;->b(J)V

    if-eqz v6, :cond_6

    .line 1147
    invoke-virtual {v6}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1148
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->U:Lcom/oplus/camera/screen/out/e;

    const v3, 0x8d65

    if-eqz v2, :cond_5

    .line 1149
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->V:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1151
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->U:Lcom/oplus/camera/screen/out/e;

    if-eqz v2, :cond_4

    .line 1152
    invoke-virtual {v6}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iget-object v4, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    .line 1153
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/g;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/g;->e()I

    move-result v4

    iget-wide v9, v8, Lcom/oplus/camera/gl/t;->ad:J

    .line 1152
    invoke-static {v2, v3, v4, v9, v10}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 1154
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->U:Lcom/oplus/camera/screen/out/e;

    invoke-virtual {v6}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    iget-object v4, v8, Lcom/oplus/camera/gl/t;->V:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/screen/out/e;->a(Landroid/hardware/HardwareBuffer;Ljava/util/concurrent/locks/Lock;)V

    .line 1157
    :cond_4
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->V:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    .line 1159
    :cond_5
    invoke-virtual {v6}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iget-object v4, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    .line 1160
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/g;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/g;->e()I

    move-result v4

    iget-wide v9, v8, Lcom/oplus/camera/gl/t;->ad:J

    .line 1159
    invoke-static {v2, v3, v4, v9, v10}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 1164
    :cond_6
    :goto_4
    iget-object v2, v8, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-wide v3, v8, Lcom/oplus/camera/gl/t;->C:J

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/ui/preview/a/t;->b(J)V

    .line 1166
    iget-object v9, v8, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v2, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/oplus/camera/gl/g;

    iget v2, v8, Lcom/oplus/camera/gl/t;->D:I

    iget-boolean v3, v8, Lcom/oplus/camera/gl/t;->W:Z

    move-object/from16 v10, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v2

    move-object/from16 v17, v6

    move/from16 v18, v3

    invoke-interface/range {v9 .. v18}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIIILcom/oplus/camera/aps/util/CameraApsResult;Z)Z

    move-result v9

    if-eqz v1, :cond_7

    .line 1170
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/gl/t;->b(Lcom/oplus/camera/gl/h;)V

    .line 1173
    :cond_7
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/oplus/camera/gl/g;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v10, v6

    move/from16 v6, p4

    move v11, v7

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII)V

    .line 1174
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-direct {v8, v0, v1, v10}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/aps/util/CameraApsResult;)V

    if-eqz v9, :cond_b

    .line 1177
    monitor-enter p0

    if-eqz v10, :cond_8

    .line 1181
    :try_start_2
    invoke-virtual {v10}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1184
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const v2, 0xf4240

    div-int v7, v1, v2

    goto :goto_5

    :cond_8
    move v7, v11

    .line 1192
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v8, Lcom/oplus/camera/gl/t;->C:J

    invoke-static {v1, v2, v3, v4, v7}, Lcom/oplus/camera/perf/FluencyPerformance;->a(JJI)V

    if-eqz v10, :cond_a

    .line 1194
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eq v10, v1, :cond_a

    .line 1195
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz v1, :cond_9

    .line 1196
    iget-object v1, v8, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v1}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    .line 1199
    :cond_9
    iput-object v10, v8, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 1201
    :cond_a
    monitor-exit p0

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_b
    if-eqz v10, :cond_c

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawNormalPreview, skip draw frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceTextureScreenNail"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v10}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    :cond_c
    :goto_6
    move v1, v9

    move v7, v11

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 1143
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_d
    return-void
.end method

.method private n()V
    .locals 14

    .line 661
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 663
    :try_start_1
    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    :goto_0
    move-object v11, v2

    goto :goto_1

    .line 664
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/gl/t;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v11, v3

    .line 666
    :goto_1
    invoke-direct {p0, v11}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/Integer;)Lcom/oplus/camera/gl/t$a;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    const-string v5, "SurfaceTextureScreenNail"

    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryCapturePreview, matched: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/gl/t$c;

    iget-wide v12, v5, Lcom/oplus/camera/gl/t$c;->a:J

    .line 672
    iget-object v7, v2, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    if-eqz v7, :cond_3

    .line 675
    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->t()[F

    move-result-object v5

    if-eqz v5, :cond_2

    .line 676
    iget-object v5, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/t$a;

    iget-object v8, v4, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 677
    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->c()Lcom/oplus/camera/gl/h;

    move-result-object v4

    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->t()[F

    move-result-object v5

    invoke-direct {p0, v4, v7, v8, v5}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;[F)V

    .line 678
    sget-object v5, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->c()Lcom/oplus/camera/gl/h;

    move-result-object v6

    move-object v4, p0

    move-object v7, v8

    move-object v8, v11

    move-wide v9, v12

    invoke-direct/range {v4 .. v10}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    goto/16 :goto_2

    .line 680
    :cond_2
    sget-object v5, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->c()Lcom/oplus/camera/gl/h;

    move-result-object v6

    move-object v4, p0

    move-object v8, v11

    move-wide v9, v12

    invoke-direct/range {v4 .. v10}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    goto/16 :goto_2

    .line 683
    :cond_3
    iget-object v5, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v5}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oplus/camera/gl/t;->C:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 684
    invoke-virtual {v5}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 685
    invoke-virtual {v5}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 686
    iget-object v5, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v5}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    const v6, 0x8d65

    iget-object v7, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    .line 687
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/gl/g;

    invoke-virtual {v7}, Lcom/oplus/camera/gl/g;->e()I

    move-result v7

    iget-wide v8, p0, Lcom/oplus/camera/gl/t;->ad:J

    .line 686
    invoke-static {v5, v6, v7, v8, v9}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 690
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/gl/t$a;

    iget-object v7, v5, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 691
    iget-object v5, v2, Lcom/oplus/camera/gl/t$a;->c:Lcom/oplus/camera/gl/h;

    iget-object v6, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/g;

    iget-object v6, v2, Lcom/oplus/camera/gl/t$a;->d:[F

    invoke-virtual {p0, v5, v4, v7, v6}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V

    .line 692
    iget-object v4, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v4}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/oplus/camera/gl/s;->a(J)V

    .line 693
    iget-object v4, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v4}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/oplus/camera/gl/s;->b(J)V

    .line 694
    iget-object v4, v2, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v4}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/oplus/camera/gl/s;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 696
    sget-object v5, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/oplus/camera/gl/t$a;->c:Lcom/oplus/camera/gl/h;

    move-object v4, p0

    move-object v8, v11

    move-wide v9, v12

    invoke-direct/range {v4 .. v10}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    .line 699
    :goto_2
    sget-object v4, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    if-ne v4, v11, :cond_d

    .line 700
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->P:Ljava/util/Set;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 702
    :goto_3
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-boolean v5, p0, Lcom/oplus/camera/gl/t;->z:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    goto :goto_4

    :cond_5
    move v5, v6

    :goto_4
    if-le v4, v5, :cond_d

    .line 703
    invoke-direct {p0, v3}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/aps/util/CameraApsResult;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_d

    :cond_6
    const-string v4, "SurfaceTextureScreenNail"

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryCapturePreview, remove cache preview: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v4, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/t$a;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/t$a;->c()V

    goto :goto_3

    .line 709
    :cond_7
    iget-boolean v2, p0, Lcom/oplus/camera/gl/t;->A:Z

    if-nez v2, :cond_8

    .line 710
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->P:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/16 :goto_5

    .line 713
    :cond_8
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 714
    :try_start_2
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    sget-object v5, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 715
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 717
    :cond_9
    :try_start_5
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    sget-object v5, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/t$c;

    .line 718
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_a

    :try_start_6
    const-string p0, "SurfaceTextureScreenNail"

    const-string v2, "tryCapturePreview, Invalid category for TYPE_CAPTURE_ORIGIN"

    .line 721
    invoke-static {p0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    .line 725
    :cond_a
    :try_start_8
    iget-wide v7, v3, Lcom/oplus/camera/gl/t$c;->a:J

    .line 726
    sget-object v2, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/Integer;)Lcom/oplus/camera/gl/t$a;

    move-result-object v2

    if-nez v2, :cond_b

    const-string p0, "SurfaceTextureScreenNail"

    const-string v2, "tryCapturePreview, Invalid cachedCategory"

    .line 729
    invoke-static {p0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    .line 733
    :cond_b
    :try_start_a
    iget-object v5, v2, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    if-eqz v5, :cond_d

    .line 736
    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->t()[F

    move-result-object v2

    if-eqz v2, :cond_c

    .line 737
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/t$a;

    iget-object v6, v2, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 738
    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->c()Lcom/oplus/camera/gl/h;

    move-result-object v2

    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->t()[F

    move-result-object v3

    invoke-direct {p0, v2, v5, v6, v3}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;[F)V

    .line 739
    sget-object v3, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->c()Lcom/oplus/camera/gl/h;

    move-result-object v4

    move-object v2, p0

    move-object v5, v6

    move-object v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    goto :goto_5

    .line 741
    :cond_c
    sget-object v3, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->c()Lcom/oplus/camera/gl/h;

    move-result-object v4

    move-object v2, p0

    move-object v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/gl/t;->a(Ljava/lang/String;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Ljava/lang/Integer;J)V

    .line 745
    :cond_d
    :goto_5
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 746
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    return-void

    :catchall_0
    move-exception p0

    .line 718
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw p0

    :catchall_1
    move-exception p0

    .line 745
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p0

    :catchall_2
    move-exception p0

    .line 746
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw p0
.end method

.method private o()I
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1228
    :try_start_0
    invoke-direct {p0, v1}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/aps/util/CameraApsResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x19

    goto :goto_0

    .line 1229
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/gl/t;->z:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 1230
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final p()Z
    .locals 6

    .line 1241
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_0
    sget-object v1, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/gl/t;->b(I)J

    move-result-wide v1

    .line 1243
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    sget-object v4, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/t$b;

    .line 1245
    iget-wide v4, p0, Lcom/oplus/camera/gl/t;->C:J

    cmp-long p0, v4, v1

    if-ltz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-gtz p0, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    iget-boolean p0, v3, Lcom/oplus/camera/gl/t$b;->g:Z

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final q()Z
    .locals 4

    .line 1251
    sget-object v0, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/t;->b(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/t;->b(I)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract a(IIII)I
.end method

.method public a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/oplus/camera/gl/t;->O:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(I)V
    .locals 0

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/gl/t;->D:I

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(II)V
    .locals 5

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iput p1, p0, Lcom/oplus/camera/gl/t;->w:I

    .line 473
    iput p2, p0, Lcom/oplus/camera/gl/t;->x:I

    .line 475
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/t$a;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/t$a;->c()V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    new-instance v2, Lcom/oplus/camera/gl/t$a;

    iget v3, p0, Lcom/oplus/camera/gl/t;->w:I

    iget v4, p0, Lcom/oplus/camera/gl/t;->x:I

    invoke-direct {v2, v3, v4}, Lcom/oplus/camera/gl/t$a;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p0, :cond_1

    .line 484
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/t;->b(II)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 481
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(IJJ)V
    .locals 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapturePreviewTimestamp, which: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/oplus/camera/gl/t$c;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/oplus/camera/gl/t$c;-><init>(JJ)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object p2, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->v:Lcom/oplus/camera/gl/GLRootView;

    new-instance p2, Lcom/oplus/camera/gl/t$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/gl/t$1;-><init>(Lcom/oplus/camera/gl/t;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(J)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 257
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/t;->A:Z

    .line 258
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->P:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(JJ)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iput-wide p1, p0, Lcom/oplus/camera/gl/t;->Q:J

    .line 265
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->O:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCacheFrame, frameNumber: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SurfaceTextureScreenNail"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 266
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(JJJZZ)V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    sget-object v2, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    new-instance v3, Lcom/oplus/camera/gl/t$c;

    invoke-direct {v3, p3, p4, p5, p6}, Lcom/oplus/camera/gl/t$c;-><init>(JJ)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_0

    .line 239
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->P:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p8, :cond_1

    .line 243
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->N:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const-wide/16 v1, -0x1

    .line 247
    iput-wide v1, p0, Lcom/oplus/camera/gl/t;->Q:J

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->O:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const-string p0, "SurfaceTextureScreenNail"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted, frameNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", identity: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", quickJpeg: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", requestRender: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Landroid/media/Image;I)V
    .locals 4

    .line 1296
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, p2, :cond_1

    .line 1298
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    if-eqz v3, :cond_0

    .line 1299
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 1302
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    if-ne v1, p2, :cond_3

    .line 1304
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    if-eqz v3, :cond_2

    .line 1305
    iget-object v3, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 1308
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    .line 1311
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    if-eqz p1, :cond_7

    .line 1312
    iget-boolean p1, p0, Lcom/oplus/camera/gl/t;->e:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/gl/t;->f:Z

    if-eqz p1, :cond_4

    .line 1313
    invoke-virtual {p0, v3}, Lcom/oplus/camera/gl/t;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 1314
    invoke-virtual {p0}, Lcom/oplus/camera/gl/t;->m()V

    goto :goto_2

    :cond_4
    if-ne v2, p2, :cond_5

    .line 1319
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    .line 1320
    iput-object v3, p0, Lcom/oplus/camera/gl/t;->J:Landroid/media/Image;

    goto :goto_1

    :cond_5
    if-ne v1, p2, :cond_6

    .line 1322
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    .line 1323
    iput-object v3, p0, Lcom/oplus/camera/gl/t;->K:Landroid/media/Image;

    goto :goto_1

    :cond_6
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_7

    .line 1327
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 1331
    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/aps/util/CameraApsResult;Z)V
    .locals 6

    .line 847
    iget-wide v0, p0, Lcom/oplus/camera/gl/t;->C:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImageBuffer, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ac:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_3

    .line 853
    :try_start_0
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz v1, :cond_1

    .line 855
    invoke-virtual {v1}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    .line 856
    invoke-virtual {v1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->c(J)V

    goto :goto_0

    .line 860
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 861
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/a/t;->a()V

    .line 864
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v1, p0, Lcom/oplus/camera/gl/t;->af:I

    if-le p2, v1, :cond_4

    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    const/4 v1, 0x0

    .line 865
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/aps/util/CameraApsResult;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    .line 866
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {p2}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v2

    sget-object p2, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/t;->b(I)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    .line 867
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 868
    invoke-virtual {p2}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    .line 869
    invoke-virtual {p2}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->c(J)V

    const-string v1, "addImageBuffer.dropPreviewFrame"

    const-string v2, "65pv_dropPreviewFrame"

    .line 871
    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v1, "addImageBuffer.dropPreviewFrame"

    const-string v2, "65pv_dropPreviewFrame"

    .line 872
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SurfaceTextureScreenNail"

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addImageBuffer, remove image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 885
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/t;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void

    :catchall_0
    move-exception p0

    .line 878
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/gl/GLRootView;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/oplus/camera/gl/t;->v:Lcom/oplus/camera/gl/GLRootView;

    .line 312
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_0

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->v:Lcom/oplus/camera/gl/GLRootView;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/GLRootView;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;IIIIII)V
    .locals 14

    move-object v1, p0

    move-object v0, p1

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v2, p6

    move/from16 v3, p7

    .line 497
    monitor-enter p0

    .line 498
    :try_start_0
    iget-boolean v4, v1, Lcom/oplus/camera/gl/t;->T:Z

    if-eqz v4, :cond_c

    .line 499
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 503
    :cond_0
    iget-object v4, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    const/4 v13, 0x0

    if-eqz v4, :cond_1

    .line 504
    iget-object v4, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    iget-object v6, v1, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/gl/g;

    invoke-virtual {v6}, Lcom/oplus/camera/gl/g;->e()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 507
    :cond_1
    invoke-interface {p1, v5}, Lcom/oplus/camera/gl/h;->a(I)V

    .line 508
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->d()I

    move-result v4

    iput v4, v1, Lcom/oplus/camera/gl/t;->Y:I

    .line 509
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->e()I

    move-result v4

    iput v4, v1, Lcom/oplus/camera/gl/t;->Z:I

    .line 510
    invoke-interface {p1, v11, v12}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 511
    div-int/lit8 v4, v11, 0x2

    add-int v4, p2, v4

    .line 512
    div-int/lit8 v6, v12, 0x2

    add-int v6, p3, v6

    int-to-float v7, v4

    int-to-float v8, v6

    .line 514
    invoke-interface {p1, v7, v8}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 516
    iget-boolean v7, v1, Lcom/oplus/camera/gl/t;->W:Z

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v7, :cond_3

    .line 517
    iget v7, v1, Lcom/oplus/camera/gl/t;->X:F

    const/4 v10, 0x0

    sub-float/2addr v7, v10

    const v10, 0x3a83126f    # 0.001f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    const-string v7, "com.oplus.tunning.video.eis.preview.scale"

    .line 518
    invoke-static {v7}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v7

    iput v7, v1, Lcom/oplus/camera/gl/t;->X:F

    .line 521
    :cond_2
    iget v7, v1, Lcom/oplus/camera/gl/t;->X:F

    iget v10, v1, Lcom/oplus/camera/gl/t;->X:F

    neg-float v10, v10

    invoke-interface {p1, v7, v10, v9}, Lcom/oplus/camera/gl/h;->a(FFF)V

    goto :goto_0

    .line 523
    :cond_3
    invoke-interface {p1, v9, v8, v9}, Lcom/oplus/camera/gl/h;->a(FFF)V

    :goto_0
    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    .line 527
    invoke-interface {p1, v8, v9, v9}, Lcom/oplus/camera/gl/h;->a(FFF)V

    goto :goto_1

    :cond_4
    if-ne v2, v5, :cond_5

    .line 529
    invoke-interface {p1, v9, v8, v9}, Lcom/oplus/camera/gl/h;->a(FFF)V

    :cond_5
    :goto_1
    neg-int v2, v4

    int-to-float v2, v2

    neg-int v4, v6

    int-to-float v4, v4

    .line 532
    invoke-interface {p1, v2, v4}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 534
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    .line 535
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 538
    :cond_6
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->F:[F

    invoke-virtual {p0, v2}, Lcom/oplus/camera/gl/t;->a([F)V

    .line 539
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->F:[F

    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/preview/a/t;->a([F)V

    .line 541
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    if-eqz v2, :cond_7

    iget-boolean v2, v1, Lcom/oplus/camera/gl/t;->H:Z

    if-eqz v2, :cond_7

    .line 542
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    iget-object v3, v1, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    .line 543
    invoke-virtual {v3}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v5

    iget v10, v1, Lcom/oplus/camera/gl/t;->G:I

    move-object v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 542
    invoke-interface/range {v2 .. v10}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/b/f;Lcom/oplus/camera/gl/s;IIIII)Z

    move-result v2

    if-nez v2, :cond_a

    .line 544
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->ae:[F

    invoke-static {v2, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 545
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/b/f;->f()Lcom/oplus/camera/gl/s;

    move-result-object v3

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->ae:[F

    move-object v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    goto/16 :goto_2

    :cond_7
    if-nez v3, :cond_8

    .line 549
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v3, v1, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/oplus/camera/gl/g;

    iget v9, v1, Lcom/oplus/camera/gl/t;->G:I

    move-object v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v9}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIII)Z

    move-result v2

    if-nez v2, :cond_a

    .line 551
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/camera/gl/c;

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->F:[F

    move-object v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    goto/16 :goto_2

    :cond_8
    if-ne v7, v3, :cond_a

    .line 554
    iget-boolean v2, v1, Lcom/oplus/camera/gl/t;->E:Z

    if-eqz v2, :cond_a

    .line 555
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    .line 556
    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v3, v1, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    .line 557
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/oplus/camera/gl/g;

    iget v9, v1, Lcom/oplus/camera/gl/t;->D:I

    const/4 v10, 0x0

    move-object v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v10}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 559
    iget-object v3, v1, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->F:[F

    move-object v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    const/4 v2, 0x0

    .line 560
    iput-object v2, v1, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    goto :goto_2

    .line 561
    :cond_9
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v3, v1, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/oplus/camera/gl/g;

    iget v9, v1, Lcom/oplus/camera/gl/t;->D:I

    const/4 v10, 0x1

    move-object v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v10}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIIIZ)Z

    move-result v2

    if-nez v2, :cond_a

    .line 563
    iget-object v2, v1, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/camera/gl/c;

    iget-object v4, v1, Lcom/oplus/camera/gl/t;->F:[F

    move-object v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 569
    :cond_a
    :goto_2
    iget v2, v1, Lcom/oplus/camera/gl/t;->Y:I

    iget v3, v1, Lcom/oplus/camera/gl/t;->Z:I

    invoke-interface {p1, v2, v3}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 570
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 572
    iget-object v0, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_b

    .line 573
    iget-object v0, v1, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 575
    :cond_b
    monitor-exit p0

    return-void

    .line 500
    :cond_c
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 575
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;[F)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 1350
    :cond_0
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->n()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1351
    invoke-virtual {p3, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 1354
    :cond_1
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v5

    .line 1355
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v6

    .line 1356
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    const/4 p0, 0x0

    int-to-float p3, v6

    .line 1357
    invoke-interface {p1, p0, p3}, Lcom/oplus/camera/gl/h;->a(FF)V

    const/high16 p0, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1358
    invoke-interface {p1, p3, p0, p3}, Lcom/oplus/camera/gl/h;->a(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    .line 1359
    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 1360
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/t$b;ZZLjava/lang/String;)V
    .locals 3

    .line 170
    monitor-enter p0

    :try_start_0
    const-string v0, "SurfaceTextureScreenNail"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCapturePreviewCallback, cb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needCheckTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-boolean p3, p1, Lcom/oplus/camera/gl/t$b;->g:Z

    .line 175
    iput-boolean p2, p1, Lcom/oplus/camera/gl/t$b;->h:Z

    .line 177
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    iget-object p3, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    sget-object p1, Lcom/oplus/camera/gl/t$b;->c:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/t;->a(I)V

    .line 183
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    goto :goto_0

    .line 184
    :cond_0
    sget-object p1, Lcom/oplus/camera/gl/t$b;->e:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->q:Lcom/oplus/camera/ui/preview/h$c;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    .line 187
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 187
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/oplus/camera/screen/out/e;)V
    .locals 2

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPresentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->V:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1413
    iput-object p1, p0, Lcom/oplus/camera/gl/t;->U:Lcom/oplus/camera/screen/out/e;

    .line 1414
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->V:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->t:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCacheWhilePreview, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/gl/t;->z:Z

    .line 195
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([F)V
    .locals 3

    .line 1282
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->S:[F

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 1286
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/oplus/camera/gl/t;->S:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1287
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/gl/t;->S:[F

    array-length p1, p1

    new-array p1, p1, [F

    .line 1290
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->S:[F

    iget-object p0, p0, Lcom/oplus/camera/gl/t;->S:[F

    array-length p0, p0

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1291
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z
    .locals 8

    .line 889
    monitor-enter p0

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 894
    :cond_0
    invoke-static {}, Lcom/oplus/camera/statistics/model/PerformanceMsgData;->getRealtimeFrameRate()V

    .line 896
    iget-boolean v0, p0, Lcom/oplus/camera/gl/t;->T:Z

    if-nez v0, :cond_1

    .line 897
    monitor-exit p0

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 901
    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    const-string p2, "Surfacetexture.draw"

    const-string v0, "68pv_SurfacetextureDraw"

    .line 903
    sget-object v2, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p2, v0, v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 905
    invoke-direct/range {v2 .. v7}, Lcom/oplus/camera/gl/t;->a(Lcom/oplus/camera/gl/h;IIII)V

    .line 907
    iget-object p2, p0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/oplus/camera/gl/t;->H:Z

    if-eqz p2, :cond_3

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 908
    invoke-direct/range {v2 .. v7}, Lcom/oplus/camera/gl/t;->c(Lcom/oplus/camera/gl/h;IIII)Z

    move-result p2

    if-nez p2, :cond_4

    .line 909
    monitor-exit p0

    return v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 912
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/gl/t;->d(Lcom/oplus/camera/gl/h;IIII)V

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 915
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/gl/t;->b(Lcom/oplus/camera/gl/h;IIII)V

    const-string p1, "Surfacetexture.draw"

    const-string p2, "68pv_SurfacetextureDraw"

    .line 917
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_5
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 891
    :cond_6
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 919
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)J
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/t$c;

    iget-wide p0, p0, Lcom/oplus/camera/gl/t$c;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/oplus/camera/gl/t;->N:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(JJ)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->N:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySkipDrawFrame, frameNumber: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SurfaceTextureScreenNail"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 280
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(Z)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCacheWhileCapture, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/gl/t;->A:Z

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public c(I)V
    .locals 1

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/gl/t;->G:I

    .line 397
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDisplayOrientation, orientation: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SurfaceTextureScreenNail"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 397
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Z)V
    .locals 0

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/gl/t;->W:Z

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 6

    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "releaseTextures"

    .line 407
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    monitor-enter p0

    const/4 v0, 0x0

    .line 410
    :try_start_0
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t;->T:Z

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/g;->o()V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 417
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/t$a;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/t$a;->c()V

    goto :goto_1

    .line 420
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    :try_start_2
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Z)V

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->h()V

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->m:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 429
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->m:Lcom/oplus/camera/gl/s;

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ac:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 433
    :try_start_3
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz v3, :cond_4

    .line 435
    invoke-virtual {v3}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    .line 436
    invoke-virtual {v3}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oplus/camera/perf/FluencyPerformance;->c(J)V

    goto :goto_2

    .line 440
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->aa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 441
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    :try_start_4
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    .line 445
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->ab:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 447
    :cond_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v2, 0x0

    .line 449
    iput-wide v2, p0, Lcom/oplus/camera/gl/t;->C:J

    .line 451
    iget-wide v4, p0, Lcom/oplus/camera/gl/t;->ad:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 452
    invoke-static {v4, v5}, Lcom/oplus/camera/jni/PreviewShow;->release(J)V

    .line 453
    iput-wide v2, p0, Lcom/oplus/camera/gl/t;->ad:J

    .line 456
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_8

    .line 457
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/t;)V

    .line 460
    :cond_8
    iput-object v1, p0, Lcom/oplus/camera/gl/t;->ag:Lcom/oplus/camera/gl/s;

    return-void

    :catchall_0
    move-exception v1

    .line 441
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    .line 420
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catchall_2
    move-exception v0

    .line 447
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method public d(Z)V
    .locals 4

    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "acquireSurfaceTexture"

    .line 324
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/gl/g;

    const v2, 0x8d65

    invoke-direct {v1, v2}, Lcom/oplus/camera/gl/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/gl/g;

    invoke-direct {v1, v2}, Lcom/oplus/camera/gl/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/gl/g;

    invoke-direct {v1, v2}, Lcom/oplus/camera/gl/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    .line 333
    iget v2, p0, Lcom/oplus/camera/gl/t;->w:I

    iget v3, p0, Lcom/oplus/camera/gl/t;->x:I

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/gl/g;->a(II)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->j:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/gl/t$a;

    iget v2, p0, Lcom/oplus/camera/gl/t;->w:I

    iget v3, p0, Lcom/oplus/camera/gl/t;->x:I

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/gl/t$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_2
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 341
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oplus/camera/gl/t;->p:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 352
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/t;)V

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->a(Z)V

    .line 356
    :cond_4
    monitor-enter p0

    .line 357
    :try_start_1
    iput-boolean v1, p0, Lcom/oplus/camera/gl/t;->T:Z

    .line 358
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/t;->f(Z)V

    .line 359
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x0

    .line 361
    iput-wide v0, p0, Lcom/oplus/camera/gl/t;->C:J

    const/4 p1, 0x3

    .line 362
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v2

    if-ne p1, v2, :cond_5

    invoke-static {}, Lcom/oplus/camera/jni/PreviewShow;->init()J

    move-result-wide v0

    :cond_5
    iput-wide v0, p0, Lcom/oplus/camera/gl/t;->ad:J

    return-void

    :catchall_0
    move-exception p1

    .line 359
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    .line 465
    iget v2, p0, Lcom/oplus/camera/gl/t;->w:I

    iget v3, p0, Lcom/oplus/camera/gl/t;->x:I

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/gl/g;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/oplus/camera/gl/t;->aj:Z

    return-void
.end method

.method public f()I
    .locals 0

    .line 489
    iget p0, p0, Lcom/oplus/camera/gl/t;->w:I

    return p0
.end method

.method public f(Z)V
    .locals 8

    if-nez p1, :cond_1

    .line 370
    invoke-static {}, Lcom/oplus/camera/util/Util;->aN()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/gl/t;->aj:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const/4 p1, 0x6

    .line 372
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->S:[F

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 376
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v5, 0x0

    sget-object v6, Lcom/oplus/camera/gl/t;->g:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 380
    iget-object v2, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v5, 0x0

    sget-object v6, Lcom/oplus/camera/gl/t;->i:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_4
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 389
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v2, 0x0

    sget-object v3, Lcom/oplus/camera/gl/t;->h:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oplus/camera/gl/t;->S:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 391
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g()I
    .locals 0

    .line 493
    iget p0, p0, Lcom/oplus/camera/gl/t;->x:I

    return p0
.end method

.method public g(Z)V
    .locals 0

    .line 765
    iput-boolean p1, p0, Lcom/oplus/camera/gl/t;->y:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1398
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->L:Lcom/oplus/camera/gl/b/f;

    if-eqz p0, :cond_0

    .line 1399
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/b/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 0

    .line 761
    iget-boolean p0, p0, Lcom/oplus/camera/gl/t;->y:Z

    return p0
.end method

.method public abstract i()V
.end method

.method public i(Z)V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/gl/t;->I:Z

    .line 1406
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()V
    .locals 3

    .line 1255
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oplus/camera/gl/t;->l:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/g;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 1257
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 1258
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oplus/camera/gl/t;->F:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1259
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    .line 1264
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->R:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    .line 1265
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 1270
    iget-object p0, p0, Lcom/oplus/camera/gl/t;->u:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p0, :cond_0

    .line 1271
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->f()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m()V
    .locals 7

    .line 1335
    iget-object v0, p0, Lcom/oplus/camera/gl/t;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1336
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/t;->z:Z

    .line 1337
    iput-boolean v1, p0, Lcom/oplus/camera/gl/t;->A:Z

    .line 1338
    iget-object v1, p0, Lcom/oplus/camera/gl/t;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    sget-object v0, Lcom/oplus/camera/gl/t;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/gl/t;->a(IJJ)V

    .line 1342
    sget-object v0, Lcom/oplus/camera/gl/t;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/gl/t;->a(IJJ)V

    return-void

    :catchall_0
    move-exception p0

    .line 1339
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

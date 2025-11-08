.class public Lcom/oplus/camera/capmode/b;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/b$a;,
        Lcom/oplus/camera/capmode/b$b;,
        Lcom/oplus/camera/capmode/b$c;
    }
.end annotation


# instance fields
.field private A:Landroid/media/MediaMuxer;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/io/FileDescriptor;

.field private E:Landroid/media/MediaCodec;

.field private F:Landroid/media/MediaCodec;

.field private G:Landroid/view/Surface;

.field private H:Landroid/media/MediaFormat;

.field private I:Landroid/media/MediaFormat;

.field private J:[Ljava/nio/ByteBuffer;

.field private K:Landroid/media/AudioRecord;

.field private L:Lcom/oplus/camera/capmode/c;

.field private M:Lcom/oplus/camera/capmode/b$a;

.field private N:Lcom/oplus/camera/gl/q;

.field private O:Landroid/os/Handler;

.field private P:Landroid/os/Handler;

.field private Q:Landroid/os/Handler;

.field private R:Ljava/lang/Thread;

.field private S:Landroid/os/ConditionVariable;

.field private T:Landroid/os/ConditionVariable;

.field private U:Lcom/oplus/camera/capmode/b$b;

.field private V:Ljava/util/concurrent/CountDownLatch;

.field private W:F

.field private X:F

.field private Y:I

.field private Z:J

.field private final a:Ljava/lang/Object;

.field private aA:Landroid/media/MediaCodec$Callback;

.field private aa:J

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:I

.field private ak:Ljava/lang/String;

.field private al:Lcom/oplus/camera/gl/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/camera/gl/m<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private am:Lcom/oplus/camera/gl/z;

.field private an:Landroid/os/Handler;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/camera/capmode/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private as:Landroid/os/Handler;

.field private at:Z

.field private volatile au:Z

.field private volatile av:Z

.field private final aw:Landroid/os/ConditionVariable;

.field private ax:Ljava/lang/Object;

.field private volatile ay:I

.field private volatile az:Z

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->b:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->c:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->d:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    .line 93
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->f:J

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/b;->g:Z

    .line 95
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->h:Z

    .line 96
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->i:Z

    const/4 v4, -0x1

    .line 97
    iput v4, p0, Lcom/oplus/camera/capmode/b;->j:I

    .line 98
    iput v4, p0, Lcom/oplus/camera/capmode/b;->k:I

    .line 99
    iput v4, p0, Lcom/oplus/camera/capmode/b;->l:I

    .line 100
    iput v1, p0, Lcom/oplus/camera/capmode/b;->m:I

    .line 101
    iput v1, p0, Lcom/oplus/camera/capmode/b;->n:I

    const/16 v5, 0xc

    .line 102
    iput v5, p0, Lcom/oplus/camera/capmode/b;->o:I

    const/16 v5, 0x1c

    .line 103
    iput v5, p0, Lcom/oplus/camera/capmode/b;->p:I

    .line 104
    iput v1, p0, Lcom/oplus/camera/capmode/b;->q:I

    .line 105
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->r:J

    .line 106
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->s:J

    .line 107
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->t:J

    .line 108
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->u:J

    .line 109
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->v:J

    const-wide/16 v5, -0x1

    .line 110
    iput-wide v5, p0, Lcom/oplus/camera/capmode/b;->w:J

    .line 111
    iput-wide v5, p0, Lcom/oplus/camera/capmode/b;->x:J

    .line 112
    iput-wide v5, p0, Lcom/oplus/camera/capmode/b;->y:J

    .line 113
    iput-wide v5, p0, Lcom/oplus/camera/capmode/b;->z:J

    const/4 v7, 0x0

    .line 114
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    const/4 v8, 0x3

    .line 115
    iput v8, p0, Lcom/oplus/camera/capmode/b;->B:I

    .line 116
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->C:Ljava/lang/String;

    .line 117
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->D:Ljava/io/FileDescriptor;

    .line 118
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    .line 119
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    .line 120
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    .line 121
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    .line 122
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 123
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    .line 124
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    .line 125
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->L:Lcom/oplus/camera/capmode/c;

    .line 126
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    .line 127
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    .line 128
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    .line 129
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    .line 130
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    .line 131
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    .line 132
    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v8, p0, Lcom/oplus/camera/capmode/b;->S:Landroid/os/ConditionVariable;

    .line 133
    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v8, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    .line 134
    new-instance v8, Lcom/oplus/camera/capmode/b$b;

    invoke-direct {v8, p0, v7}, Lcom/oplus/camera/capmode/b$b;-><init>(Lcom/oplus/camera/capmode/b;Lcom/oplus/camera/capmode/b$1;)V

    iput-object v8, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    .line 135
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v8, p0, Lcom/oplus/camera/capmode/b;->V:Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x0

    .line 136
    iput v8, p0, Lcom/oplus/camera/capmode/b;->W:F

    .line 137
    iput v8, p0, Lcom/oplus/camera/capmode/b;->X:F

    .line 138
    iput v4, p0, Lcom/oplus/camera/capmode/b;->Y:I

    .line 139
    iput-wide v5, p0, Lcom/oplus/camera/capmode/b;->Z:J

    .line 140
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->aa:J

    .line 141
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ab:Z

    .line 142
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 143
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ad:Z

    .line 144
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ae:Z

    .line 145
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->af:Z

    .line 146
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ag:Z

    const-string v2, "panorama"

    .line 147
    iput-object v2, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v2, "0"

    .line 148
    iput-object v2, p0, Lcom/oplus/camera/capmode/b;->ai:Ljava/lang/String;

    .line 149
    iput v1, p0, Lcom/oplus/camera/capmode/b;->aj:I

    const-string v2, ""

    .line 150
    iput-object v2, p0, Lcom/oplus/camera/capmode/b;->ak:Ljava/lang/String;

    .line 151
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    .line 152
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->am:Lcom/oplus/camera/gl/z;

    .line 153
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->an:Landroid/os/Handler;

    .line 154
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ao:Z

    .line 155
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ap:Z

    .line 156
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->aq:Z

    .line 158
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 160
    iput-object v7, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    .line 161
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/b;->at:Z

    .line 162
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->au:Z

    .line 163
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->av:Z

    .line 164
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->aw:Landroid/os/ConditionVariable;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->ax:Ljava/lang/Object;

    .line 166
    iput v1, p0, Lcom/oplus/camera/capmode/b;->ay:I

    .line 173
    new-instance v0, Lcom/oplus/camera/capmode/b$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/b$1;-><init>(Lcom/oplus/camera/capmode/b;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->aA:Landroid/media/MediaCodec$Callback;

    .line 380
    new-instance v0, Lcom/oplus/camera/capmode/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/capmode/b$a;-><init>(Lcom/oplus/camera/capmode/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    return-void
.end method

.method private A()V
    .locals 3

    const/4 v0, 0x0

    .line 1415
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CameraMediaCodec"

    const-string v2, "releaseAudioCodec, audio input thread not end and we wait it here"

    .line 1416
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1421
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 1423
    :goto_2
    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    .line 1424
    throw v1
.end method

.method static synthetic A(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->D()V

    return-void
.end method

.method private B()V
    .locals 6

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseAudioCodec"

    .line 1428
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->A()V

    .line 1432
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "CameraMediaCodec"

    .line 1434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAudioCodec, mAudioCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    .line 1437
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 1438
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    :cond_0
    :try_start_1
    iput v2, p0, Lcom/oplus/camera/capmode/b;->k:I

    .line 1444
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    .line 1445
    :goto_0
    iput v2, p0, Lcom/oplus/camera/capmode/b;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1441
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1443
    :try_start_3
    iput v2, p0, Lcom/oplus/camera/capmode/b;->k:I

    .line 1444
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    goto :goto_0

    .line 1447
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p0, "CameraMediaCodec"

    const-string v0, "releaseAudioCodec, end"

    .line 1449
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1443
    :goto_2
    :try_start_4
    iput v2, p0, Lcom/oplus/camera/capmode/b;->k:I

    .line 1444
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    .line 1445
    iput v2, p0, Lcom/oplus/camera/capmode/b;->l:I

    .line 1446
    throw v3

    :catchall_1
    move-exception p0

    .line 1447
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method static synthetic B(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->w()V

    return-void
.end method

.method static synthetic C(Lcom/oplus/camera/capmode/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->V:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private C()V
    .locals 2

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoEncode, mbVideoCodecOutputDataCome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {v0}, Lcom/oplus/camera/gl/q;->h()V

    .line 1459
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ad:Z

    if-eqz v0, :cond_1

    .line 1460
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    if-eqz p0, :cond_2

    .line 1461
    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_0

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1465
    new-instance v1, Lcom/oplus/camera/capmode/b$9;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/b$9;-><init>(Lcom/oplus/camera/capmode/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private D()V
    .locals 3

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMediaMuxer, mVideoTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1542
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1543
    :try_start_0
    iget v2, p0, Lcom/oplus/camera/capmode/b;->j:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/oplus/camera/capmode/b;->k:I

    if-ltz v2, :cond_1

    .line 1544
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    if-nez v2, :cond_0

    .line 1545
    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 1546
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 1549
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1552
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/oplus/camera/capmode/b;->j:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/oplus/camera/capmode/b;->k:I

    if-gez v1, :cond_3

    .line 1553
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1556
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1559
    :cond_3
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1561
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    if-nez v0, :cond_5

    .line 1562
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 1563
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic D(Lcom/oplus/camera/capmode/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->g:Z

    return p0
.end method

.method private E()V
    .locals 4

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMediaMuxer, mbScopeEnableAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1573
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1574
    :try_start_0
    iget v3, p0, Lcom/oplus/camera/capmode/b;->k:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/oplus/camera/capmode/b;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v3, :cond_1

    .line 1576
    :try_start_1
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    if-eqz v3, :cond_0

    .line 1577
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    .line 1578
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1583
    :cond_0
    :try_start_2
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 1584
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    .line 1585
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1587
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->j()V

    .line 1588
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->m()V

    .line 1589
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->n()V

    .line 1591
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    :goto_0
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1581
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1583
    :try_start_4
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 1584
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    .line 1585
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1587
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->j()V

    .line 1588
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->m()V

    .line 1589
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->n()V

    .line 1591
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    goto :goto_0

    .line 1583
    :goto_1
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 1584
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    .line 1585
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1587
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->j()V

    .line 1588
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->m()V

    .line 1589
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->n()V

    .line 1591
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1592
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1595
    :cond_1
    :try_start_5
    iget v1, p0, Lcom/oplus/camera/capmode/b;->k:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/oplus/camera/capmode/b;->j:I

    if-ltz v1, :cond_3

    .line 1596
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1599
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1602
    :cond_3
    :goto_2
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    .line 1605
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_5

    .line 1606
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 1607
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1612
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 1613
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    .line 1614
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->j()V

    .line 1615
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->m()V

    .line 1616
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->n()V

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1610
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :goto_4
    return-void

    .line 1612
    :goto_5
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    .line 1613
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    .line 1614
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->j()V

    .line 1615
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->m()V

    .line 1616
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->n()V

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1618
    throw v0
.end method

.method static synthetic E(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->v()V

    return-void
.end method

.method private F()I
    .locals 4

    .line 1631
    iget v0, p0, Lcom/oplus/camera/capmode/b;->n:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1632
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v0

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/b;->n:I

    .line 1635
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v3, p0, Lcom/oplus/camera/capmode/b;->n:I

    if-ge v0, v3, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/b;->n:I

    .line 1641
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->s()I

    move-result v0

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->p(I)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    .line 1644
    iget v1, p0, Lcom/oplus/camera/capmode/b;->n:I

    if-ge v0, v1, :cond_1

    .line 1645
    iput v0, p0, Lcom/oplus/camera/capmode/b;->n:I

    .line 1648
    :cond_1
    iget p0, p0, Lcom/oplus/camera/capmode/b;->n:I

    return p0
.end method

.method static synthetic F(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->z()V

    return-void
.end method

.method static synthetic G(Lcom/oplus/camera/capmode/b;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    return-object p0
.end method

.method private G()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    if-nez v0, :cond_4

    const-string v0, "oplus.software.video.surround_record_support"

    .line 1654
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1655
    invoke-static {}, Lcom/oplus/camera/util/Util;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1656
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    .line 1658
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    goto/16 :goto_0

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1660
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v3

    const/16 v4, 0x1c

    const/4 v5, 0x2

    .line 1662
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    goto :goto_0

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v1, "focusing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1664
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v3

    const/16 v4, 0x1c

    const/4 v5, 0x2

    .line 1666
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    goto :goto_0

    .line 1668
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAudioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is wrong"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraMediaCodec"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1671
    :cond_3
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    .line 1672
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic H(Lcom/oplus/camera/capmode/b;)I
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result p0

    return p0
.end method

.method private H()Z
    .locals 7

    const-string v0, "CameraMediaCodec"

    const-string v1, "startAudioInput"

    .line 1678
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    .line 1683
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->G()V

    .line 1686
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1690
    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 1692
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const-string v1, "startAudioInput, mAudioRecord may be conflict or have some other exception"

    .line 1693
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 1698
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result v0

    new-array v0, v0, [B

    .line 1699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/camera/capmode/b;->f:J

    .line 1701
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->F()I

    move-result v1

    int-to-long v3, v1

    const-wide/32 v5, 0x3b9aca00

    mul-long/2addr v3, v5

    .line 1702
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v1

    int-to-long v5, v1

    div-long/2addr v3, v5

    .line 1703
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v1

    int-to-long v5, v1

    div-long/2addr v3, v5

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->p(I)I

    move-result v1

    int-to-long v5, v1

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/oplus/camera/capmode/b;->r:J

    .line 1705
    new-instance v1, Lcom/oplus/camera/capmode/b$10;

    const-string v3, "audio input thread"

    invoke-direct {v1, p0, v3, v0}, Lcom/oplus/camera/capmode/b$10;-><init>(Lcom/oplus/camera/capmode/b;Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    .line 1758
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->R:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return v2
.end method

.method static synthetic I(Lcom/oplus/camera/capmode/b;)Landroid/media/AudioRecord;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic J(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->u:J

    return-wide v0
.end method

.method static synthetic K(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->f:J

    return-wide v0
.end method

.method static synthetic L(Lcom/oplus/camera/capmode/b;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic M(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/c;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->L:Lcom/oplus/camera/capmode/c;

    return-object p0
.end method

.method static synthetic N(Lcom/oplus/camera/capmode/b;)Landroid/os/ConditionVariable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->S:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/oplus/camera/capmode/b;->j:I

    return p1
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 0

    .line 1101
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->L:Lcom/oplus/camera/capmode/c;

    if-eqz p0, :cond_0

    .line 1102
    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/c;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;Landroid/media/MediaCodec$BufferInfo;)J
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "writeSampleData"

    .line 1623
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    if-eqz p0, :cond_0

    .line 1626
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/HardwareBuffer;)V
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 1134
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->am:Lcom/oplus/camera/gl/z;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/z;->a(Landroid/hardware/HardwareBuffer;)V

    .line 1141
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/b;->af:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1142
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->af:Z

    .line 1143
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->y()V

    .line 1146
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->d()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/b;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;[B)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/b;->b([B)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;[BII)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/b;->a([BII)V

    return-void
.end method

.method private a([BII)V
    .locals 12

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioFrame, mAudioCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1229
    array-length v3, p1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "empty"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraMediaCodec"

    .line 1228
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :cond_2
    if-gez v0, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    .line 1237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAudioFrame, outputBufferIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_2

    .line 1239
    iget v4, p0, Lcom/oplus/camera/capmode/b;->B:I

    if-eq v2, v4, :cond_2

    .line 1240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAudioFrame break, mRecorderState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/capmode/b;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v6, v0

    if-eqz p1, :cond_5

    if-ltz v6, :cond_5

    const-wide/16 v3, 0x0

    .line 1247
    iget-wide v7, p0, Lcom/oplus/camera/capmode/b;->s:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_4

    .line 1248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/camera/capmode/b;->s:J

    .line 1251
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1252
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1254
    iget-object v5, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget-wide p1, p0, Lcom/oplus/camera/capmode/b;->s:J

    iget v0, p0, Lcom/oplus/camera/capmode/b;->q:I

    int-to-long v0, v0

    iget-wide v3, p0, Lcom/oplus/camera/capmode/b;->r:J

    mul-long/2addr v0, v3

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long v9, p1, v0

    const/4 v11, 0x0

    move v8, p3

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1257
    iget p1, p0, Lcom/oplus/camera/capmode/b;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oplus/camera/capmode/b;->q:I

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->i:Z

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/b;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)[B
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)[B
    .locals 9

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1012
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getYuvDataFromImage, time : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", image : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraMediaCodec"

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result p0

    .line 1015
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v3

    .line 1016
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getStride()I

    move-result v4

    .line 1017
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getScanline()I

    move-result v5

    .line 1018
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getOrientation()I

    move-result v6

    .line 1020
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1021
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object p1

    invoke-static {p1, p0, v3, v4, v5}, Lcom/oplus/camera/util/Util;->b([BIIII)[B

    move-result-object p1

    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getYuvDataFromImage, drop deal byte[] cost : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v3, p0, :cond_2

    if-eqz v6, :cond_1

    const/16 v4, 0x5a

    if-eq v4, v6, :cond_1

    const/16 v4, 0xb4

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x10e

    if-ne v4, v6, :cond_2

    .line 1033
    invoke-static {p1, p0, v3}, Lcom/oplus/camera/util/Util;->b([BII)[B

    move-result-object p1

    goto :goto_1

    .line 1031
    :cond_1
    :goto_0
    invoke-static {p1, p0, v3}, Lcom/oplus/camera/util/Util;->a([BII)[B

    move-result-object p1

    .line 1037
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getYuvDataFromImage, rotate deal byte[] cost : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {p1, p0, v3}, Lcom/oplus/camera/util/Util;->e([BII)[B

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 1042
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getYuvDataFromImage, encode deal byte[] cost : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/b;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oplus/camera/capmode/b;->j:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/b;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->Z:J

    return-wide p1
.end method

.method private b([B)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeYuvData, inputData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mRecorderState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oplus/camera/capmode/b;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraMediaCodec"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 1050
    iget v2, v0, Lcom/oplus/camera/capmode/b;->B:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    .line 1053
    iput-boolean v2, v0, Lcom/oplus/camera/capmode/b;->av:Z

    .line 1054
    array-length v9, v1

    .line 1055
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    const/4 v2, 0x0

    if-ltz v7, :cond_1

    .line 1060
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1061
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1062
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1065
    iget-wide v10, v0, Lcom/oplus/camera/capmode/b;->Z:J

    cmp-long v1, v10, v13

    if-gez v1, :cond_0

    .line 1066
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/oplus/camera/capmode/b;->Z:J

    goto :goto_0

    :cond_0
    const v1, 0x49742400    # 1000000.0f

    .line 1068
    iget-object v6, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v6, v6, Lcom/oplus/camera/capmode/b$b;->k:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    float-to-int v1, v1

    int-to-long v13, v1

    add-long/2addr v10, v13

    iput-wide v10, v0, Lcom/oplus/camera/capmode/b;->Z:J

    .line 1072
    :goto_0
    iget-object v6, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    iget-wide v10, v0, Lcom/oplus/camera/capmode/b;->Z:J

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1075
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1076
    iget-object v6, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v1, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 1078
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encodeYuvData, startEncoder out index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    if-ne v7, v6, :cond_2

    .line 1081
    iget-object v7, v0, Lcom/oplus/camera/capmode/b;->aA:Landroid/media/MediaCodec$Callback;

    iget-object v8, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :cond_2
    :goto_1
    if-ltz v6, :cond_3

    .line 1085
    iget-object v7, v0, Lcom/oplus/camera/capmode/b;->aA:Landroid/media/MediaCodec$Callback;

    iget-object v8, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v7, v8, v6, v1}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1086
    iget-object v6, v0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v1, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 1090
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    const/4 v1, 0x0

    .line 1093
    iput-boolean v1, v0, Lcom/oplus/camera/capmode/b;->av:Z

    .line 1094
    iget-object v0, v0, Lcom/oplus/camera/capmode/b;->aw:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodeYuvData, encode cost time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/b;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->ad:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/b;J)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->aa:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/capmode/b;->aa:J

    return-wide v0
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/b;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->y:J

    return-wide p1
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/b;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/b;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->z:J

    return-wide p1
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->x()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/capmode/b;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->t:J

    return-wide p1
.end method

.method static synthetic f(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->E()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/capmode/b;)Landroid/view/Surface;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/capmode/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->at:Z

    return p0
.end method

.method private i()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video codec thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 387
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/capmode/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->ac:Z

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->v:J

    return-wide v0
.end method

.method private j()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "audio codec thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 438
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/capmode/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->ag:Z

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->x:J

    return-wide v0
.end method

.method private l()V
    .locals 2

    .line 443
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "frame catch thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 447
    new-instance v1, Lcom/oplus/camera/capmode/b$3;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/capmode/b$3;-><init>(Lcom/oplus/camera/capmode/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/capmode/b;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oplus/camera/capmode/b;->Y:I

    return p0
.end method

.method private m()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private m(I)V
    .locals 2

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordState, mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iput p1, p0, Lcom/oplus/camera/capmode/b;->B:I

    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->Z:J

    return-wide v0
.end method

.method private n()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private o()Landroid/media/MediaFormat;
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    if-nez v0, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, v1, Lcom/oplus/camera/capmode/b$b;->l:I

    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->j:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, v1, Lcom/oplus/camera/capmode/b$b;->h:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, v1, Lcom/oplus/camera/capmode/b$b;->k:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    .line 507
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->at:Z

    if-eqz v1, :cond_0

    const v1, 0x7f000789

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    :goto_0
    const-string v2, "color-format"

    .line 506
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 508
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/b;->b()F

    move-result v1

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 511
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->H:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/b$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    return-object p0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/oplus/camera/capmode/b$b;->i:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "video/hevc"

    return-object p0

    :cond_0
    const-string p0, "video/avc"

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/capmode/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->ao:Z

    return p0
.end method

.method private q()Landroid/media/MediaFormat;
    .locals 16

    move-object/from16 v0, p0

    .line 540
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    if-nez v1, :cond_b

    const-string v1, "oplus.software.video.surround_record_support"

    .line 541
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "audio/mp4a-latm"

    const-string v4, "bitrate"

    if-eqz v1, :cond_8

    .line 542
    invoke-static {}, Lcom/oplus/camera/util/Util;->E()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 543
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v5, "normal"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "vendor.ozoaudio.focus-mode.value"

    const-string v6, "vendor.ozoaudio.device.value"

    if-eqz v1, :cond_2

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v1

    .line 545
    iget-object v7, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v7, v7, Lcom/oplus/camera/capmode/b$b;->b:I

    if-nez v7, :cond_0

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->s()I

    move-result v7

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v7, v7, Lcom/oplus/camera/capmode/b$b;->b:I

    .line 544
    :goto_0
    invoke-static {v3, v1, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 547
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 548
    iget-object v3, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v3, v3, Lcom/oplus/camera/capmode/b$b;->a:I

    if-nez v3, :cond_1

    const v2, 0x1f400

    goto :goto_1

    .line 549
    :cond_1
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->a:I

    .line 547
    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 550
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, "off"

    invoke-virtual {v1, v5, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 552
    :cond_2
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v7, "panorama"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "vendor.ozoaudio.focus-azimuth.value"

    const/16 v8, 0x10

    const-string v9, "vendor.ozoaudio.sample-depth"

    const-string v10, "ozoaudio"

    const-string v11, "vendor.ozoaudio.mode"

    const-string v12, "on"

    const v13, 0x3e800

    const-string v14, "audio/ozoaudio"

    const-string v15, "100.0"

    const-string v2, "0.0"

    if-eqz v1, :cond_3

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->s()I

    move-result v3

    invoke-static {v14, v1, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 554
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 555
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    iget-object v3, v0, Lcom/oplus/camera/capmode/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v5, v12}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v11, v10}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 560
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v7, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v3, "vendor.ozoaudio.focus-elevation.value"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, "vendor.ozoaudio.focus-sector-width.value"

    invoke-virtual {v1, v2, v15}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, "vendor.ozoaudio.focus-sector-height.value"

    invoke-virtual {v1, v2, v15}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 564
    :cond_3
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v8, "focusing"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->s()I

    move-result v3

    invoke-static {v14, v1, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 566
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 567
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    iget-object v3, v0, Lcom/oplus/camera/capmode/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v5, v12}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v11, v10}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const/16 v3, 0x10

    invoke-virtual {v1, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 572
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    iget v3, v0, Lcom/oplus/camera/capmode/b;->aj:I

    .line 573
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->m(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vendor.ozoaudio.focus-gain.value"

    .line 572
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-virtual {v1, v7, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v3, "vendor.ozoaudio.focus-elevation.value"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, "vendor.ozoaudio.focus-sector-width.value"

    invoke-virtual {v1, v2, v15}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, "vendor.ozoaudio.focus-sector-height.value"

    invoke-virtual {v1, v2, v15}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 579
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v1

    .line 580
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->b:I

    if-nez v2, :cond_5

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->s()I

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->b:I

    .line 579
    :goto_2
    invoke-static {v3, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 582
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 583
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->a:I

    if-nez v2, :cond_6

    const v2, 0x1f400

    goto :goto_3

    .line 584
    :cond_6
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->a:I

    .line 582
    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 585
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const-string v2, "off"

    invoke-virtual {v1, v5, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->D()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 590
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->ak:Ljava/lang/String;

    const-string v3, "vendor.ozoaudio.wnr-mode.value"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_7
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const/4 v2, 0x2

    const-string v3, "aac-profile"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_7

    .line 595
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->r()I

    move-result v1

    .line 596
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->b:I

    if-nez v2, :cond_9

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->s()I

    move-result v2

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->b:I

    .line 595
    :goto_5
    invoke-static {v3, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    .line 598
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->a:I

    if-nez v2, :cond_a

    const v2, 0x1f400

    goto :goto_6

    .line 599
    :cond_a
    iget-object v2, v0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->a:I

    .line 598
    :goto_6
    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 600
    iget-object v1, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    const/4 v2, 0x2

    const-string v3, "aac-profile"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 604
    :cond_b
    :goto_7
    iget-object v0, v0, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic q(Lcom/oplus/camera/capmode/b;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private r()I
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/oplus/camera/capmode/b$b;->d:I

    if-eqz v0, :cond_0

    .line 611
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget p0, p0, Lcom/oplus/camera/capmode/b$b;->d:I

    goto :goto_0

    :cond_0
    const p0, 0xbb80

    :goto_0
    return p0
.end method

.method static synthetic r(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->y:J

    return-wide v0
.end method

.method private s()I
    .locals 6

    const-string v0, "oplus.software.video.surround_record_support"

    .line 620
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-static {}, Lcom/oplus/camera/util/Util;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget v0, p0, Lcom/oplus/camera/capmode/b;->p:I

    iput v0, p0, Lcom/oplus/camera/capmode/b;->o:I

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    const-string v1, "focusing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget v0, p0, Lcom/oplus/camera/capmode/b;->p:I

    iput v0, p0, Lcom/oplus/camera/capmode/b;->o:I

    .line 629
    :cond_1
    :goto_0
    iget p0, p0, Lcom/oplus/camera/capmode/b;->o:I

    const-string v0, "CameraMediaCodec"

    const/4 v1, -0x2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    const/16 v5, 0xc

    if-eq p0, v5, :cond_3

    const/16 v5, 0x10

    if-eq p0, v5, :cond_4

    const/16 v4, 0x1c

    if-eq p0, v4, :cond_2

    const/16 v2, 0x30

    if-eq p0, v2, :cond_3

    goto :goto_1

    :cond_2
    const-string p0, "getChannelCount, mChannelConfig: 28"

    .line 647
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    .line 662
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelCount, channelCount: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic s(Lcom/oplus/camera/capmode/b;)Lcom/oplus/camera/capmode/b$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    return-object p0
.end method

.method static synthetic t(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->z:J

    return-wide v0
.end method

.method private t()V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "stopAudioInput"

    .line 828
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 832
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->K:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/oplus/camera/capmode/b;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->aa:J

    return-wide v0
.end method

.method private u()V
    .locals 10

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAudioEncode, mAudioCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbAudioCodecOutputDataCome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ae:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ae:Z

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    const-wide/16 v1, -0x1

    .line 842
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 843
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 846
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->B()V

    .line 847
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/oplus/camera/capmode/b;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oplus/camera/capmode/b;->B:I

    return p0
.end method

.method private v()V
    .locals 5

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAudioCodec, mAudioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "oplus.software.video.surround_record_support"

    .line 888
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "audio/mp4a-latm"

    if-eqz v0, :cond_3

    .line 889
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "normal"

    .line 890
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_0
    const-string v0, "panorama"

    .line 892
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "audio/ozoaudio"

    if-eqz v0, :cond_1

    .line 893
    :try_start_2
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_1
    const-string v0, "focusing"

    .line 894
    iget-object v4, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    goto :goto_0

    .line 897
    :cond_2
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    goto :goto_0

    .line 900
    :cond_3
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 903
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->q()Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 907
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 908
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    .line 910
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/capmode/b$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/b$6;-><init>(Lcom/oplus/camera/capmode/b;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAudioCodec, mInputByteBuffer.length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->J:[Ljava/nio/ByteBuffer;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lcom/oplus/camera/capmode/b;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->ax:Ljava/lang/Object;

    return-object p0
.end method

.method private w()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "CameraMediaCodec"

    const-string v1, "initVideoCodec"

    .line 924
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 932
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->o()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 934
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->at:Z

    if-eqz v0, :cond_3

    .line 935
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->aA:Landroid/media/MediaCodec$Callback;

    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 937
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    .line 939
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ao:Z

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/q;->setOutput(Landroid/view/Surface;)V

    goto :goto_1

    .line 941
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->ap:Z

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->L:Lcom/oplus/camera/capmode/c;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/c;->a(Landroid/view/Surface;)V

    goto :goto_1

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->an:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 945
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoCodecInputThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 947
    new-instance v1, Lcom/oplus/camera/capmode/b$7;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/capmode/b$7;-><init>(Lcom/oplus/camera/capmode/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->an:Landroid/os/Handler;

    .line 963
    :cond_2
    new-instance v0, Lcom/oplus/camera/gl/m;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    invoke-direct {v0, v1}, Lcom/oplus/camera/gl/m;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(I)V

    .line 965
    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/gl/m;->a(IIIIII)V

    .line 968
    new-instance v0, Lcom/oplus/camera/gl/z;

    invoke-direct {v0}, Lcom/oplus/camera/gl/z;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->am:Lcom/oplus/camera/gl/z;

    const/4 v0, 0x0

    .line 969
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/b;->af:Z

    goto :goto_1

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 973
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Encode YUV Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 975
    new-instance v1, Lcom/oplus/camera/capmode/b$8;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/capmode/b$8;-><init>(Lcom/oplus/camera/capmode/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    .line 1004
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1005
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic x(Lcom/oplus/camera/capmode/b;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/oplus/camera/capmode/b;->ay:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/camera/capmode/b;->ay:I

    return v0
.end method

.method private x()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseVideoCodec"

    .line 1109
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1112
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    .line 1113
    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 1114
    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :cond_0
    :goto_0
    iput v1, p0, Lcom/oplus/camera/capmode/b;->j:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1117
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string p0, "releaseVideoCodec, end"

    .line 1122
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1119
    :goto_2
    iput v1, p0, Lcom/oplus/camera/capmode/b;->j:I

    .line 1120
    throw v0
.end method

.method static synthetic y(Lcom/oplus/camera/capmode/b;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private y()V
    .locals 4

    .line 1126
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->am:Lcom/oplus/camera/gl/z;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(Lcom/oplus/camera/gl/m$m;)V

    .line 1127
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->b(I)V

    .line 1128
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/gl/m;->a(Landroid/view/SurfaceHolder;)V

    .line 1129
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->al:Lcom/oplus/camera/gl/m;

    iget-object v3, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v3, v3, Lcom/oplus/camera/capmode/b$b;->l:I

    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget p0, p0, Lcom/oplus/camera/capmode/b$b;->j:I

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/oplus/camera/gl/m;->a(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method static synthetic z(Lcom/oplus/camera/capmode/b;)Landroid/media/MediaMuxer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method private z()V
    .locals 17

    move-object/from16 v7, p0

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, start"

    .line 1269
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v0, v7, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    .line 1275
    :try_start_0
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1276
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    const-wide/16 v13, -0x1

    invoke-virtual {v1, v12, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    const/4 v1, -0x3

    if-ne v15, v1, :cond_0

    .line 1279
    iget-object v0, v7, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne v15, v1, :cond_3

    .line 1281
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :try_start_1
    iget v2, v7, Lcom/oplus/camera/capmode/b;->k:I

    if-gez v2, :cond_2

    const-string v2, "CameraMediaCodec"

    const-string v3, "audioEncoder, addTrack mAudioTrack"

    .line 1283
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget v2, v7, Lcom/oplus/camera/capmode/b;->l:I

    if-gez v2, :cond_1

    iget-boolean v2, v7, Lcom/oplus/camera/capmode/b;->aq:Z

    if-eqz v2, :cond_1

    const-string v2, "CameraMediaCodec"

    const-string v3, "audioEncoder, addTrack mMetadataTrack"

    .line 1286
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    new-instance v2, Landroid/media/MediaFormat;

    iget-object v3, v7, Lcom/oplus/camera/capmode/b;->I:Landroid/media/MediaFormat;

    invoke-direct {v2, v3}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    const-string v3, "mime"

    const-string v4, "application/binaural"

    .line 1289
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v3, v7, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, v7, Lcom/oplus/camera/capmode/b;->l:I

    .line 1293
    :cond_1
    iget-object v2, v7, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    iget-object v3, v7, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, v7, Lcom/oplus/camera/capmode/b;->k:I

    .line 1294
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->D()V

    .line 1296
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_3
    const/4 v6, -0x1

    if-ne v15, v6, :cond_4

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, Audio INFO_TRY_AGAIN_LATER"

    .line 1298
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1300
    :cond_4
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, Audio BUFFER_FLAG_END_OF_STREAM"

    .line 1301
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget v0, v7, Lcom/oplus/camera/capmode/b;->l:I

    if-ltz v0, :cond_6

    iget-boolean v0, v7, Lcom/oplus/camera/capmode/b;->aq:Z

    if-eqz v0, :cond_6

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, write metadata track"

    .line 1304
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    new-array v0, v11, [B

    aput-byte v8, v0, v8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1307
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v2, 0x0

    .line 1308
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1310
    iget-boolean v1, v7, Lcom/oplus/camera/capmode/b;->i:Z

    if-eqz v1, :cond_5

    .line 1311
    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, v7, Lcom/oplus/camera/capmode/b;->w:J

    sub-long/2addr v1, v3

    iput-wide v1, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_1

    .line 1313
    :cond_5
    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1316
    :goto_1
    iget v1, v7, Lcom/oplus/camera/capmode/b;->l:I

    invoke-direct {v7, v1, v0, v13}, Lcom/oplus/camera/capmode/b;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1319
    :cond_6
    iget-boolean v0, v7, Lcom/oplus/camera/capmode/b;->h:Z

    if-eqz v0, :cond_7

    .line 1320
    iget-object v0, v7, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v13, Lcom/oplus/camera/capmode/b$c;

    iget v3, v7, Lcom/oplus/camera/capmode/b;->k:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/capmode/b$c;-><init>(Lcom/oplus/camera/capmode/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    iget-object v0, v7, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 1323
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->B()V

    .line 1324
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/b;->E()V

    goto/16 :goto_5

    .line 1328
    :cond_8
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_9

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, Audio BUFFER_FLAG_CODEC_CONFIG"

    .line 1329
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1330
    :cond_9
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v1, v11, :cond_a

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, Audio BUFFER_FLAG_SYNC_FRAME"

    .line 1331
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    :cond_a
    iget-boolean v1, v7, Lcom/oplus/camera/capmode/b;->ac:Z

    if-nez v1, :cond_b

    const-string v1, "CameraMediaCodec"

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioEncoder, mbMuxerStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/oplus/camera/capmode/b;->ac:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1339
    :cond_b
    iget-wide v1, v7, Lcom/oplus/camera/capmode/b;->x:J

    cmp-long v1, v1, v9

    if-gez v1, :cond_c

    .line 1340
    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v7, Lcom/oplus/camera/capmode/b;->x:J

    .line 1341
    iput-boolean v8, v7, Lcom/oplus/camera/capmode/b;->i:Z

    .line 1344
    :cond_c
    iget-boolean v1, v7, Lcom/oplus/camera/capmode/b;->i:Z

    if-eqz v1, :cond_f

    .line 1345
    iget-wide v1, v7, Lcom/oplus/camera/capmode/b;->w:J

    cmp-long v1, v13, v1

    if-nez v1, :cond_e

    .line 1346
    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, v7, Lcom/oplus/camera/capmode/b;->x:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x30d40

    cmp-long v1, v1, v3

    if-lez v1, :cond_d

    .line 1347
    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, v7, Lcom/oplus/camera/capmode/b;->x:J

    sub-long/2addr v1, v5

    sub-long/2addr v1, v3

    iput-wide v1, v7, Lcom/oplus/camera/capmode/b;->w:J

    goto :goto_2

    .line 1349
    :cond_d
    iput-wide v9, v7, Lcom/oplus/camera/capmode/b;->w:J

    .line 1353
    :cond_e
    :goto_2
    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, v7, Lcom/oplus/camera/capmode/b;->w:J

    sub-long/2addr v1, v3

    iput-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_f
    const-string v1, "CameraMediaCodec"

    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioEncoder, audio bufferInfo.presentationTimeUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-boolean v1, v7, Lcom/oplus/camera/capmode/b;->h:Z

    if-eqz v1, :cond_10

    .line 1360
    aget-object v1, v0, v15

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1361
    aget-object v1, v0, v15

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1362
    iget-object v6, v7, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/oplus/camera/capmode/b$c;

    iget v3, v7, Lcom/oplus/camera/capmode/b;->k:I

    const/16 v16, 0x1

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v13, v5

    const/4 v14, 0x2

    move-object v5, v12

    move-object v14, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/capmode/b$c;-><init>(Lcom/oplus/camera/capmode/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    invoke-virtual {v14, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->Q:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1365
    :cond_10
    iget v1, v7, Lcom/oplus/camera/capmode/b;->k:I

    aget-object v2, v0, v15

    invoke-direct {v7, v1, v2, v12}, Lcom/oplus/camera/capmode/b;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1368
    :goto_3
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1369
    :try_start_3
    iget-wide v2, v7, Lcom/oplus/camera/capmode/b;->aa:J

    iget v4, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/oplus/camera/capmode/b;->aa:J

    .line 1370
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1372
    :try_start_4
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {v1, v15, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1374
    iget-wide v1, v7, Lcom/oplus/camera/capmode/b;->y:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_11

    iget-wide v1, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, v7, Lcom/oplus/camera/capmode/b;->x:J

    sub-long/2addr v1, v3

    iget-wide v3, v7, Lcom/oplus/camera/capmode/b;->y:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, reach to max duration time"

    .line 1375
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    const/16 v2, 0x320

    const/4 v3, -0x1

    invoke-virtual {v1, v11, v2, v3}, Lcom/oplus/camera/capmode/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1379
    iget-object v2, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/capmode/b$a;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v1, -0x1

    .line 1380
    iput-wide v1, v7, Lcom/oplus/camera/capmode/b;->y:J

    goto :goto_4

    :cond_11
    const/4 v3, -0x1

    .line 1381
    iget-wide v1, v7, Lcom/oplus/camera/capmode/b;->z:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_12

    iget-wide v1, v7, Lcom/oplus/camera/capmode/b;->aa:J

    iget-wide v4, v7, Lcom/oplus/camera/capmode/b;->z:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_12

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, reach to max file size"

    .line 1382
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    const/16 v2, 0x321

    invoke-virtual {v1, v11, v2, v3}, Lcom/oplus/camera/capmode/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1386
    iget-object v2, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/capmode/b$a;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v1, -0x1

    .line 1387
    iput-wide v1, v7, Lcom/oplus/camera/capmode/b;->z:J

    .line 1390
    :cond_12
    :goto_4
    iget v1, v7, Lcom/oplus/camera/capmode/b;->B:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_13

    .line 1391
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/oplus/camera/capmode/b;->t:J

    .line 1394
    :cond_13
    iput-boolean v11, v7, Lcom/oplus/camera/capmode/b;->ae:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 1370
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 1399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1401
    iget-object v0, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/b$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1402
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/b$a;->removeMessages(I)V

    .line 1403
    iget-object v1, v7, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/capmode/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 1406
    :goto_5
    iput v8, v7, Lcom/oplus/camera/capmode/b;->q:I

    .line 1407
    iput-wide v9, v7, Lcom/oplus/camera/capmode/b;->r:J

    .line 1408
    iput-wide v9, v7, Lcom/oplus/camera/capmode/b;->s:J

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, release audio codec"

    .line 1410
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1499
    iput p1, p0, Lcom/oplus/camera/capmode/b;->W:F

    .line 1500
    iput p2, p0, Lcom/oplus/camera/capmode/b;->X:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 424
    iput p1, p0, Lcom/oplus/camera/capmode/b;->aj:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1508
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p2, p0, Lcom/oplus/camera/capmode/b$b;->l:I

    .line 1509
    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->j:I

    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 668
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->y:J

    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->k:I

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->h:I

    .line 484
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->i:I

    .line 485
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->a:I

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->b:I

    .line 487
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->c:I

    .line 488
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->d:I

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->duration:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->e:I

    .line 490
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->f:I

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->quality:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->g:I

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, v0, Lcom/oplus/camera/capmode/b$b;->j:I

    .line 493
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->l:I

    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/c;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->L:Lcom/oplus/camera/capmode/c;

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/q;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1504
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->D:Ljava/io/FileDescriptor;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->ah:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->at:Z

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addYuvData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->au:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1213
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->at:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 1215
    iget v1, p0, Lcom/oplus/camera/capmode/b;->B:I

    if-ne v0, v1, :cond_1

    return-void

    .line 1217
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->au:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1218
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/b;->au:Z

    .line 1221
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1222
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1223
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1224
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 343
    iget p0, p0, Lcom/oplus/camera/capmode/b;->ay:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()F
    .locals 2

    .line 515
    iget v0, p0, Lcom/oplus/camera/capmode/b;->Y:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    int-to-float v0, v0

    .line 516
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget p0, p0, Lcom/oplus/camera/capmode/b$b;->k:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public b(I)V
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtractFrameRate, extractFrameRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iput p1, p0, Lcom/oplus/camera/capmode/b;->Y:I

    return-void
.end method

.method public b(J)V
    .locals 0

    long-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    .line 673
    iput-wide p1, p0, Lcom/oplus/camera/capmode/b;->z:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->ak:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->az:Z

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "prepare"

    .line 681
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->i()V

    .line 684
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->k()V

    .line 685
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->l()V

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    if-nez v0, :cond_1

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->D:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->D:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 692
    :cond_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iget v2, v2, Lcom/oplus/camera/capmode/b$b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    .line 695
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->m:I

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 696
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->A:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->W:F

    iget p0, p0, Lcom/oplus/camera/capmode/b;->X:F

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 698
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 704
    iput p1, p0, Lcom/oplus/camera/capmode/b;->m:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->ai:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSavePatch, mbSaveInSDCard is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->h:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1487
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->h:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/oplus/camera/capmode/b;->C:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBinauralRecordingState, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->aq:Z

    return-void
.end method

.method public d()Z
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "start"

    .line 708
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 712
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->g:Z

    if-eqz v1, :cond_0

    .line 713
    invoke-static {}, Lcom/oplus/camera/util/Util;->as()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->g:Z

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/capmode/b$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/b$4;-><init>(Lcom/oplus/camera/capmode/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->P:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/capmode/b$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/b$5;-><init>(Lcom/oplus/camera/capmode/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->V:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 747
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 750
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ad:Z

    .line 751
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ae:Z

    const/4 v1, 0x1

    .line 752
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/b;->m(I)V

    .line 753
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/b;->g:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->H()Z

    move-result v1

    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ab:Z

    .line 755
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    if-eqz v1, :cond_2

    .line 756
    invoke-virtual {v1}, Lcom/oplus/camera/gl/q;->k()V

    goto :goto_1

    :cond_2
    const-string v1, "start, mGLSurfaceView is null"

    .line 758
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_1
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->ab:Z

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 1491
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->k:I

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->g:Z

    return-void
.end method

.method public e()Z
    .locals 4

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/b;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->au:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 768
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->au:Z

    .line 770
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->av:Z

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->aw:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 772
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->aw:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 776
    :cond_0
    iget v0, p0, Lcom/oplus/camera/capmode/b;->B:I

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 781
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/b;->m(I)V

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 785
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 787
    iget-object v2, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 789
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    if-eqz v0, :cond_2

    .line 792
    invoke-virtual {v0}, Lcom/oplus/camera/gl/q;->j()V

    goto :goto_0

    :cond_2
    const-string v0, "CameraMediaCodec"

    const-string v2, "stop, mGLSurfaceView is null"

    .line 794
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v2, 0x0

    .line 797
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->u:J

    .line 798
    iput-wide v2, p0, Lcom/oplus/camera/capmode/b;->t:J

    .line 799
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->C()V

    .line 800
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->A()V

    .line 801
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/b;->aq:Z

    .line 803
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/b;->g:Z

    if-eqz v0, :cond_3

    .line 804
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->t()V

    .line 805
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->u()V

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->am:Lcom/oplus/camera/gl/z;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/b;->ao:Z

    if-nez v1, :cond_4

    .line 809
    invoke-virtual {v0}, Lcom/oplus/camera/gl/z;->a()V

    .line 812
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->an:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 813
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 814
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->an:Landroid/os/Handler;

    .line 817
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 818
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 819
    iput-object v1, p0, Lcom/oplus/camera/capmode/b;->as:Landroid/os/Handler;

    .line 822
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->T:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 824
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/b;->ab:Z

    return p0

    :catchall_0
    move-exception p0

    .line 789
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 785
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public f()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "pause"

    .line 852
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/capmode/b;->t:J

    const/4 v1, 0x2

    .line 855
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/b;->m(I)V

    const-wide/16 v1, 0x0

    .line 856
    iput-wide v1, p0, Lcom/oplus/camera/capmode/b;->u:J

    .line 858
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    if-eqz p0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/oplus/camera/gl/q;->j()V

    goto :goto_0

    :cond_0
    const-string p0, "pause, mGLSurfaceView is null"

    .line 861
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1495
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->f:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1778
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->ao:Z

    return-void
.end method

.method public g()V
    .locals 6

    .line 866
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/b;->u:J

    .line 867
    iget-wide v0, p0, Lcom/oplus/camera/capmode/b;->v:J

    iget-wide v2, p0, Lcom/oplus/camera/capmode/b;->u:J

    iget-wide v4, p0, Lcom/oplus/camera/capmode/b;->t:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/capmode/b;->v:J

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume, mPausedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/capmode/b;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 871
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/b;->m(I)V

    .line 873
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 875
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->N:Lcom/oplus/camera/gl/q;

    if-eqz p0, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/oplus/camera/gl/q;->k()V

    goto :goto_0

    :cond_0
    const-string p0, "CameraMediaCodec"

    const-string v0, "resume, mGLSurfaceView is null"

    .line 880
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 875
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public g(I)V
    .locals 0

    .line 1513
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->i:I

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1782
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->ag:Z

    return-void
.end method

.method public h()V
    .locals 4

    .line 1832
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1833
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->ar:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/capmode/b$c;

    .line 1835
    iget-object v1, v0, Lcom/oplus/camera/capmode/b$c;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1836
    iget-boolean v0, v0, Lcom/oplus/camera/capmode/b$c;->a:Z

    if-eqz v0, :cond_1

    .line 1837
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->B()V

    goto :goto_1

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1840
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->O:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/capmode/b$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/b$2;-><init>(Lcom/oplus/camera/capmode/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1851
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->S:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 1852
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->S:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1856
    :cond_2
    :goto_1
    iget v0, p0, Lcom/oplus/camera/capmode/b;->k:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/capmode/b;->j:I

    if-gez v0, :cond_0

    .line 1857
    invoke-direct {p0}, Lcom/oplus/camera/capmode/b;->E()V

    .line 1859
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->G:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 1864
    :cond_3
    iget v1, v0, Lcom/oplus/camera/capmode/b$c;->b:I

    iget-object v2, v0, Lcom/oplus/camera/capmode/b$c;->c:Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/oplus/camera/capmode/b$c;->d:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/camera/capmode/b;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1865
    iget-object v1, v0, Lcom/oplus/camera/capmode/b$c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 1866
    iput-object v1, v0, Lcom/oplus/camera/capmode/b$c;->c:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1870
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1872
    iget-object v0, p0, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/b$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1873
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/b$a;->removeMessages(I)V

    .line 1874
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->M:Lcom/oplus/camera/capmode/b$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1517
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->a:I

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1786
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b;->ap:Z

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1521
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->b:I

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1525
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->d:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1529
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->U:Lcom/oplus/camera/capmode/b$b;

    iput p1, p0, Lcom/oplus/camera/capmode/b$b;->c:I

    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1763
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1764
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->m(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "vendor.ozoaudio.focus-gain.value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-object p1, p0, Lcom/oplus/camera/capmode/b;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 1767
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 1768
    iget-object p0, p0, Lcom/oplus/camera/capmode/b;->F:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 1770
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

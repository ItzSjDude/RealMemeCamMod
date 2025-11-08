.class public Lcom/oplus/a/a;
.super Ljava/lang/Object;
.source "OplusBlurProcess.java"

# interfaces
.implements Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/a/a$a;,
        Lcom/oplus/a/a$c;,
        Lcom/oplus/a/a$b;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:[I = null

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static i:I = 0xc0


# instance fields
.field private final e:Ljava/lang/Object;

.field private f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

.field private g:Landroid/content/Context;

.field private h:I

.field private j:Z

.field private k:J

.field private l:[B

.field private m:Ljava/nio/ByteBuffer;

.field private n:Lcom/oplus/a/a$b;

.field private o:Z

.field private p:I

.field private q:[I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/a/a;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/oplus/a/a;->h:I

    .line 46
    iput-boolean v1, p0, Lcom/oplus/a/a;->j:Z

    .line 48
    iput-object v0, p0, Lcom/oplus/a/a;->l:[B

    .line 49
    iput-object v0, p0, Lcom/oplus/a/a;->m:Ljava/nio/ByteBuffer;

    .line 50
    iput-object v0, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    .line 51
    iput-boolean v1, p0, Lcom/oplus/a/a;->o:Z

    .line 52
    iput v1, p0, Lcom/oplus/a/a;->p:I

    const/4 v0, 0x5

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oplus/a/a;->q:[I

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/oplus/a/a;->r:I

    .line 55
    iput v0, p0, Lcom/oplus/a/a;->s:I

    .line 56
    iput v0, p0, Lcom/oplus/a/a;->t:I

    .line 58
    iput-boolean v1, p0, Lcom/oplus/a/a;->u:Z

    .line 61
    invoke-static {}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->getInstance()Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic a(Lcom/oplus/a/a;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/oplus/a/a;->m:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static declared-synchronized a(II)Z
    .locals 12

    const-class v0, Lcom/oplus/a/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "OplusBlurProcess"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, previewWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previewHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/a/a;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-boolean v1, Lcom/oplus/a/a;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/oplus/a/a;->c:I

    if-ne v1, p0, :cond_0

    sget v1, Lcom/oplus/a/a;->d:I

    if-eq v1, p1, :cond_1

    .line 75
    :cond_0
    sput p0, Lcom/oplus/a/a;->c:I

    .line 76
    sput p1, Lcom/oplus/a/a;->d:I

    .line 77
    sput-boolean v2, Lcom/oplus/a/a;->a:Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "OplusBlurProcess"

    const-string v5, "initialize, start"

    .line 80
    invoke-static {v1, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OplusBlurProcess"

    .line 82
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->getInstance()Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    move-result-object v5

    const-string v6, "/odm/lib64"

    const-string v7, "/odm/lib/rfsa/adsp"

    const-string v8, "/odm/etc/camera/sensetime/personseg.bin"

    const-string v9, "/odm/etc/camera/sensetime/preview_seg.json"

    move v10, p0

    move v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->segInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object p0

    sput-object p0, Lcom/oplus/a/a;->b:[I

    const-string p0, "OplusBlurProcess"

    .line 84
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string p0, "OplusBlurProcess"

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, cost: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p0, Lcom/oplus/a/a;->b:[I

    aget p0, p0, v2

    sput p0, Lcom/oplus/a/a;->i:I

    :cond_1
    const-string p0, "OplusBlurProcess"

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, init Result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/a/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p0, Lcom/oplus/a/a;->b:[I

    aget p0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/oplus/a/a;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oplus/a/a;->u:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/a/a;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oplus/a/a;->o:Z

    return p1
.end method

.method static synthetic a(Lcom/oplus/a/a;[B)[B
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/oplus/a/a;->l:[B

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/a/a;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oplus/a/a;->h:I

    return p0
.end method

.method static synthetic c(Lcom/oplus/a/a;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/a/a;->m:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/a/a;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/a/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f()I
    .locals 1

    .line 19
    sget v0, Lcom/oplus/a/a;->i:I

    return v0
.end method

.method private g()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/oplus/a/a;->q:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_0

    .line 349
    aget v2, v2, v1

    invoke-static {v2}, Lcom/sensetime/utils/OpenGLUtils;->destroyTexture(I)V

    .line 350
    iget-object v2, p0, Lcom/oplus/a/a;->q:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_0
    iput v4, p0, Lcom/oplus/a/a;->r:I

    .line 354
    iput v4, p0, Lcom/oplus/a/a;->s:I

    .line 355
    iput-boolean v0, p0, Lcom/oplus/a/a;->o:Z

    return-void
.end method


# virtual methods
.method public a(IF)I
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewSetParam(IF)I

    move-result p0

    return p0
.end method

.method public a(III[I)I
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {p0}, Lcom/oplus/a/a;->d()I

    move-result v2

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewProcess(IIII[I)I

    move-result p0

    return p0
.end method

.method public a(III[Landroid/graphics/Rect;II[IZ)I
    .locals 19

    move-object/from16 v9, p0

    .line 166
    iget-boolean v0, v9, Lcom/oplus/a/a;->o:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    const/4 v3, -0x2

    move/from16 v2, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewProcess(IIII[I)I

    move-result v0

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/oplus/a/a;->g()V

    return v0

    .line 172
    :cond_0
    iget-object v0, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/oplus/a/a$b;

    invoke-direct {v0, v9, v1}, Lcom/oplus/a/a$b;-><init>(Lcom/oplus/a/a;Lcom/oplus/a/a$1;)V

    iput-object v0, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    .line 174
    iget-object v0, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-virtual {v0}, Lcom/oplus/a/a$b;->start()V

    .line 177
    :cond_1
    iget-object v0, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-static {v0}, Lcom/oplus/a/a$b;->a(Lcom/oplus/a/a$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v2, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    const/4 v4, -0x2

    move/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewProcess(IIII[I)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    .line 181
    new-array v2, v0, [I

    iget-object v3, v9, Lcom/oplus/a/a;->q:[I

    iget v4, v9, Lcom/oplus/a/a;->p:I

    aget v3, v3, v4

    const/4 v10, 0x0

    aput v3, v2, v10

    .line 183
    aget v3, v2, v10

    const/4 v4, -0x1

    if-gtz v3, :cond_3

    move/from16 v3, p2

    move/from16 v5, p3

    .line 184
    invoke-static {v1, v3, v5, v4}, Lcom/sensetime/utils/OpenGLUtils;->loadTexture(Ljava/nio/Buffer;III)I

    move-result v3

    aput v3, v2, v10

    .line 187
    :cond_3
    iget-object v3, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    move/from16 v12, p1

    invoke-virtual {v3, v12, v2, v10}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewTextureCopy(I[IZ)I

    .line 188
    iget-object v3, v9, Lcom/oplus/a/a;->q:[I

    iget v5, v9, Lcom/oplus/a/a;->p:I

    aget v6, v2, v10

    aput v6, v3, v5

    add-int/2addr v5, v0

    .line 189
    iput v5, v9, Lcom/oplus/a/a;->p:I

    array-length v0, v3

    rem-int/2addr v5, v0

    iput v5, v9, Lcom/oplus/a/a;->p:I

    .line 190
    sget v0, Lcom/oplus/a/a;->i:I

    .line 193
    iget v3, v9, Lcom/oplus/a/a;->t:I

    if-gtz v3, :cond_4

    .line 194
    invoke-static {v1, v0, v0, v4}, Lcom/sensetime/utils/OpenGLUtils;->loadTexture(Ljava/nio/Buffer;III)I

    move-result v1

    iput v1, v9, Lcom/oplus/a/a;->t:I

    .line 197
    :cond_4
    iget-object v13, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    aget v14, v2, v10

    iget v15, v9, Lcom/oplus/a/a;->t:I

    const/16 v18, 0x0

    move/from16 v16, v0

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewTextureResize(IIIIZ)I

    mul-int v1, v0, v0

    mul-int/lit8 v1, v1, 0x4

    .line 199
    new-array v4, v1, [B

    .line 200
    iget v1, v9, Lcom/oplus/a/a;->t:I

    invoke-static {v1, v0, v0, v4}, Lcom/sensetime/utils/OpenGLUtils;->readPix(III[B)V

    .line 202
    iget-object v1, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-static {v1}, Lcom/oplus/a/a$b;->a(Lcom/oplus/a/a$b;)Z

    move-result v1

    if-nez v1, :cond_5

    return v10

    .line 206
    :cond_5
    iget-object v1, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-virtual {v1}, Lcom/oplus/a/a$b;->a()Lcom/oplus/a/a$c;

    move-result-object v11

    .line 209
    :try_start_0
    iget-object v1, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-static {v1}, Lcom/oplus/a/a$b;->b(Lcom/oplus/a/a$b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v13

    new-instance v14, Lcom/oplus/a/a$a;

    aget v3, v2, v10

    move-object v1, v14

    move-object/from16 v2, p0

    move v5, v0

    move v6, v0

    move-object/from16 v7, p4

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/oplus/a/a$a;-><init>(Lcom/oplus/a/a;I[BII[Landroid/graphics/Rect;Z)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 215
    :goto_0
    iget-object v0, v9, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-static {v0}, Lcom/oplus/a/a$b;->a(Lcom/oplus/a/a$b;)Z

    move-result v0

    if-nez v0, :cond_6

    return v10

    :cond_6
    if-nez v11, :cond_8

    .line 220
    iget v2, v9, Lcom/oplus/a/a;->r:I

    if-gtz v2, :cond_7

    .line 221
    iget-object v11, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    const/4 v13, -0x2

    move/from16 v12, p1

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v11 .. v16}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewProcess(IIII[I)I

    move-result v0

    return v0

    .line 223
    :cond_7
    iget-object v1, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    iget v3, v9, Lcom/oplus/a/a;->s:I

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewProcess(IIII[I)I

    move-result v0

    return v0

    .line 228
    :cond_8
    iget-object v0, v11, Lcom/oplus/a/a$c;->b:[B

    invoke-virtual {v9, v0}, Lcom/oplus/a/a;->a([B)I

    move-result v3

    .line 229
    iget v0, v11, Lcom/oplus/a/a$c;->a:I

    iput v0, v9, Lcom/oplus/a/a;->r:I

    .line 230
    iput v3, v9, Lcom/oplus/a/a;->s:I

    .line 231
    iget-object v1, v9, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    iget v2, v11, Lcom/oplus/a/a$c;->a:I

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewProcess(IIII[I)I

    move-result v0

    return v0
.end method

.method public a([B)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 271
    new-array v1, v0, [I

    .line 272
    iget-object p0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewGetMaskTexture([B[IZ)I

    const/4 p0, 0x0

    .line 273
    aget p0, v1, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public a()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/oplus/a/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->unregisterOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->stop()V

    .line 106
    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->stop()V

    .line 108
    iget-object v0, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/oplus/a/a$b;->c()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-virtual {v0}, Lcom/oplus/a/a$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 117
    :goto_0
    iput-object v1, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->segUnInit()I

    .line 122
    const-class v0, Lcom/oplus/a/a;

    monitor-enter v0

    const/4 v2, 0x0

    .line 123
    :try_start_1
    sput-boolean v2, Lcom/oplus/a/a;->a:Z

    .line 124
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    iput-object v1, p0, Lcom/oplus/a/a;->g:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception p0

    .line 124
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, segVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->segGetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaskSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBlurProcess"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->registerOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->start()V

    .line 100
    invoke-static {p1}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->start(Landroid/content/Context;)V

    .line 101
    iput-object p1, p0, Lcom/oplus/a/a;->g:Landroid/content/Context;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/a/a;->u:Z

    .line 66
    iget-object p0, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oplus/a/a$b;->b()V

    :cond_0
    return-void
.end method

.method public a([BIIIZ[Landroid/graphics/Rect;)V
    .locals 6

    .line 325
    iput p4, p0, Lcom/oplus/a/a;->h:I

    .line 327
    iget-object p4, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    if-nez p4, :cond_0

    .line 328
    new-instance p4, Lcom/oplus/a/a$b;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/oplus/a/a$b;-><init>(Lcom/oplus/a/a;Lcom/oplus/a/a$1;)V

    iput-object p4, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    .line 329
    iget-object p4, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    invoke-virtual {p4}, Lcom/oplus/a/a$b;->start()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/a/a$b;->a([BIIZ[Landroid/graphics/Rect;)V

    return-void
.end method

.method public a([BII[BZ[Landroid/graphics/Rect;II)V
    .locals 15

    move-object/from16 v0, p6

    .line 281
    invoke-static/range {p5 .. p5}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 288
    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_2

    .line 295
    :cond_0
    array-length v3, v0

    .line 296
    new-array v4, v3, [I

    .line 297
    new-array v5, v3, [I

    .line 298
    new-array v6, v3, [I

    .line 299
    new-array v7, v3, [I

    .line 300
    new-array v8, v3, [I

    move v9, v2

    :goto_0
    if-ge v9, v3, :cond_3

    const/4 v10, -0x1

    .line 303
    aput v10, v4, v9

    .line 304
    aget-object v10, v0, v9

    if-eqz v10, :cond_1

    .line 307
    iget v11, v10, Landroid/graphics/Rect;->left:I

    aput v11, v5, v9

    .line 308
    iget v11, v10, Landroid/graphics/Rect;->top:I

    aput v11, v6, v9

    .line 309
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    aput v11, v7, v9

    .line 310
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    aput v10, v8, v9

    goto :goto_1

    .line 312
    :cond_1
    aput v2, v5, v9

    .line 313
    aput v2, v6, v9

    .line 314
    aput v2, v7, v9

    .line 315
    aput v2, v8, v9

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 289
    :cond_2
    :goto_2
    new-array v4, v2, [I

    .line 290
    new-array v5, v2, [I

    .line 291
    new-array v6, v2, [I

    .line 292
    new-array v7, v2, [I

    .line 293
    new-array v8, v2, [I

    :cond_3
    move-object v0, p0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    .line 320
    iget-object v2, v0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {v1}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v14}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->segExecute([B[BIIIII[I[I[I[I[I)I

    return-void
.end method

.method public b()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/oplus/a/a;->g()V

    .line 142
    iget v0, p0, Lcom/oplus/a/a;->t:I

    invoke-static {v0}, Lcom/sensetime/utils/OpenGLUtils;->destroyTexture(I)V

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/oplus/a/a;->t:I

    .line 144
    iget-object p0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewDestory()I

    return-void
.end method

.method public b(II)V
    .locals 6

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {v2, p1, p2}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewInit(II)J

    move-result-wide v2

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRender, previewWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", previewHeight: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", previewHandle: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", previewVersion: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    .line 136
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewGetVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cost: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBlurProcess"

    .line 133
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/oplus/a/a;->n:Lcom/oplus/a/a$b;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/oplus/a/a$b;->d()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 10

    .line 238
    iget v0, p0, Lcom/oplus/a/a;->h:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oplus/a/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/oplus/a/a;->l:[B

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-boolean v0, p0, Lcom/oplus/a/a;->j:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v0, v3

    .line 249
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 250
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x12c

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oplus/a/a;->k:J

    sub-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 254
    iput-boolean v3, p0, Lcom/oplus/a/a;->j:Z

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 259
    new-array v1, v0, [I

    .line 260
    iget-object p0, p0, Lcom/oplus/a/a;->f:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->bokehPreviewGetMaskTexture([B[IZ)I

    .line 261
    aget v1, v1, v3

    :cond_3
    return v1

    :catchall_0
    move-exception p0

    .line 246
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/oplus/a/a;->j:Z

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/a/a;->k:J

    return-void
.end method

.method public onShake(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/oplus/a/a;->e()V

    :cond_0
    return-void
.end method

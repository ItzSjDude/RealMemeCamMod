.class public Lcom/oplus/camera/gl/z;
.super Ljava/lang/Object;
.source "YUVRenderer.java"

# interfaces
.implements Lcom/oplus/camera/gl/m$m;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/oplus/camera/gl/h;

.field private f:[F

.field private g:Lcom/oplus/camera/gl/g;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/z;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/oplus/camera/gl/z;->c:I

    .line 23
    iput v1, p0, Lcom/oplus/camera/gl/z;->d:I

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/gl/z;->e:Lcom/oplus/camera/gl/h;

    const/16 v1, 0x10

    .line 26
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oplus/camera/gl/z;->f:[F

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/gl/z;->g:Lcom/oplus/camera/gl/g;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/oplus/camera/gl/z;->h:J

    .line 31
    invoke-static {}, Lcom/oplus/camera/jni/PreviewShow;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/gl/z;->h:J

    .line 32
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {v0, v2, v1, v2}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v3, v1, v3}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    const/high16 v4, 0x42b40000    # 90.0f

    .line 35
    invoke-virtual {v0, v4, v3, v3, v2}, Landroid/renderscript/Matrix4f;->rotate(FFFF)V

    .line 36
    invoke-virtual {v0, v3, v1, v3}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 37
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/gl/z;->f:[F

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;IIII)V
    .locals 11

    move-object v0, p0

    move-object v7, p1

    move v5, p4

    move/from16 v6, p5

    .line 81
    iget-object v1, v0, Lcom/oplus/camera/gl/z;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v2, v0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    iget-object v2, v0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "drawHardwareBuffer"

    .line 87
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    if-eqz v8, :cond_1

    const/4 v1, 0x2

    .line 90
    invoke-interface {p1, v1}, Lcom/oplus/camera/gl/h;->a(I)V

    .line 91
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->d()I

    move-result v9

    .line 92
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->e()I

    move-result v10

    .line 93
    invoke-interface {p1, p4, v6}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 94
    div-int/lit8 v1, v5, 0x2

    add-int/2addr v1, p2

    .line 95
    div-int/lit8 v2, v6, 0x2

    add-int/2addr v2, p3

    int-to-float v3, v1

    int-to-float v4, v2

    .line 97
    invoke-interface {p1, v3, v4}, Lcom/oplus/camera/gl/h;->a(FF)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 98
    invoke-interface {p1, v4, v3, v4}, Lcom/oplus/camera/gl/h;->a(FFF)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    .line 99
    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/gl/h;->a(FF)V

    const v1, 0x8d65

    .line 101
    iget-object v2, v0, Lcom/oplus/camera/gl/z;->g:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->e()I

    move-result v2

    iget-wide v3, v0, Lcom/oplus/camera/gl/z;->h:J

    invoke-static {v8, v1, v2, v3, v4}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 103
    iget-object v1, v0, Lcom/oplus/camera/gl/z;->g:Lcom/oplus/camera/gl/g;

    iget-object v2, v0, Lcom/oplus/camera/gl/z;->f:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 104
    invoke-interface {p1, v9, v10}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 105
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 107
    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    const-string v0, "drawHardwareBuffer"

    .line 110
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 85
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/gl/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-wide v0, p0, Lcom/oplus/camera/gl/z;->h:J

    invoke-static {v0, v1}, Lcom/oplus/camera/jni/PreviewShow;->release(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Landroid/hardware/HardwareBuffer;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/gl/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 59
    monitor-exit v0

    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 63
    iget-object v1, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/gl/z;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    const/4 p1, 0x4

    .line 72
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 74
    iget-object v0, p0, Lcom/oplus/camera/gl/z;->e:Lcom/oplus/camera/gl/h;

    invoke-interface {v0, p1}, Lcom/oplus/camera/gl/h;->a([F)V

    .line 75
    iget-object v2, p0, Lcom/oplus/camera/gl/z;->e:Lcom/oplus/camera/gl/h;

    iget v5, p0, Lcom/oplus/camera/gl/z;->c:I

    iget v6, p0, Lcom/oplus/camera/gl/z;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/gl/z;->a(Lcom/oplus/camera/gl/h;IIII)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 49
    iput p2, p0, Lcom/oplus/camera/gl/z;->c:I

    .line 50
    iput p3, p0, Lcom/oplus/camera/gl/z;->d:I

    .line 51
    iget-object p1, p0, Lcom/oplus/camera/gl/z;->e:Lcom/oplus/camera/gl/h;

    iget p2, p0, Lcom/oplus/camera/gl/z;->c:I

    iget p0, p0, Lcom/oplus/camera/gl/z;->d:I

    invoke-interface {p1, p2, p0}, Lcom/oplus/camera/gl/h;->a(II)V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 43
    new-instance p1, Lcom/oplus/camera/gl/g;

    const p2, 0x8d65

    invoke-direct {p1, p2}, Lcom/oplus/camera/gl/g;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/camera/gl/z;->g:Lcom/oplus/camera/gl/g;

    .line 44
    new-instance p1, Lcom/oplus/camera/gl/i;

    invoke-direct {p1}, Lcom/oplus/camera/gl/i;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/z;->e:Lcom/oplus/camera/gl/h;

    return-void
.end method

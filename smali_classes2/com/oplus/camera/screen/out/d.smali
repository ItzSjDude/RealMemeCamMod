.class public Lcom/oplus/camera/screen/out/d;
.super Lcom/oplus/camera/screen/out/b;
.source "OesDrawer.java"


# static fields
.field private static final e:Landroid/view/animation/PathInterpolator;


# instance fields
.field private A:Lcom/oplus/camera/screen/out/a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:I

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/nio/FloatBuffer;

.field private r:Landroid/graphics/Matrix;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/Rect;

.field private v:J

.field private w:Lcom/oplus/camera/gl/a/d;

.field private x:Ljava/nio/FloatBuffer;

.field private y:Ljava/nio/FloatBuffer;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f1eb852    # 0.62f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/screen/out/d;->e:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/screen/out/b;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->f:I

    .line 32
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->g:I

    .line 33
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->h:I

    .line 34
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->i:I

    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/oplus/camera/screen/out/d;->j:I

    .line 36
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->k:I

    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->l:[I

    .line 38
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->m:I

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcom/oplus/camera/screen/out/d;->n:J

    .line 40
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->o:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->p:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->q:Ljava/nio/FloatBuffer;

    .line 43
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/screen/out/d;->r:Landroid/graphics/Matrix;

    .line 44
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    .line 45
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    .line 46
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/screen/out/d;->u:Landroid/graphics/Rect;

    .line 47
    iput-wide v3, p0, Lcom/oplus/camera/screen/out/d;->v:J

    .line 48
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    .line 49
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->x:Ljava/nio/FloatBuffer;

    .line 50
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->y:Ljava/nio/FloatBuffer;

    .line 51
    iput v0, p0, Lcom/oplus/camera/screen/out/d;->z:I

    .line 52
    iput-object v2, p0, Lcom/oplus/camera/screen/out/d;->A:Lcom/oplus/camera/screen/out/a;

    .line 56
    sget-object v0, Lcom/oplus/camera/screen/out/g;->c:[F

    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/out/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/screen/out/d;->x:Ljava/nio/FloatBuffer;

    .line 57
    sget-object v0, Lcom/oplus/camera/screen/out/g;->d:[F

    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/out/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/screen/out/d;->y:Ljava/nio/FloatBuffer;

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oplus/camera/screen/out/d;->l:[I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/screen/out/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/screen/out/d;->o:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f006b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/screen/out/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/d;->p:Ljava/lang/String;

    return-void
.end method

.method private a(I)Ljava/nio/FloatBuffer;
    .locals 2

    .line 120
    sget-object v0, Lcom/oplus/camera/screen/out/g;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/screen/out/d;->a([F[F)[F

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->r:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->r:Landroid/graphics/Matrix;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->r:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 125
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->q:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/out/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/d;->q:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 130
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/screen/out/d;->q:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method private a(III)V
    .locals 10

    const/16 p0, 0xde1

    .line 189
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2601

    const/16 v0, 0x2800

    .line 190
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 191
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p1, 0x812f

    const/16 v0, 0x2802

    .line 192
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 193
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v4, p2

    move v5, p3

    .line 194
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 105
    iget p0, p1, Lcom/oplus/camera/screen/out/a;->c:I

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget p0, p1, Lcom/oplus/camera/screen/out/a;->d:I

    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v0, p0

    .line 108
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, p0, v2

    if-gez p0, :cond_0

    .line 109
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    const-wide v2, 0x3fcc07240fb5bc29L    # 0.21896792189679218

    :goto_0
    mul-double/2addr p0, v2

    goto :goto_1

    :cond_0
    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double p0, v0, p0

    .line 110
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_1

    .line 111
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    const-wide v2, 0x3faf6b7852d58309L    # 0.061366806136680614

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    const-wide v2, 0x3fd35e9dd027fd25L    # 0.30264993026499304

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    double-to-int v3, p0

    .line 116
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-double v5, p2

    mul-double/2addr v5, v0

    add-double/2addr p0, v5

    double-to-int p0, p0

    invoke-virtual {p3, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 70
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->f:I

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/screen/out/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/d;->f:I

    .line 72
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->f:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/d;->g:I

    .line 73
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->f:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/d;->h:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIII)I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    div-int/lit8 p2, p2, 0xa

    div-int/lit8 p3, p3, 0xa

    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/gl/a/d;->b(II)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/gl/a/d;->a(II)V

    .line 154
    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {p2, p4}, Lcom/oplus/camera/gl/a/d;->a(I)V

    .line 155
    sget-object p2, Lcom/oplus/camera/gl/a/c;->a:[F

    invoke-static {p2}, Lcom/oplus/camera/util/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    .line 156
    sget-object p3, Lcom/oplus/camera/gl/a/c;->b:[F

    invoke-static {p3}, Lcom/oplus/camera/util/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    .line 157
    iget-object p0, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/gl/a/d;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method protected a()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/oplus/camera/screen/out/b;->a()V

    .line 66
    invoke-direct {p0}, Lcom/oplus/camera/screen/out/d;->e()V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)V
    .locals 5

    .line 82
    iget-wide v0, p0, Lcom/oplus/camera/screen/out/d;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->c:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->c:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->l:[I

    array-length v2, v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 85
    invoke-static {}, Lcom/oplus/camera/jni/PreviewShow;->init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/screen/out/d;->n:J

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/d;->a()V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/screen/out/d;->a(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 90
    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p2, v0, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 91
    iget p2, p0, Lcom/oplus/camera/screen/out/d;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p2, 0x84c0

    .line 92
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 94
    iget-object p2, p1, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    .line 95
    iget-object p2, p1, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    const v0, 0x8d65

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->c:[I

    iget v3, p0, Lcom/oplus/camera/screen/out/d;->i:I

    aget v2, v2, v3

    iget-wide v3, p0, Lcom/oplus/camera/screen/out/d;->n:J

    invoke-static {p2, v0, v2, v3, v4}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 98
    :cond_1
    iget p2, p0, Lcom/oplus/camera/screen/out/d;->h:I

    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->y:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p2, v0}, Lcom/oplus/camera/screen/out/d;->b(ILjava/nio/FloatBuffer;)V

    .line 99
    iget p2, p0, Lcom/oplus/camera/screen/out/d;->g:I

    iget v0, p1, Lcom/oplus/camera/screen/out/a;->e:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/screen/out/d;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/oplus/camera/screen/out/d;->c(ILjava/nio/FloatBuffer;)V

    const/4 p2, 0x5

    const/4 v0, 0x4

    .line 100
    invoke-static {p2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/screen/out/d;->A:Lcom/oplus/camera/screen/out/a;

    return-void
.end method

.method public b()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/oplus/camera/screen/out/b;->b()V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->l:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 141
    iget-wide v0, p0, Lcom/oplus/camera/screen/out/d;->n:J

    invoke-static {v0, v1}, Lcom/oplus/camera/jni/PreviewShow;->release(J)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/oplus/camera/gl/a/d;->b()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->u:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/screen/out/d;->a(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/screen/out/d;->v:J

    .line 165
    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->c:[I

    iget v0, p0, Lcom/oplus/camera/screen/out/d;->j:I

    aget p2, p2, v0

    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/oplus/camera/screen/out/d;->a(III)V

    .line 166
    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->l:[I

    iget v0, p0, Lcom/oplus/camera/screen/out/d;->m:I

    aget p2, p2, v0

    const v0, 0x8d40

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 167
    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->c:[I

    iget v1, p0, Lcom/oplus/camera/screen/out/d;->j:I

    aget p2, p2, v1

    const/4 v1, 0x0

    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-static {v0, v2, v3, p2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 169
    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v1, p2, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 170
    iget p2, p0, Lcom/oplus/camera/screen/out/d;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p2, 0x84c0

    .line 171
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 172
    iget p2, p0, Lcom/oplus/camera/screen/out/d;->h:I

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->y:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p2, v2}, Lcom/oplus/camera/screen/out/d;->b(ILjava/nio/FloatBuffer;)V

    .line 173
    iget p2, p0, Lcom/oplus/camera/screen/out/d;->g:I

    iget p1, p1, Lcom/oplus/camera/screen/out/a;->e:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/out/d;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/screen/out/d;->c(ILjava/nio/FloatBuffer;)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 174
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 175
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 177
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    if-nez p1, :cond_0

    .line 178
    new-instance p1, Lcom/oplus/camera/gl/a/d;

    invoke-direct {p1}, Lcom/oplus/camera/gl/a/d;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->w:Lcom/oplus/camera/gl/a/d;

    new-instance p2, Landroid/util/Size;

    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p2, v0, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcom/oplus/camera/screen/out/d;->u:Landroid/graphics/Rect;

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/screen/out/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 181
    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/gl/a/d;->a(Landroid/util/Size;Landroid/util/Size;)V

    .line 184
    iput v1, p0, Lcom/oplus/camera/screen/out/d;->z:I

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/oplus/camera/screen/out/d;->A:Lcom/oplus/camera/screen/out/a;

    return-void
.end method

.method public c()Z
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/oplus/camera/screen/out/d;->n:J

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)Z
    .locals 8

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/screen/out/d;->v:J

    sub-long/2addr v0, v2

    long-to-float p1, v0

    const/high16 v0, 0x44160000    # 600.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    move p1, v0

    .line 206
    :cond_1
    sget-object v0, Lcom/oplus/camera/screen/out/d;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    .line 208
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->z:I

    const/16 v4, 0x1e

    if-ge v0, v4, :cond_2

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->c:[I

    iget v4, p0, Lcom/oplus/camera/screen/out/d;->j:I

    aget v0, v0, v4

    iget-object v4, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v7, p1

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/oplus/camera/screen/out/d;->a(IIII)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/d;->k:I

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/oplus/camera/screen/out/d;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v0, v4

    .line 214
    iget-object v4, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/camera/screen/out/d;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/oplus/camera/screen/out/d;->t:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    .line 215
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    float-to-int v4, v4

    invoke-virtual {p1, v3, v0, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    iget-object p1, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/oplus/camera/screen/out/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, p2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 217
    iget p1, p0, Lcom/oplus/camera/screen/out/d;->k:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/screen/out/d;->a(ILjava/nio/FloatBuffer;)V

    .line 218
    iget p1, p0, Lcom/oplus/camera/screen/out/d;->z:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oplus/camera/screen/out/d;->z:I

    return v1
.end method

.method public d()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/screen/out/d;->A:Lcom/oplus/camera/screen/out/a;

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 225
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 226
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->h:I

    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->y:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/screen/out/d;->b(ILjava/nio/FloatBuffer;)V

    .line 227
    iget v0, p0, Lcom/oplus/camera/screen/out/d;->g:I

    iget-object v1, p0, Lcom/oplus/camera/screen/out/d;->A:Lcom/oplus/camera/screen/out/a;

    iget v1, v1, Lcom/oplus/camera/screen/out/a;->e:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/screen/out/d;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/screen/out/d;->c(ILjava/nio/FloatBuffer;)V

    const/4 p0, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 228
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    return-void
.end method

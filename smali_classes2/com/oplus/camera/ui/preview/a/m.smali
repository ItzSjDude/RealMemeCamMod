.class public Lcom/oplus/camera/ui/preview/a/m;
.super Ljava/lang/Object;
.source "FilterThumbDrawer.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/nio/FloatBuffer;

.field private E:Ljava/nio/FloatBuffer;

.field private F:Ljava/nio/FloatBuffer;

.field private G:Ljava/nio/FloatBuffer;

.field private H:Landroid/graphics/Bitmap;

.field private I:Landroid/graphics/Bitmap;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[F

.field private h:[I

.field private i:I

.field private j:I

.field private k:[I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->a:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->b:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->c:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->d:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->e:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->f:Ljava/lang/String;

    const/16 v1, 0x8

    .line 40
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/m;->g:[F

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->h:[I

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->i:I

    .line 44
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->j:I

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    .line 46
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->l:I

    .line 47
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->m:I

    .line 48
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->n:I

    .line 49
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->o:I

    .line 50
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->p:I

    .line 51
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->q:I

    .line 52
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    .line 53
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->s:I

    .line 54
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->t:I

    .line 55
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->u:I

    .line 56
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->v:I

    .line 57
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->w:I

    .line 58
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->x:I

    .line 59
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->y:I

    .line 60
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->z:I

    .line 61
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/m;->A:I

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->D:Ljava/nio/FloatBuffer;

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->E:Ljava/nio/FloatBuffer;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->F:Ljava/nio/FloatBuffer;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->G:Ljava/nio/FloatBuffer;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->H:Landroid/graphics/Bitmap;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->I:Landroid/graphics/Bitmap;

    .line 72
    sget-object v0, Lcom/oplus/camera/screen/out/g;->a:[F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->F:Ljava/nio/FloatBuffer;

    .line 73
    sget-object v0, Lcom/oplus/camera/screen/out/g;->b:[F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->D:Ljava/nio/FloatBuffer;

    .line 74
    sget-object v0, Lcom/oplus/camera/screen/out/g;->c:[F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->E:Ljava/nio/FloatBuffer;

    .line 75
    sget-object v0, Lcom/oplus/camera/screen/out/g;->b:[F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->G:Ljava/nio/FloatBuffer;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/m;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 3

    .line 364
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;)V

    .line 366
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 367
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x1

    .line 368
    new-array p0, p0, [I

    const/4 p1, 0x0

    const v1, 0x8b81

    .line 369
    invoke-static {v0, v1, p0, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 371
    aget p0, p0, p1

    if-nez p0, :cond_0

    .line 372
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 333
    invoke-static {v0, p0}, Lcom/oplus/camera/ui/preview/a/m;->a(ILjava/lang/String;)I

    move-result p0

    const-string v0, "FilterThumbDrawer"

    if-nez p0, :cond_0

    const-string v1, "load vertex shader error"

    .line 336
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v1, 0x8b30

    .line 339
    invoke-static {v1, p1}, Lcom/oplus/camera/ui/preview/a/m;->a(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string v1, "load fragment shader error"

    .line 342
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const-string v1, "glCreateProgram"

    .line 346
    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;)V

    .line 347
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    .line 348
    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;)V

    .line 349
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 350
    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 352
    new-array p1, p0, [I

    const v1, 0x8b82

    const/4 v2, 0x0

    .line 353
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 355
    aget p1, p1, v2

    if-eq p1, p0, :cond_2

    .line 356
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v2

    :cond_2
    return v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 311
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    .line 312
    new-array v0, v0, [B

    .line 316
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 323
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 320
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 327
    :goto_3
    throw p0
.end method

.method private a([F)Ljava/nio/FloatBuffer;
    .locals 1

    .line 108
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 109
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method private a(I)V
    .locals 8

    .line 86
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 87
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/m;->H:Landroid/graphics/Bitmap;

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/m;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 p0, 0x1

    .line 90
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p0, -0x1

    .line 91
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v4, p1

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v4

    float-to-int p0, p0

    int-to-float v6, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v4

    move v5, v6

    .line 94
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 1

    const/16 p0, 0xde1

    .line 269
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2601

    const/16 v0, 0x2800

    .line 270
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 271
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p1, 0x812f

    const/16 v0, 0x2802

    .line 272
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 273
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p1, 0x0

    .line 274
    invoke-static {p0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 10

    const/16 p0, 0xde1

    .line 259
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2601

    const/16 v0, 0x2800

    .line 260
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 261
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p1, 0x812f

    const/16 v0, 0x2802

    .line 262
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 263
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 264
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 380
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterThumbDrawer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/m;->c()V

    .line 279
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/m;->d()V

    .line 280
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/m;->e()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 284
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->A:I

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/m;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->A:I

    .line 286
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->A:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->B:I

    .line 287
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->A:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->C:I

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 292
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    .line 294
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->s:I

    .line 295
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->t:I

    .line 296
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    const-string v1, "aTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->v:I

    .line 297
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    const-string v1, "aTextureCoordMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->u:I

    .line 298
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    const-string v1, "aTextureMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->w:I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 303
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->x:I

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->x:I

    .line 305
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->x:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->y:I

    .line 306
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/m;->x:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/m;->z:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/m;->h:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    array-length v2, v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    if-eqz p0, :cond_1

    .line 103
    array-length v0, p0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/b;Ljava/util/List;IIF)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/ui/preview/a/b;",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;IIF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/m;->b()V

    const/4 v3, 0x0

    .line 125
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v4, v4, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 127
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->h:[I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_0

    .line 128
    new-array v5, v6, [I

    iput-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->h:[I

    .line 129
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->h:[I

    array-length v8, v5

    invoke-static {v8, v5, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 130
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->h:[I

    aget v8, v5, v3

    iput v8, v0, Lcom/oplus/camera/ui/preview/a/m;->i:I

    .line 131
    aget v5, v5, v7

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->j:I

    .line 134
    :cond_0
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    const/4 v8, 0x4

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->n:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v5, v9, :cond_1

    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->o:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v5, v9, :cond_7

    .line 135
    :cond_1
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    if-eqz v5, :cond_2

    .line 136
    array-length v9, v5

    invoke-static {v9, v5, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 139
    :cond_2
    new-array v5, v8, [I

    iput-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    .line 140
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    array-length v9, v5

    invoke-static {v9, v5, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 141
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    aget v5, v5, v3

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->l:I

    .line 142
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->l:I

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/ui/preview/a/m;->a(ILandroid/graphics/Rect;)V

    .line 143
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    aget v5, v5, v7

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->m:I

    .line 144
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->m:I

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/ui/preview/a/m;->a(ILandroid/graphics/Rect;)V

    .line 145
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    aget v5, v5, v6

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->q:I

    .line 146
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/oplus/camera/ui/preview/a/m;->a(I)V

    .line 147
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->p:I

    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/m;->H:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v9}, Lcom/oplus/camera/ui/preview/a/m;->a(ILandroid/graphics/Bitmap;)V

    .line 148
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->k:[I

    const/4 v9, 0x3

    aget v5, v5, v9

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->q:I

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->n:I

    .line 150
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Lcom/oplus/camera/ui/preview/a/m;->o:I

    .line 152
    sget-object v5, Lcom/oplus/camera/screen/out/g;->c:[F

    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/m;->g:[F

    array-length v10, v9

    invoke-static {v5, v3, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    move v9, v3

    .line 155
    :goto_0
    iget-object v10, v0, Lcom/oplus/camera/ui/preview/a/m;->g:[F

    array-length v11, v10

    if-ge v9, v11, :cond_4

    .line 156
    aget v11, v10, v9

    aget v12, v10, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    neg-float v12, v5

    :goto_1
    add-float/2addr v11, v12

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 159
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/DrawingItem;

    .line 160
    iget-object v9, v5, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v5, v5, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/oplus/camera/ui/preview/a/m;->I:Landroid/graphics/Bitmap;

    .line 161
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 162
    new-instance v9, Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/oplus/camera/ui/preview/a/m;->I:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lco/polarr/renderer/entities/DrawingItem;

    .line 165
    iget-object v12, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_5

    .line 166
    iget v12, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayLeft:I

    iget-object v13, v11, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    .line 167
    iget v13, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayTop:I

    iget-object v14, v11, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    .line 168
    iget-object v14, v11, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v11, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int v15, v13, v15

    sub-int/2addr v14, v15

    sub-int v15, v14, v13

    .line 169
    iget-object v7, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v15, v7

    iget-object v7, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v15, v7

    add-int/2addr v15, v12

    .line 172
    iget-object v7, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v8, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v11, v11, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v6, v3, v3, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v12, v13, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    invoke-virtual {v9, v7, v6, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    goto :goto_2

    .line 178
    :cond_6
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->q:I

    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/m;->I:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v6}, Lcom/oplus/camera/ui/preview/a/m;->a(ILandroid/graphics/Bitmap;)V

    .line 181
    :cond_7
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->i:I

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 182
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->l:I

    const v7, 0x8ce0

    const/16 v8, 0xde1

    invoke-static {v6, v7, v8, v5, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 184
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v3, v5, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 185
    iget v4, v0, Lcom/oplus/camera/ui/preview/a/m;->x:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v4, 0x84c0

    .line 186
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v5, 0x8d65

    move/from16 v9, p3

    .line 187
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    iget v9, v0, Lcom/oplus/camera/ui/preview/a/m;->y:I

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0x8

    iget-object v14, v0, Lcom/oplus/camera/ui/preview/a/m;->F:Ljava/nio/FloatBuffer;

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 189
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->y:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 190
    iget v9, v0, Lcom/oplus/camera/ui/preview/a/m;->z:I

    iget-object v14, v0, Lcom/oplus/camera/ui/preview/a/m;->E:Ljava/nio/FloatBuffer;

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 191
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/m;->z:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x5

    const/4 v9, 0x4

    .line 192
    invoke-static {v5, v3, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move v9, v3

    .line 194
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x302

    const/16 v12, 0xbe2

    if-ge v9, v10, :cond_9

    .line 195
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lco/polarr/renderer/entities/DrawingItem;

    .line 196
    iget-object v13, v10, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 200
    iget-object v14, v10, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const-string v15, "default"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 201
    iget v10, v0, Lcom/oplus/camera/ui/preview/a/m;->l:I

    goto :goto_4

    .line 203
    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v3, v3, v14, v15}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 204
    iget-object v10, v10, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/oplus/camera/ui/preview/a/b;->a(Ljava/lang/String;)V

    .line 205
    iget v10, v0, Lcom/oplus/camera/ui/preview/a/m;->l:I

    invoke-virtual {v1, v10}, Lcom/oplus/camera/ui/preview/a/b;->b(I)V

    .line 206
    iget v10, v0, Lcom/oplus/camera/ui/preview/a/m;->m:I

    invoke-virtual {v1, v10}, Lcom/oplus/camera/ui/preview/a/b;->a(I)V

    .line 207
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v1, v10, v14}, Lcom/oplus/camera/ui/preview/a/b;->a(II)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/ui/preview/a/b;->d()V

    .line 209
    iget v10, v0, Lcom/oplus/camera/ui/preview/a/m;->m:I

    .line 212
    :goto_4
    iget v14, v0, Lcom/oplus/camera/ui/preview/a/m;->j:I

    invoke-static {v6, v14}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    move/from16 v14, p4

    .line 213
    invoke-static {v6, v7, v8, v14, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 215
    iget v15, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v16, 0x2

    div-int/lit8 v17, v17, 0x2

    add-int v15, v15, v17

    iget v7, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v15, v7, v6, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 216
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 217
    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 218
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->r:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 219
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 220
    invoke-static {v8, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 221
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->v:I

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 222
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->s:I

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x8

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/m;->F:Ljava/nio/FloatBuffer;

    move/from16 v19, v6

    move-object/from16 v24, v7

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 223
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->s:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 225
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/m;->G:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/m;->G:Ljava/nio/FloatBuffer;

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/m;->g:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 227
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/m;->G:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->t:I

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/m;->G:Ljava/nio/FloatBuffer;

    move/from16 v19, v6

    move-object/from16 v24, v7

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 229
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->t:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v6, 0x84c1

    .line 231
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 232
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->p:I

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 233
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->w:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 234
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->u:I

    iget-object v10, v0, Lcom/oplus/camera/ui/preview/a/m;->D:Ljava/nio/FloatBuffer;

    move/from16 v19, v6

    move-object/from16 v24, v10

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 235
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/m;->u:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v6, 0x4

    .line 237
    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 238
    invoke-static {v12}, Landroid/opengl/GLES20;->glDisable(I)V

    add-int/lit8 v9, v9, 0x1

    const v6, 0x8d40

    const v7, 0x8ce0

    goto/16 :goto_3

    .line 241
    :cond_9
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/m;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/m;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 242
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x303

    .line 243
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 244
    iget v1, v0, Lcom/oplus/camera/ui/preview/a/m;->A:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 245
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 246
    iget v1, v0, Lcom/oplus/camera/ui/preview/a/m;->q:I

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 247
    iget v1, v0, Lcom/oplus/camera/ui/preview/a/m;->B:I

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x8

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/m;->F:Ljava/nio/FloatBuffer;

    move/from16 v19, v1

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 248
    iget v1, v0, Lcom/oplus/camera/ui/preview/a/m;->B:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 249
    iget v1, v0, Lcom/oplus/camera/ui/preview/a/m;->C:I

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/m;->E:Ljava/nio/FloatBuffer;

    move/from16 v19, v1

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 250
    iget v0, v0, Lcom/oplus/camera/ui/preview/a/m;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x4

    .line 251
    invoke-static {v5, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 252
    invoke-static {v12}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 254
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x8d40

    .line 255
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

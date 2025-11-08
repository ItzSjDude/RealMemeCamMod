.class public final Lorg/andresoviedo/a/a/d;
.super Ljava/lang/Object;
.source "GLUtil.java"


# direct methods
.method public static a(II[Ljava/lang/String;)I
    .locals 4

    .line 43
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 47
    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v2, v0, p0}, Lorg/andresoviedo/a/a/c;->a(II)V

    .line 50
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, v0, p1}, Lorg/andresoviedo/a/a/c;->a(II)V

    if-eqz p2, :cond_0

    .line 54
    array-length p0, p2

    move p1, v1

    :goto_0
    if-ge p1, p0, :cond_0

    .line 56
    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    aget-object v3, p2, p1

    invoke-virtual {v2, v0, p1, v3}, Lorg/andresoviedo/a/a/c;->a(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, v0}, Lorg/andresoviedo/a/a/c;->n(I)V

    const/4 p0, 0x1

    .line 64
    new-array p0, p0, [I

    .line 65
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object p2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const p2, 0x8b82

    invoke-virtual {p1, v0, p2, p0, v1}, Lorg/andresoviedo/a/a/c;->a(II[II)V

    .line 68
    aget p0, p0, v1

    if-nez p0, :cond_1

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error compiling program: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p1, v0}, Lorg/andresoviedo/a/a/c;->k(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, v0}, Lorg/andresoviedo/a/a/c;->e(I)V

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    return v0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error creating program."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 4

    .line 97
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, p0}, Lorg/andresoviedo/a/a/c;->d(I)I

    move-result p0

    .line 100
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, p0, p1}, Lorg/andresoviedo/a/a/c;->c(ILjava/lang/String;)V

    .line 101
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, p0}, Lorg/andresoviedo/a/a/c;->c(I)V

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [I

    .line 104
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v2, 0x0

    const v3, 0x8b81

    invoke-virtual {v1, p0, v3, v0, v2}, Lorg/andresoviedo/a/a/c;->b(II[II)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shader compilation info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v3, p0}, Lorg/andresoviedo/a/a/c;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GLUtil"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shader error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v1, p0}, Lorg/andresoviedo/a/a/c;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p1, p0}, Lorg/andresoviedo/a/a/c;->f(I)V

    :cond_0
    return p0
.end method

.method public static a(Ljava/io/InputStream;)I
    .locals 7

    const-string v0, "GLUtil"

    const-string v1, "Loading texture from stream..."

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 122
    new-array v2, v1, [I

    .line 124
    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lorg/andresoviedo/a/a/c;->d(I[II)V

    const-string v1, "glGenTextures"

    .line 125
    invoke-static {v1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 126
    aget v1, v2, v4

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 135
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    aget v3, v2, v4

    const/16 v5, 0xde1

    invoke-virtual {v1, v5, v3}, Lorg/andresoviedo/a/a/c;->b(II)V

    const-string v1, "glBindTexture"

    .line 136
    invoke-static {v1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 137
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-static {v5, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string v1, "texImage2D"

    .line 138
    invoke-static {v1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v1, 0x2801

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v3, 0x2600

    invoke-virtual {p0, v5, v1, v3}, Lorg/andresoviedo/a/a/c;->b(III)V

    .line 141
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v1, 0x2800

    sget-object v6, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, v5, v1, v3}, Lorg/andresoviedo/a/a/c;->b(III)V

    const-string p0, "Loaded texture ok"

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    aget p0, v2, v4

    return p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error loading texture."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 260
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 262
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 245
    :goto_0
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v1}, Lorg/andresoviedo/a/a/c;->b()I

    move-result v1

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    if-eqz v1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    .line 163
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 167
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x0

    .line 170
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "couldn\'t load bitmap"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 267
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

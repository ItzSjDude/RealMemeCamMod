.class public Lcom/oplus/camera/screen/out/b;
.super Ljava/lang/Object;
.source "GLES20Drawer.java"


# instance fields
.field protected a:Ljava/nio/FloatBuffer;

.field protected b:Ljava/nio/FloatBuffer;

.field protected c:[I

.field protected d:[I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->a:Ljava/nio/FloatBuffer;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->b:Ljava/nio/FloatBuffer;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->c:[I

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->d:[I

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->e:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/oplus/camera/screen/out/b;->g:I

    .line 31
    iput v0, p0, Lcom/oplus/camera/screen/out/b;->h:I

    .line 32
    iput v0, p0, Lcom/oplus/camera/screen/out/b;->i:I

    .line 35
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/oplus/camera/screen/out/b;->c:[I

    .line 36
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/oplus/camera/screen/out/b;->d:[I

    .line 37
    sget-object p2, Lcom/oplus/camera/screen/out/g;->b:[F

    array-length p2, p2

    new-array p2, p2, [F

    .line 38
    sget-object v0, Lcom/oplus/camera/screen/out/g;->b:[F

    invoke-static {v0, p2}, Lcom/oplus/camera/screen/out/b;->a([F[F)[F

    .line 39
    invoke-virtual {p0, p2}, Lcom/oplus/camera/screen/out/b;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/screen/out/b;->a:Ljava/nio/FloatBuffer;

    .line 40
    sget-object p2, Lcom/oplus/camera/screen/out/g;->a:[F

    array-length p2, p2

    new-array p2, p2, [F

    .line 41
    sget-object v0, Lcom/oplus/camera/screen/out/g;->a:[F

    invoke-static {v0, p2}, Lcom/oplus/camera/screen/out/b;->a([F[F)[F

    .line 42
    invoke-virtual {p0, p2}, Lcom/oplus/camera/screen/out/b;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/screen/out/b;->b:Ljava/nio/FloatBuffer;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0022

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/camera/screen/out/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/screen/out/b;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f006a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/screen/out/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/b;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 3

    .line 123
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/screen/out/b;->a(Ljava/lang/String;)V

    .line 125
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 126
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x1

    .line 127
    new-array p0, p0, [I

    const/4 p1, 0x0

    const v1, 0x8b81

    .line 128
    invoke-static {v0, v1, p0, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 130
    aget p0, p0, p1

    if-nez p0, :cond_0

    .line 131
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

    .line 92
    invoke-static {v0, p0}, Lcom/oplus/camera/screen/out/b;->a(ILjava/lang/String;)I

    move-result p0

    const-string v0, "GLES20Drawer"

    if-nez p0, :cond_0

    const-string v1, "load vertex shader error"

    .line 95
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v1, 0x8b30

    .line 98
    invoke-static {v1, p1}, Lcom/oplus/camera/screen/out/b;->a(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string v1, "load fragment shader error"

    .line 101
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const-string v1, "glCreateProgram"

    .line 105
    invoke-static {v1}, Lcom/oplus/camera/screen/out/b;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    .line 107
    invoke-static {p0}, Lcom/oplus/camera/screen/out/b;->a(Ljava/lang/String;)V

    .line 108
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 109
    invoke-static {p0}, Lcom/oplus/camera/screen/out/b;->a(Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 111
    new-array p1, p0, [I

    const v1, 0x8b82

    const/4 v2, 0x0

    .line 112
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 114
    aget p1, p1, v2

    if-eq p0, p1, :cond_2

    .line 115
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v2

    :cond_2
    return v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 150
    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    .line 154
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 158
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    :goto_3
    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 139
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLES20Drawer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([F[F)[F
    .locals 2

    if-nez p1, :cond_0

    .line 172
    array-length p1, p0

    new-array p1, p1, [F

    .line 175
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 52
    iget v0, p0, Lcom/oplus/camera/screen/out/b;->g:I

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oplus/camera/screen/out/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/screen/out/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/screen/out/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/b;->g:I

    .line 54
    iget v0, p0, Lcom/oplus/camera/screen/out/b;->g:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/b;->h:I

    .line 55
    iget v0, p0, Lcom/oplus/camera/screen/out/b;->g:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/out/b;->i:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected a([F)Ljava/nio/FloatBuffer;
    .locals 1

    .line 86
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method protected a()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/screen/out/b;->c()V

    return-void
.end method

.method protected a(ILjava/nio/FloatBuffer;)V
    .locals 7

    .line 60
    iget v0, p0, Lcom/oplus/camera/screen/out/b;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 61
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 62
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 63
    iget v1, p0, Lcom/oplus/camera/screen/out/b;->h:I

    iget-object v6, p0, Lcom/oplus/camera/screen/out/b;->b:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 64
    iget p1, p0, Lcom/oplus/camera/screen/out/b;->h:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 65
    iget v0, p0, Lcom/oplus/camera/screen/out/b;->i:I

    if-nez p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/oplus/camera/screen/out/b;->a:Ljava/nio/FloatBuffer;

    :cond_0
    move-object v5, p2

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 65
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 67
    iget p0, p0, Lcom/oplus/camera/screen/out/b;->i:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p0, 0x5

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 68
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/screen/out/b;->c:[I

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method protected b(ILjava/nio/FloatBuffer;)V
    .locals 6

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    move v0, p1

    move-object v5, p2

    .line 76
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 77
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method protected c(ILjava/nio/FloatBuffer;)V
    .locals 6

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    move v0, p1

    move-object v5, p2

    .line 81
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 82
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

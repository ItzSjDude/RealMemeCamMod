.class public Lcom/oplus/camera/util/k;
.super Ljava/lang/Object;
.source "OpenGLUtils.java"


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 3

    .line 296
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 300
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 302
    new-array p1, p1, [I

    const v2, 0x8b81

    .line 303
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 305
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadShader, Could not compile shader "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGLUtils"

    .line 306
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 46
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 47
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 48
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 49
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 50
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 51
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 52
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 53
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 54
    aget p0, v1, v2

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [I

    const v1, 0x8b31

    .line 78
    invoke-static {v1, p0}, Lcom/oplus/camera/util/k;->a(ILjava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const v2, 0x8b30

    .line 84
    invoke-static {v2, p1}, Lcom/oplus/camera/util/k;->a(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 87
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    .line 91
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 97
    :cond_2
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 98
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 99
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v3, 0x8b82

    .line 100
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 102
    aget v0, v0, v1

    if-nez v0, :cond_3

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loadProgram error, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGLUtils"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v1

    .line 109
    :cond_3
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 110
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v2
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    const-string v0, "OpenGLUtils"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 152
    :cond_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    if-eqz p0, :cond_5

    .line 168
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    move-object v4, v2

    goto/16 :goto_b

    :catch_5
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_4

    :catch_6
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catch_7
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    :catch_8
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p0, v2

    move-object v3, p0

    :goto_3
    move-object v4, v3

    goto/16 :goto_b

    :catch_9
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    move-object v2, p0

    move-object p0, v4

    .line 148
    :goto_4
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readTextFileFromResource error, resource not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_1

    .line 152
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_5

    :catch_a
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_5
    if-eqz v3, :cond_2

    .line 160
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_6

    :catch_b
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz p0, :cond_5

    .line 168
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_a

    :catch_c
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    move-object v2, p0

    move-object p0, v4

    .line 146
    :goto_7
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readTextFileFromResource error, could not open resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_3

    .line 152
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_8

    :catch_d
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_8
    if-eqz v3, :cond_4

    .line 160
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_9

    :catch_e
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_9
    if-eqz p0, :cond_5

    .line 168
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 175
    :cond_5
    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception p1

    :goto_b
    if-eqz v4, :cond_6

    .line 152
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_c

    :catch_f
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_c
    if-eqz v3, :cond_7

    .line 160
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_d

    :catch_10
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_d
    if-eqz p0, :cond_8

    .line 168
    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_e

    :catch_11
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    :cond_8
    :goto_e
    throw p1
.end method

.method public static a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 369
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 370
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 373
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 374
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 378
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    const-string p1, "\\r\\n"

    const-string v0, "\n"

    .line 379
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p0, :cond_1

    .line 380
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    if-eqz p0, :cond_2

    .line 369
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :catch_3
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_4
    move-exception p0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_5
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception p0

    .line 381
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 439
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 440
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 442
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 443
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, 0x1

    .line 58
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 116
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGlError, op: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", glError: 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpenGLUtils"

    invoke-static {v0, p0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a([I[III)V
    .locals 6

    .line 418
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES31;->glGenFramebuffers(I[II)V

    .line 419
    array-length v0, p1

    invoke-static {v0, p1, v1}, Landroid/opengl/GLES31;->glGenTextures(I[II)V

    move v0, v1

    .line 421
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 422
    aget v2, p1, v0

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const v2, 0x8058

    const/4 v4, 0x1

    .line 423
    invoke-static {v3, v4, v2, p2, p3}, Landroid/opengl/GLES31;->glTexStorage2D(IIIII)V

    const/16 v2, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 424
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    .line 425
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 426
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    .line 427
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    .line 428
    aget v2, p0, v0

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES31;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    .line 429
    aget v5, p1, v0

    invoke-static {v4, v2, v3, v5, v1}, Landroid/opengl/GLES31;->glFramebufferTexture2D(IIIII)V

    .line 431
    invoke-static {v3, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    .line 432
    invoke-static {v4, v1}, Landroid/opengl/GLES31;->glBindFramebuffer(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "createStorageFrameBuffer"

    .line 435
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 324
    invoke-static {v0, p0}, Lcom/oplus/camera/util/k;->a(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "loadVertexShader"

    .line 327
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const v1, 0x8b30

    .line 331
    invoke-static {v1, p1}, Lcom/oplus/camera/util/k;->a(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "loadFragmentShader"

    .line 334
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    return v0

    .line 338
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "glCreateProgram"

    .line 341
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    return v0

    .line 345
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachVertexShader"

    .line 346
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    .line 348
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachFragmentShader"

    .line 349
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    .line 351
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 353
    new-array p1, p0, [I

    const v2, 0x8b82

    .line 354
    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 356
    aget p1, p1, v0

    if-eq p0, p1, :cond_3

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createProgram, Could not link program: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGLUtils"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/oplus/camera/gl/d;
    .locals 2

    .line 280
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 281
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadTextureFromDisk: load texture failed from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGLUtils"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_0
    new-instance p1, Lcom/oplus/camera/gl/d;

    invoke-direct {p1, p0}, Lcom/oplus/camera/gl/d;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

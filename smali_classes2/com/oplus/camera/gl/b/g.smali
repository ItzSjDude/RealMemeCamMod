.class public Lcom/oplus/camera/gl/b/g;
.super Lcom/oplus/camera/gl/b/a;
.source "SqureOesDrawer.java"

# interfaces
.implements Lcom/oplus/camera/gl/b/d;


# static fields
.field private static final k:[F

.field private static final l:[F


# instance fields
.field private i:Z

.field private j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 80
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/gl/b/g;->k:[F

    const/16 v0, 0x14

    .line 87
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oplus/camera/gl/b/g;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/oplus/camera/gl/b/a;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/oplus/camera/gl/b/g;->i:Z

    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/gl/b/g;->j:[I

    return-void
.end method

.method private a(I)Ljava/nio/FloatBuffer;
    .locals 7

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x8

    .line 351
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    aput v1, v0, v2

    const/4 v3, 0x1

    .line 353
    aput v1, v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    .line 354
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 355
    aput v1, v0, v3

    :goto_0
    if-gt v2, p1, :cond_0

    int-to-double v3, v2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    int-to-double v5, p1

    div-double/2addr v3, v5

    .line 359
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 360
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v6, v4, 0x4

    .line 361
    aput v5, v0, v6

    add-int/lit8 v6, v4, 0x5

    .line 362
    aput v3, v0, v6

    add-int/lit8 v6, v4, 0x6

    mul-float/2addr v5, v1

    add-float/2addr v5, v1

    .line 363
    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x7

    mul-float/2addr v3, v1

    add-float/2addr v3, v1

    .line 364
    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/nio/FloatBuffer;IIZ)V
    .locals 8

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    if-nez p4, :cond_0

    const/16 p1, 0xc8

    .line 250
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/b/g;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :cond_0
    const/4 p0, 0x0

    .line 254
    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v5, p2

    move-object v6, p1

    .line 255
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES32;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v7, 0x2

    .line 256
    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x1

    .line 257
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES32;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 258
    invoke-static {p0}, Landroid/opengl/GLES32;->glEnableVertexAttribArray(I)V

    .line 259
    invoke-static {v0}, Landroid/opengl/GLES32;->glEnableVertexAttribArray(I)V

    const/4 p1, 0x4

    const/4 p2, 0x5

    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_1

    if-eq p3, v7, :cond_3

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 270
    invoke-static {p2, p0, p1}, Landroid/opengl/GLES32;->glDrawArrays(III)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    const/16 p2, 0xca

    .line 272
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES32;->glDrawArrays(III)V

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {p2, p0, p1}, Landroid/opengl/GLES32;->glDrawArrays(III)V

    .line 281
    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES32;->glDisableVertexAttribArray(I)V

    .line 282
    invoke-static {v0}, Landroid/opengl/GLES32;->glDisableVertexAttribArray(I)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/util/Size;Landroid/util/Size;IZZLcom/oplus/camera/gl/b/h;Lcom/oplus/camera/gl/s;)I
    .locals 0

    .line 124
    invoke-virtual/range {p0 .. p9}, Lcom/oplus/camera/gl/b/g;->b(IILandroid/util/Size;Landroid/util/Size;IZZLcom/oplus/camera/gl/b/h;Lcom/oplus/camera/gl/s;)I

    move-result p0

    return p0
.end method

.method public a(Lcom/oplus/camera/gl/b/h;IZ)V
    .locals 6

    .line 287
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->f()I

    move-result p0

    .line 288
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->g()I

    move-result v0

    .line 289
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->i()I

    move-result v1

    .line 290
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->j()I

    move-result v2

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    move v1, p0

    move p0, v4

    move v5, v2

    move v2, v0

    move v0, v5

    .line 323
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->d()I

    move-result p2

    const/4 p3, -0x1

    if-eq p3, p2, :cond_4

    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->e()I

    move-result p2

    if-ne p3, p2, :cond_2

    goto :goto_2

    .line 326
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->d()I

    move-result p0

    .line 328
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 329
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->e()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->e()I

    move-result p2

    neg-int p2, p2

    sub-int/2addr p2, v2

    add-int/2addr p2, v0

    .line 332
    invoke-virtual {p1}, Lcom/oplus/camera/gl/b/h;->c()I

    move-result p1

    add-int v0, p2, p1

    .line 335
    :goto_1
    invoke-static {p0, v0, v1, v2}, Landroid/opengl/GLES32;->glViewport(IIII)V

    goto :goto_3

    :cond_4
    :goto_2
    sub-int/2addr p0, v1

    sub-int/2addr v0, v2

    .line 324
    invoke-static {p0, v0, v1, v2}, Landroid/opengl/GLES32;->glViewport(IIII)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 299
    invoke-static {p1, v0, p0, v0}, Landroid/opengl/GLES32;->glViewport(IIII)V

    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/oplus/camera/gl/b/g;->i:Z

    return-void
.end method

.method public b(IILandroid/util/Size;Landroid/util/Size;IZZLcom/oplus/camera/gl/b/h;Lcom/oplus/camera/gl/s;)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    .line 150
    sget-object v6, Lcom/oplus/camera/gl/b/g;->k:[F

    invoke-virtual {v0, v6}, Lcom/oplus/camera/gl/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 152
    iget-boolean v7, v0, Lcom/oplus/camera/gl/b/g;->i:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_1

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "multiDrawPreview, createFrameBuffer, subOneCameraTex: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mainOneCameraTex: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", multiVideoType: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mainOneCameraFirstDraw: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isDrawTexture2D: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", DrawMainImageWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->f()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", DrawMainImageHeight: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->g()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", DrawSubImageWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->i()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", DrawSubImageHeight: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->j()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", fboHeight: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->k()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", fboWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->l()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", outRawTexture: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", mainOneCameraSize: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", subOneCameraSize: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "SqureOesDrawer"

    .line 153
    invoke-static {v11, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v7, v0, Lcom/oplus/camera/gl/b/g;->j:[I

    aget v11, v7, v9

    if-lez v11, :cond_0

    .line 167
    array-length v11, v7

    invoke-static {v11, v7, v9}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 168
    iget-object v7, v0, Lcom/oplus/camera/gl/b/g;->j:[I

    aput v9, v7, v9

    .line 171
    :cond_0
    iget-object v7, v0, Lcom/oplus/camera/gl/b/g;->j:[I

    new-array v11, v8, [I

    invoke-virtual/range {p9 .. p9}, Lcom/oplus/camera/gl/s;->e()I

    move-result v12

    aput v12, v11, v9

    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->l()I

    move-result v12

    .line 172
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->k()I

    move-result v13

    .line 171
    invoke-static {v7, v11, v12, v13}, Lcom/oplus/camera/gl/b/g;->a([I[III)V

    .line 173
    iput-boolean v8, v0, Lcom/oplus/camera/gl/b/g;->i:Z

    goto :goto_0

    :cond_1
    move-object/from16 v10, p9

    .line 176
    :goto_0
    iget-object v7, v0, Lcom/oplus/camera/gl/b/g;->j:[I

    aget v7, v7, v9

    const v11, 0x8d40

    invoke-static {v11, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v7, 0x84c0

    .line 177
    invoke-static {v7}, Landroid/opengl/GLES32;->glActiveTexture(I)V

    const/16 v7, 0xde1

    const v12, 0x8892

    const v13, 0x8d65

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->f()I

    move-result v14

    .line 182
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->g()I

    move-result v15

    .line 181
    invoke-static {v9, v9, v14, v15}, Landroid/opengl/GLES32;->glViewport(IIII)V

    .line 183
    invoke-static {v12, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 184
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->a:I

    invoke-static {v12}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 185
    invoke-static {v13, v2}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 186
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->e:I

    invoke-static {v12, v9}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 187
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->c:I

    iget-object v14, v0, Lcom/oplus/camera/gl/b/g;->g:[F

    invoke-static {v12, v8, v9, v14, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 188
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->i()I

    move-result v14

    .line 191
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/b/h;->j()I

    move-result v15

    .line 190
    invoke-static {v9, v9, v14, v15}, Landroid/opengl/GLES32;->glViewport(IIII)V

    .line 192
    invoke-static {v12, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    if-eqz v5, :cond_3

    .line 194
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->b:I

    invoke-static {v12}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 195
    invoke-static {v7, v1}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 196
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->f:I

    invoke-static {v12, v9}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 197
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->d:I

    iget-object v14, v0, Lcom/oplus/camera/gl/b/g;->h:[F

    invoke-static {v12, v8, v9, v14, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 198
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    goto :goto_1

    .line 200
    :cond_3
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->a:I

    invoke-static {v12}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 201
    invoke-static {v13, v1}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 202
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->e:I

    invoke-static {v12, v9}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 203
    iget v12, v0, Lcom/oplus/camera/gl/b/g;->c:I

    iget-object v14, v0, Lcom/oplus/camera/gl/b/g;->h:[F

    invoke-static {v12, v8, v9, v14, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 204
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    :goto_1
    const/16 v12, 0x10

    .line 208
    invoke-direct {v0, v6, v12, v3, v8}, Lcom/oplus/camera/gl/b/g;->a(Ljava/nio/FloatBuffer;IIZ)V

    move-object/from16 v14, p8

    .line 211
    invoke-virtual {v0, v14, v3, v4}, Lcom/oplus/camera/gl/b/g;->a(Lcom/oplus/camera/gl/b/h;IZ)V

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    .line 215
    iget v2, v0, Lcom/oplus/camera/gl/b/g;->b:I

    invoke-static {v2}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 216
    invoke-static {v7, v1}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 217
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->f:I

    invoke-static {v1, v9}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 218
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->d:I

    iget-object v2, v0, Lcom/oplus/camera/gl/b/g;->h:[F

    invoke-static {v1, v8, v9, v2, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 219
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    goto :goto_2

    .line 221
    :cond_4
    iget v2, v0, Lcom/oplus/camera/gl/b/g;->a:I

    invoke-static {v2}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 222
    invoke-static {v13, v1}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 223
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->e:I

    invoke-static {v1, v9}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 224
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->c:I

    iget-object v2, v0, Lcom/oplus/camera/gl/b/g;->h:[F

    invoke-static {v1, v8, v9, v2, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 225
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    .line 228
    :goto_2
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->c:I

    iget-object v2, v0, Lcom/oplus/camera/gl/b/g;->h:[F

    invoke-static {v1, v8, v9, v2, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_3

    .line 230
    :cond_5
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->a:I

    invoke-static {v1}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 231
    invoke-static {v13, v2}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 232
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->e:I

    invoke-static {v1, v9}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 233
    iget v1, v0, Lcom/oplus/camera/gl/b/g;->c:I

    iget-object v2, v0, Lcom/oplus/camera/gl/b/g;->g:[F

    invoke-static {v1, v8, v9, v2, v9}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 234
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    .line 237
    :goto_3
    invoke-direct {v0, v6, v12, v3, v9}, Lcom/oplus/camera/gl/b/g;->a(Ljava/nio/FloatBuffer;IIZ)V

    .line 238
    invoke-static {v9}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 239
    invoke-static {v11, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 240
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    .line 242
    invoke-virtual/range {p9 .. p9}, Lcom/oplus/camera/gl/s;->e()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .line 132
    iget v0, p0, Lcom/oplus/camera/gl/b/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/oplus/camera/gl/b/g;->a:I

    .line 134
    iput v0, p0, Lcom/oplus/camera/gl/b/g;->b:I

    .line 135
    iput v0, p0, Lcom/oplus/camera/gl/b/g;->c:I

    .line 136
    iput v0, p0, Lcom/oplus/camera/gl/b/g;->d:I

    .line 137
    iput v0, p0, Lcom/oplus/camera/gl/b/g;->e:I

    .line 138
    iput v0, p0, Lcom/oplus/camera/gl/b/g;->f:I

    .line 140
    iget-object v1, p0, Lcom/oplus/camera/gl/b/g;->j:[I

    aget v2, v1, v0

    if-lez v2, :cond_0

    .line 141
    array-length v2, v1

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/gl/b/g;->j:[I

    aput v0, p0, v0

    :cond_0
    return-void
.end method

.method public e_()V
    .locals 5

    const-string v0, "#version 300 es                                                      \nuniform mat4 mvp_matrix;                                     \nlayout(location = 0) in vec4 a_position;                     \nlayout(location = 1) in vec4 a_texture_coord;                \nout vec2 v_texture_coord;                                    \nvoid main()                                                  \n{                                                            \n    gl_Position = a_position;                                \n    v_texture_coord = (mvp_matrix * a_texture_coord).xy;     \n}                                                            \n"

    const v1, 0x8b31

    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/gl/b/g;->a(ILjava/lang/String;)I

    move-result v2

    const v3, 0x8b30

    const-string v4, "#version 300 es                                                      \n#extension GL_OES_EGL_image_external_essl3 : require         \nprecision mediump float;                                     \nuniform samplerExternalOES uTextureSampler;                  \nuniform sampler2D uTextureSampler2D;                         \nuniform int uCameraId;                                       \nin vec2 v_texture_coord;                                     \nlayout(location = 0) out vec4 out_color;                     \nvoid main()                                                  \n{                                                            \n    out_color = texture(uTextureSampler, v_texture_coord);   \n}                                                            \n"

    .line 102
    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/gl/b/g;->a(ILjava/lang/String;)I

    move-result v4

    .line 103
    invoke-virtual {p0, v2, v4}, Lcom/oplus/camera/gl/b/g;->a(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/gl/b/g;->a:I

    .line 105
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/gl/b/g;->a(ILjava/lang/String;)I

    move-result v0

    const-string v1, "#version 300 es                                                      \n#extension GL_OES_EGL_image_external_essl3 : require         \nprecision mediump float;                                     \nuniform sampler2D uTextureSampler2D;                         \nin vec2 v_texture_coord;                                     \nlayout(location = 0) out vec4 out_color;                     \nvoid main()                                                  \n{                                                            \n    out_color = texture(uTextureSampler2D, v_texture_coord); \n}                                                            \n"

    .line 106
    invoke-virtual {p0, v3, v1}, Lcom/oplus/camera/gl/b/g;->a(ILjava/lang/String;)I

    move-result v1

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/gl/b/g;->a(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/gl/b/g;->b:I

    .line 109
    iget v0, p0, Lcom/oplus/camera/gl/b/g;->a:I

    const-string v1, "mvp_matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/gl/b/g;->c:I

    .line 110
    iget v0, p0, Lcom/oplus/camera/gl/b/g;->a:I

    const-string v2, "uTextureSampler"

    invoke-static {v0, v2}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/gl/b/g;->e:I

    .line 111
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    .line 113
    iget v0, p0, Lcom/oplus/camera/gl/b/g;->b:I

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/gl/b/g;->d:I

    .line 114
    iget v0, p0, Lcom/oplus/camera/gl/b/g;->b:I

    const-string v1, "uTextureSampler2D"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/gl/b/g;->f:I

    .line 115
    invoke-static {}, Lcom/oplus/camera/gl/b/g;->a()V

    return-void
.end method

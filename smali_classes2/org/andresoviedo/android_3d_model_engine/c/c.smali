.class public Lorg/andresoviedo/android_3d_model_engine/c/c;
.super Lorg/andresoviedo/android_3d_model_engine/c/b;
.source "O3DModelLoaderTask.java"


# static fields
.field static final b:Ljava/lang/String; = "c"


# instance fields
.field c:[Lcom/b/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Lcom/b/a/g;Lorg/andresoviedo/android_3d_model_engine/c/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0, p3}, Lorg/andresoviedo/android_3d_model_engine/c/b;-><init>(Landroid/app/Activity;Ljava/net/URI;Lorg/andresoviedo/android_3d_model_engine/c/a;)V

    .line 38
    iput-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/c/c;->c:[Lcom/b/a/g;

    return-void
.end method

.method private a(Lcom/b/a/g;Lorg/andresoviedo/android_3d_model_engine/b/g;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 77
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/andresoviedo/android_3d_model_engine/b/g;->k()Lcom/b/a/o;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b/a/o;->b(Lcom/b/a/g;)V

    const/4 v2, 0x3

    .line 81
    new-array v3, v2, [F

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    const/4 v7, 0x2

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lorg/andresoviedo/android_3d_model_engine/b/g;->b([F)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 84
    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(I)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 87
    invoke-virtual/range {p2 .. p2}, Lorg/andresoviedo/android_3d_model_engine/b/g;->k()Lcom/b/a/o;

    move-result-object v4

    .line 88
    iget v8, v4, Lcom/b/a/o;->d:I

    mul-int/2addr v8, v2

    mul-int/2addr v8, v3

    invoke-static {v8}, Lorg/andresoviedo/a/a/d;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 89
    invoke-virtual {v1, v8}, Lorg/andresoviedo/android_3d_model_engine/b/g;->c(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 90
    invoke-virtual {v1, v6}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Z)Lorg/andresoviedo/android_3d_model_engine/b/g;

    const/4 v9, 0x0

    if-nez v4, :cond_0

    move-object v10, v9

    goto :goto_0

    .line 91
    :cond_0
    iget-object v10, v4, Lcom/b/a/o;->f:Ljava/util/List;

    :goto_0
    if-eqz v10, :cond_5

    .line 92
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, v4, Lcom/b/a/o;->b:I

    if-ne v10, v11, :cond_5

    .line 93
    iget v10, v4, Lcom/b/a/o;->d:I

    mul-int/2addr v10, v2

    mul-int/2addr v10, v3

    invoke-static {v10}, Lorg/andresoviedo/a/a/d;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 95
    iget-object v10, v0, Lcom/b/a/g;->d:[B

    if-eqz v10, :cond_1

    .line 96
    iget v9, v4, Lcom/b/a/o;->d:I

    mul-int/2addr v9, v2

    invoke-static {v9}, Lorg/andresoviedo/a/a/d;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    :cond_1
    move v10, v5

    .line 98
    :goto_1
    iget v11, v4, Lcom/b/a/o;->d:I

    if-ge v10, v11, :cond_4

    move v11, v5

    :goto_2
    if-ge v11, v2, :cond_3

    mul-int/lit8 v12, v10, 0x3

    add-int/2addr v12, v11

    .line 102
    iget-object v13, v4, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v13, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    mul-int/lit8 v14, v12, 0x3

    .line 103
    invoke-virtual {v4}, Lcom/b/a/o;->a()Ljava/nio/FloatBuffer;

    move-result-object v15

    iget-object v5, v4, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    mul-int/2addr v5, v2

    invoke-virtual {v15, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v8, v14, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v14, 0x1

    .line 104
    invoke-virtual {v4}, Lcom/b/a/o;->a()Ljava/nio/FloatBuffer;

    move-result-object v15

    iget-object v7, v4, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    mul-int/2addr v7, v2

    add-int/2addr v7, v6

    invoke-virtual {v15, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v8, v5, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v14, 0x2

    .line 105
    invoke-virtual {v4}, Lcom/b/a/o;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    iget-object v7, v4, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    mul-int/2addr v7, v2

    const/4 v12, 0x2

    add-int/2addr v7, v12

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v8, v14, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 106
    iget-object v5, v4, Lcom/b/a/o;->f:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b/a/o$a;

    .line 108
    iget v7, v5, Lcom/b/a/o$a;->a:F

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget v12, v5, Lcom/b/a/o$a;->b:F

    .line 109
    invoke-virtual {v7, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget v12, v5, Lcom/b/a/o$a;->c:F

    .line 110
    invoke-virtual {v7, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget v5, v5, Lcom/b/a/o$a;->d:F

    .line 111
    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v5, v0, Lcom/b/a/g;->d:[B

    if-eqz v5, :cond_2

    .line 113
    iget-object v5, v0, Lcom/b/a/g;->d:[B

    aget-byte v5, v5, v13

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    goto/16 :goto_1

    .line 117
    :cond_4
    invoke-virtual {v1, v3}, Lorg/andresoviedo/android_3d_model_engine/b/g;->d(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 118
    iget-object v3, v0, Lcom/b/a/g;->d:[B

    if-eqz v3, :cond_5

    .line 119
    invoke-virtual {v1, v9}, Lorg/andresoviedo/android_3d_model_engine/b/g;->e(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 125
    :cond_5
    iget-object v3, v0, Lcom/b/a/g;->a:[F

    array-length v3, v3

    if-lez v3, :cond_9

    .line 127
    iget v3, v4, Lcom/b/a/o;->d:I

    mul-int/2addr v3, v2

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    invoke-static {v3}, Lorg/andresoviedo/a/a/d;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v5, 0x0

    .line 128
    :goto_3
    iget v6, v4, Lcom/b/a/o;->d:I

    if-ge v5, v6, :cond_8

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_7

    .line 130
    iget-object v7, v4, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    mul-int/lit8 v8, v5, 0x3

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    .line 131
    iget-object v8, v0, Lcom/b/a/g;->a:[F

    mul-int/2addr v7, v2

    add-int/lit8 v9, v7, 0x0

    aget v8, v8, v9

    .line 132
    iget-object v9, v0, Lcom/b/a/g;->a:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v9, v7

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    sub-float v8, v9, v8

    add-float/2addr v7, v9

    div-float/2addr v7, v10

    sub-float v7, v9, v7

    .line 138
    iget-boolean v10, v0, Lcom/b/a/g;->f:Z

    if-eqz v10, :cond_6

    sub-float v8, v9, v8

    goto :goto_5

    :cond_6
    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    .line 143
    :goto_5
    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 147
    :cond_8
    invoke-virtual {v1, v3}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 155
    :cond_9
    iget-object v0, v0, Lcom/b/a/g;->h:[B

    invoke-virtual {v1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lorg/andresoviedo/android_3d_model_engine/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    throw v0
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/c;->c:[Lcom/b/a/g;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 45
    new-instance v5, Lcom/b/a/o;

    invoke-direct {v5}, Lcom/b/a/o;-><init>()V

    .line 48
    invoke-virtual {v5, v4}, Lcom/b/a/o;->a(Lcom/b/a/g;)V

    .line 51
    new-instance v6, Lorg/andresoviedo/android_3d_model_engine/b/g;

    invoke-virtual {v5}, Lcom/b/a/o;->a()Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v5}, Lcom/b/a/o;->b()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/andresoviedo/android_3d_model_engine/b/g;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;)V

    .line 52
    iget-object v7, v4, Lcom/b/a/g;->d:[B

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    iput-boolean v7, v6, Lorg/andresoviedo/android_3d_model_engine/b/g;->a:Z

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "O3DPHOTO_MODEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Ljava/lang/String;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 55
    invoke-virtual {v6, v5}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lcom/b/a/o;)V

    .line 56
    sget-object v4, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(I)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 57
    invoke-virtual {v5}, Lcom/b/a/o;->c()Lcom/b/a/o$b;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lcom/b/a/o$b;)V

    .line 58
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/c/c;->c:[Lcom/b/a/g;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/c/c;->c:[Lcom/b/a/g;

    aget-object v1, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andresoviedo/android_3d_model_engine/b/g;

    invoke-direct {p0, v1, v2}, Lorg/andresoviedo/android_3d_model_engine/c/c;->a(Lcom/b/a/g;Lorg/andresoviedo/android_3d_model_engine/b/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

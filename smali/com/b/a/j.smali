.class public Lcom/b/a/j;
.super Ljava/lang/Object;
.source "SceneLoader.java"

# interfaces
.implements Lorg/andresoviedo/android_3d_model_engine/c/a;


# static fields
.field private static c:[F


# instance fields
.field private A:F

.field private B:F

.field protected final a:Lcom/b/a/c;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/b/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lorg/andresoviedo/android_3d_model_engine/b/c;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lorg/andresoviedo/android_3d_model_engine/b/g;

.field private final x:[F

.field private y:J

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/b/a/j;->c:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/b/a/c;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/j;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/b/a/j;->e:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/b/a/j;->g:Z

    .line 69
    iput-boolean v0, p0, Lcom/b/a/j;->h:Z

    .line 73
    iput-boolean v0, p0, Lcom/b/a/j;->i:Z

    .line 77
    iput-boolean v0, p0, Lcom/b/a/j;->j:Z

    .line 81
    iput-boolean v0, p0, Lcom/b/a/j;->k:Z

    .line 85
    iput-boolean v1, p0, Lcom/b/a/j;->l:Z

    .line 89
    iput-boolean v1, p0, Lcom/b/a/j;->m:Z

    .line 93
    iput-boolean v0, p0, Lcom/b/a/j;->n:Z

    .line 97
    iput-boolean v0, p0, Lcom/b/a/j;->o:Z

    .line 101
    iput-boolean v0, p0, Lcom/b/a/j;->p:Z

    .line 105
    iput-boolean v0, p0, Lcom/b/a/j;->q:Z

    .line 109
    iput-boolean v0, p0, Lcom/b/a/j;->r:Z

    .line 113
    iput-boolean v0, p0, Lcom/b/a/j;->s:Z

    .line 117
    iput-boolean v0, p0, Lcom/b/a/j;->t:Z

    .line 121
    iput-boolean v0, p0, Lcom/b/a/j;->u:Z

    .line 125
    iput-boolean v0, p0, Lcom/b/a/j;->v:Z

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/b/a/j;->w:Lorg/andresoviedo/android_3d_model_engine/b/g;

    const/4 v0, 0x4

    .line 133
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/b/a/j;->x:[F

    const v0, -0x43e5fd8b    # -0.0094f

    .line 148
    iput v0, p0, Lcom/b/a/j;->z:F

    const v0, -0x45cdbdf9    # -6.8E-4f

    .line 149
    iput v0, p0, Lcom/b/a/j;->A:F

    const v0, -0x4270a3d7    # -0.07f

    .line 150
    iput v0, p0, Lcom/b/a/j;->B:F

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/j;->b:Ljava/util/Set;

    .line 153
    iput-object p1, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x40c00000    # 6.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/b/a/g;)[Lcom/b/a/g;
    .locals 12

    .line 589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "faces of input model:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/b/a/g;->c:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SceneLoader"

    invoke-static {v0, p0}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v3, v2

    .line 590
    :goto_0
    iget-object v4, p1, Lcom/b/a/g;->c:[I

    array-length v4, v4

    const/16 v5, 0xff

    if-ge v1, v4, :cond_1

    .line 591
    iget-object v4, p1, Lcom/b/a/g;->c:[I

    aget v4, v4, v1

    .line 592
    iget-object v6, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    .line 593
    iget-object v7, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    .line 594
    iget-object v8, p1, Lcom/b/a/g;->b:[B

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v8, v4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/b/a/g;->b:[B

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    aget-byte v4, v4, v6

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/b/a/g;->b:[B

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x3

    aget-byte v4, v4, v7

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    const-string v1, "faces of back model:"

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 608
    :cond_2
    new-instance v6, Lcom/b/a/g;

    invoke-direct {v6, p1}, Lcom/b/a/g;-><init>(Lcom/b/a/g;)V

    .line 609
    new-instance v7, Lcom/b/a/g;

    invoke-direct {v7, p1}, Lcom/b/a/g;-><init>(Lcom/b/a/g;)V

    .line 610
    iget-object v8, p1, Lcom/b/a/g;->h:[B

    iput-object v8, v6, Lcom/b/a/g;->h:[B

    iput-object v8, v7, Lcom/b/a/g;->h:[B

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "faces of front model:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-array v0, v2, [I

    iput-object v0, v7, Lcom/b/a/g;->c:[I

    .line 614
    new-array v0, v3, [I

    iput-object v0, v6, Lcom/b/a/g;->c:[I

    move v0, p0

    move v1, v0

    move v2, v1

    .line 617
    :goto_2
    iget-object v3, p1, Lcom/b/a/g;->c:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 618
    iget-object v3, p1, Lcom/b/a/g;->c:[I

    aget v3, v3, v0

    .line 619
    iget-object v8, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    .line 620
    iget-object v9, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v10, v0, 0x2

    aget v9, v9, v10

    .line 621
    iget-object v10, p1, Lcom/b/a/g;->b:[B

    mul-int/lit8 v11, v3, 0x4

    add-int/lit8 v11, v11, 0x3

    aget-byte v10, v10, v11

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_3

    iget-object v10, p1, Lcom/b/a/g;->b:[B

    mul-int/lit8 v11, v8, 0x4

    add-int/lit8 v11, v11, 0x3

    aget-byte v10, v10, v11

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_3

    iget-object v10, p1, Lcom/b/a/g;->b:[B

    mul-int/lit8 v11, v9, 0x4

    add-int/lit8 v11, v11, 0x3

    aget-byte v10, v10, v11

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_3

    .line 624
    iget-object v10, v6, Lcom/b/a/g;->c:[I

    add-int/lit8 v11, v2, 0x1

    aput v3, v10, v2

    .line 625
    iget-object v2, v6, Lcom/b/a/g;->c:[I

    add-int/lit8 v3, v11, 0x1

    aput v8, v2, v11

    .line 626
    iget-object v2, v6, Lcom/b/a/g;->c:[I

    add-int/lit8 v8, v3, 0x1

    aput v9, v2, v3

    move v2, v8

    goto :goto_3

    .line 630
    :cond_3
    iget-object v10, v7, Lcom/b/a/g;->c:[I

    add-int/lit8 v11, v1, 0x1

    aput v3, v10, v1

    .line 631
    iget-object v1, v7, Lcom/b/a/g;->c:[I

    add-int/lit8 v3, v11, 0x1

    aput v8, v1, v11

    .line 632
    iget-object v1, v7, Lcom/b/a/g;->c:[I

    add-int/lit8 v8, v3, 0x1

    aput v9, v1, v3

    move v1, v8

    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    .line 635
    new-array p1, p1, [Lcom/b/a/g;

    aput-object v6, p1, p0

    aput-object v7, p1, v4

    return-object p1

    .line 604
    :cond_5
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "only one modelfaces of front model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-array v0, v4, [Lcom/b/a/g;

    aput-object p1, v0, p0

    return-object v0
.end method

.method private q()V
    .locals 4

    .line 301
    iget-boolean p0, p0, Lcom/b/a/j;->n:Z

    if-nez p0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    rem-long/2addr v0, v2

    return-void
.end method

.method private r()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/d;Z)Lcom/b/a/a/j;
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, p2, v0}, Lcom/b/a/j;->a(Lcom/b/a/a/d;ZLcom/b/a/a/a;)Lcom/b/a/a/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/b/a/a/d;ZLcom/b/a/a/a;)Lcom/b/a/a/j;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_9

    .line 231
    sget-object v4, Lcom/b/a/j$1;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/a/d;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 265
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/high16 v9, -0x3f200000    # -7.0f

    const/high16 v10, -0x80000000

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const v16, -0x41666666    # -0.3f

    const v17, 0x3e99999a    # 0.3f

    const v18, 0x3e99999a    # 0.3f

    const v19, -0x41666666    # -0.3f

    move-object v6, v1

    invoke-direct/range {v6 .. v19}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    iput-object v1, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    if-nez v3, :cond_0

    .line 267
    new-instance v1, Lcom/b/a/a/k;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2}, Lcom/b/a/a/k;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V

    goto/16 :goto_1

    .line 270
    :cond_0
    new-instance v1, Lcom/b/a/a/k;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/b/a/a/k;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V

    goto/16 :goto_1

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid AnimID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/high16 v7, -0x3f200000    # -7.0f

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const v14, -0x417ae148    # -0.26f

    const v15, 0x3e851eb8    # 0.26f

    const v16, 0x3e851eb8    # 0.26f

    const v17, -0x417ae148    # -0.26f

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    iput-object v1, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    if-nez v3, :cond_3

    .line 258
    new-instance v1, Lcom/b/a/a/g;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2}, Lcom/b/a/a/g;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V

    goto/16 :goto_1

    .line 261
    :cond_3
    new-instance v1, Lcom/b/a/a/g;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/b/a/a/g;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 243
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x41000000    # -0.5f

    const/high16 v7, -0x3f600000    # -5.0f

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const v14, -0x417ae148    # -0.26f

    const v15, 0x3e851eb8    # 0.26f

    const v16, 0x3e851eb8    # 0.26f

    const v17, -0x417ae148    # -0.26f

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    iput-object v1, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    goto :goto_0

    .line 246
    :cond_5
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/high16 v19, 0x3f000000    # 0.5f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, -0x3f600000    # -5.0f

    const/16 v22, 0x0

    const/high16 v23, -0x80000000

    const/high16 v24, 0x40400000    # 3.0f

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const v28, -0x417ae148    # -0.26f

    const v29, 0x3e851eb8    # 0.26f

    const v30, 0x3e851eb8    # 0.26f

    const v31, -0x417ae148    # -0.26f

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v31}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    iput-object v1, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    :goto_0
    if-nez v3, :cond_6

    .line 249
    new-instance v1, Lcom/b/a/a/i;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2}, Lcom/b/a/a/i;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V

    goto :goto_1

    .line 252
    :cond_6
    new-instance v1, Lcom/b/a/a/i;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/b/a/a/i;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V

    goto :goto_1

    .line 233
    :cond_7
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/high16 v7, -0x3f600000    # -5.0f

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const v14, -0x4128f5c3    # -0.42f

    const v15, 0x3ed70a3d    # 0.42f

    const v16, 0x3ed70a3d    # 0.42f

    const v17, -0x4128f5c3    # -0.42f

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    iput-object v1, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    if-nez v3, :cond_8

    .line 235
    new-instance v1, Lcom/b/a/a/h;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2}, Lcom/b/a/a/h;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V

    goto :goto_1

    .line 238
    :cond_8
    new-instance v1, Lcom/b/a/a/h;

    iget-object v0, v0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/b/a/a/h;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public a()V
    .locals 15

    .line 159
    new-instance v14, Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/high16 v3, -0x3f600000    # -5.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const v10, -0x4128f5c3    # -0.42f

    const v11, 0x3ed70a3d    # 0.42f

    const v12, 0x3ed70a3d    # 0.42f

    const v13, -0x4128f5c3    # -0.42f

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    iput-object v14, p0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    .line 160
    iget-object v0, p0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(Z)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/j;->y:J

    .line 163
    sget-object v0, Lcom/b/a/c;->b:Lcom/b/a/g;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/b/a/c;->b:Lcom/b/a/g;

    invoke-direct {p0, v0}, Lcom/b/a/j;->a(Lcom/b/a/g;)[Lcom/b/a/g;

    move-result-object v0

    .line 167
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/c/c;

    iget-object v2, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    iget-object v2, v2, Lcom/b/a/c;->c:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lorg/andresoviedo/android_3d_model_engine/c/c;-><init>(Landroid/app/Activity;[Lcom/b/a/g;Lorg/andresoviedo/android_3d_model_engine/c/a;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Lorg/andresoviedo/android_3d_model_engine/c/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method public a(Lcom/b/a/a/e;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/b/a/j;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 531
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneLoader"

    invoke-static {v1, v0, p1}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There was a problem building the model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/j;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 533
    invoke-static {p0}, Lorg/andresoviedo/a/a/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;)V"
        }
    .end annotation

    .line 506
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 507
    invoke-virtual {v1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "LoaderTask"

    const-string v2, "no texture loaded... "

    .line 508
    invoke-static {v1, v2}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 515
    invoke-virtual {p0, v1}, Lcom/b/a/j;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V

    .line 516
    invoke-virtual {v1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->M()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 518
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/j;->a(Ljava/lang/String;)V

    .line 521
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/b/a/j;->y:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build complete ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/j;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 523
    invoke-static {p1}, Lorg/andresoviedo/a/a/b;->a(Landroid/content/Context;)V

    .line 524
    iget-object p1, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    invoke-virtual {p1}, Lcom/b/a/c;->d()Lcom/b/a/e;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 525
    iget-object p0, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    invoke-virtual {p0}, Lcom/b/a/c;->d()Lcom/b/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/e;->c()V

    :cond_4
    return-void
.end method

.method declared-synchronized a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V
    .locals 2

    monitor-enter p0

    .line 318
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/j;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iput-object v0, p0, Lcom/b/a/j;->d:Ljava/util/List;

    .line 321
    invoke-direct {p0}, Lcom/b/a/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lorg/andresoviedo/android_3d_model_engine/b/c;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    return-object p0
.end method

.method public b(FF)V
    .locals 0

    return-void
.end method

.method public b(Lcom/b/a/a/e;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/b/a/j;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/b/a/j;->q()V

    .line 287
    iget-object v0, p0, Lcom/b/a/j;->f:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-virtual {v0}, Lorg/andresoviedo/android_3d_model_engine/b/c;->b()V

    .line 289
    iget-object v0, p0, Lcom/b/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object p0, p0, Lcom/b/a/j;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/e;

    .line 291
    invoke-virtual {v0}, Lcom/b/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/b/a/j;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 0

    .line 355
    iget-boolean p0, p0, Lcom/b/a/j;->h:Z

    return p0
.end method

.method public f()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lcom/b/a/j;->i:Z

    return p0
.end method

.method public g()Z
    .locals 0

    .line 423
    iget-boolean p0, p0, Lcom/b/a/j;->p:Z

    return p0
.end method

.method public h()Z
    .locals 0

    .line 458
    iget-boolean p0, p0, Lcom/b/a/j;->v:Z

    return p0
.end method

.method public i()Z
    .locals 0

    .line 462
    iget-boolean p0, p0, Lcom/b/a/j;->l:Z

    return p0
.end method

.method public j()Z
    .locals 0

    .line 466
    iget-boolean p0, p0, Lcom/b/a/j;->m:Z

    return p0
.end method

.method public k()Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/b/a/j;->o:Z

    return p0
.end method

.method public l()Z
    .locals 0

    .line 474
    iget-boolean p0, p0, Lcom/b/a/j;->r:Z

    return p0
.end method

.method public m()Z
    .locals 0

    .line 482
    iget-boolean p0, p0, Lcom/b/a/j;->t:Z

    return p0
.end method

.method public n()Z
    .locals 0

    .line 486
    iget-boolean p0, p0, Lcom/b/a/j;->u:Z

    return p0
.end method

.method public o()Z
    .locals 0

    .line 495
    iget-boolean p0, p0, Lcom/b/a/j;->g:Z

    return p0
.end method

.method public p()V
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/b/a/j;->a:Lcom/b/a/c;

    iget-object p0, p0, Lcom/b/a/c;->c:Landroid/app/Activity;

    invoke-static {p0}, Lorg/andresoviedo/a/a/b;->a(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/b/a/d;
.super Ljava/lang/Object;
.source "ModelRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static final b:[F

.field private static final c:[F

.field private static final d:[F

.field private static e:F

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F

.field private static final j:[F


# instance fields
.field private final A:[F

.field private final B:[F

.field private final C:[F

.field private final D:[F

.field private final E:[F

.field private final F:[F

.field private final G:[F

.field private final H:[F

.field private final I:[F

.field private final J:[F

.field private final K:[F

.field private final L:[F

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:I

.field private final S:[F

.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private U:Z

.field private V:Z

.field private final k:[F

.field private final l:Lcom/b/a/j;

.field private m:I

.field private n:I

.field private o:F

.field private final p:Lorg/andresoviedo/android_3d_model_engine/a/c;

.field private q:J

.field private r:I

.field private s:I

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private final z:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 74
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/b/a/d;->b:[F

    .line 77
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/b/a/d;->c:[F

    .line 79
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/b/a/d;->d:[F

    const v1, 0x3f23d70a    # 0.64f

    .line 87
    sput v1, Lcom/b/a/d;->e:F

    .line 88
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/b/a/d;->f:[F

    .line 89
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/b/a/d;->g:[F

    .line 90
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/b/a/d;->h:[F

    .line 91
    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lcom/b/a/d;->i:[F

    .line 92
    new-array v0, v0, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/b/a/d;->j:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>(Lcom/b/a/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 113
    iput-wide v0, p0, Lcom/b/a/d;->q:J

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/b/a/d;->r:I

    .line 115
    iput v0, p0, Lcom/b/a/d;->s:I

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/b/a/d;->t:Ljava/util/Map;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/b/a/d;->u:Ljava/util/Map;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/b/a/d;->v:Ljava/util/Map;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/b/a/d;->w:Ljava/util/Map;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/b/a/d;->x:Ljava/util/Map;

    .line 129
    iput-boolean v0, p0, Lcom/b/a/d;->y:Z

    const/16 v1, 0x10

    .line 133
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/b/a/d;->z:[F

    .line 134
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/b/a/d;->A:[F

    .line 135
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/b/a/d;->B:[F

    const/4 v2, 0x4

    .line 138
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/b/a/d;->C:[F

    const/4 v3, 0x3

    .line 139
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/b/a/d;->D:[F

    .line 140
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/b/a/d;->E:[F

    .line 141
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/b/a/d;->F:[F

    .line 161
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/b/a/d;->G:[F

    .line 162
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/b/a/d;->H:[F

    .line 163
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/b/a/d;->I:[F

    .line 164
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/b/a/d;->J:[F

    .line 165
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/b/a/d;->K:[F

    .line 166
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/b/a/d;->L:[F

    .line 169
    iput-boolean v0, p0, Lcom/b/a/d;->M:Z

    .line 170
    iput-boolean v0, p0, Lcom/b/a/d;->N:Z

    const/4 v3, 0x1

    .line 171
    iput-boolean v3, p0, Lcom/b/a/d;->O:Z

    .line 172
    iput-boolean v3, p0, Lcom/b/a/d;->P:Z

    .line 173
    iput-boolean v0, p0, Lcom/b/a/d;->Q:Z

    .line 177
    iput v0, p0, Lcom/b/a/d;->R:I

    .line 178
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/b/a/d;->S:[F

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/b/a/d;->T:Ljava/util/Map;

    .line 190
    iput-boolean v0, p0, Lcom/b/a/d;->U:Z

    .line 195
    iput-boolean v0, p0, Lcom/b/a/d;->V:Z

    .line 203
    invoke-virtual {p1}, Lcom/b/a/e;->getModelActivity()Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->c()Lcom/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->l:Lcom/b/a/j;

    .line 204
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/b/a/d;->k:[F

    .line 205
    new-instance v0, Lorg/andresoviedo/android_3d_model_engine/a/c;

    invoke-virtual {p1}, Lcom/b/a/e;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/andresoviedo/android_3d_model_engine/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/d;->p:Lorg/andresoviedo/android_3d_model_engine/a/c;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a([F[F[F[F[FZZZZZLjava/util/List;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F[FZZZZZ",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v12, p4

    const-string v2, "render"

    const-string v3, "drawer"

    const-string v13, "\':"

    const-string v14, "There was a problem rendering the object \'"

    const-string v15, "ModelRenderer"

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 509
    :try_start_0
    invoke-interface/range {p11 .. p12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lorg/andresoviedo/android_3d_model_engine/b/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5

    .line 510
    :try_start_1
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->l()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v5, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawing model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v5, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_1
    iget-object v5, v1, Lcom/b/a/d;->p:Lorg/andresoviedo/android_3d_model_engine/a/c;

    const/16 v18, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    move/from16 v19, p9

    move/from16 v20, p7

    move/from16 v21, p6

    move/from16 v22, p10

    invoke-virtual/range {v16 .. v22}, Lorg/andresoviedo/android_3d_model_engine/a/c;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;ZZZZZ)Lorg/andresoviedo/android_3d_model_engine/a/b;

    move-result-object v5

    if-nez v5, :cond_3

    .line 522
    iget-object v0, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 529
    :cond_3
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->m()Z

    const/4 v3, 0x0

    .line 530
    invoke-virtual {v10, v3}, Lorg/andresoviedo/android_3d_model_engine/b/g;->b(Z)V

    if-eqz p9, :cond_4

    .line 566
    iget-object v3, v1, Lcom/b/a/d;->u:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_4

    .line 567
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object v3

    if-eqz v3, :cond_4

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading texture for obj: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'... bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 570
    invoke-static {v3}, Lorg/andresoviedo/a/a/d;->a(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 571
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 572
    iget-object v3, v1, Lcom/b/a/d;->u:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object v6

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded texture OK. id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v4, :cond_5

    const/4 v3, -0x1

    .line 580
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 584
    :cond_5
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v3

    sget-object v6, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    if-nez v3, :cond_6

    .line 585
    iget-object v2, v1, Lcom/b/a/d;->p:Lorg/andresoviedo/android_3d_model_engine/a/c;

    invoke-virtual {v2}, Lorg/andresoviedo/android_3d_model_engine/a/c;->a()Lorg/andresoviedo/android_3d_model_engine/a/b;

    move-result-object v2

    .line 586
    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v3, 0x0

    move-object/from16 p6, v2

    move-object/from16 p7, v10

    move-object/from16 p8, p2

    move-object/from16 p9, p1

    move/from16 p10, v3

    move-object/from16 p11, p3

    move-object/from16 p12, p5

    invoke-interface/range {p6 .. p12}, Lorg/andresoviedo/android_3d_model_engine/a/b;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FI[F[F)V

    goto/16 :goto_2

    :cond_6
    if-eqz p8, :cond_7

    .line 590
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v3

    sget-object v6, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    if-eqz v3, :cond_7

    .line 591
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v3

    sget-object v6, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    if-eq v3, v11, :cond_7

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v3

    sget-object v6, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v6, 0x3

    if-eq v3, v6, :cond_7

    .line 592
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v3

    sget-object v6, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7

    goto/16 :goto_2

    .line 613
    :cond_7
    iget-object v3, v1, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v3}, Lcom/b/a/j;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 614
    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v6, 0x0

    .line 615
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->p()I

    move-result v7

    .line 616
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v5

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    move-object/from16 v23, v10

    move-object/from16 v10, p4

    move/from16 v16, v11

    move-object/from16 v11, p5

    .line 614
    :try_start_2
    invoke-interface/range {v2 .. v11}, Lorg/andresoviedo/android_3d_model_engine/a/b;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FIII[F[F[F)V

    .line 617
    iget-object v2, v1, Lcom/b/a/d;->p:Lorg/andresoviedo/android_3d_model_engine/a/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v10, v23

    :try_start_3
    invoke-virtual {v10, v2, v0, v12}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lorg/andresoviedo/android_3d_model_engine/a/c;[F[F)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v10, v23

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, v23

    goto/16 :goto_1

    :cond_8
    move/from16 v16, v11

    .line 621
    iget-object v3, v1, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v3}, Lcom/b/a/j;->l()Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v10, Lorg/andresoviedo/android_3d_model_engine/b/a;

    if-eqz v3, :cond_9

    goto/16 :goto_2

    .line 640
    :cond_9
    iget-object v3, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rendering object... "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v3, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, v5

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 646
    invoke-interface/range {v2 .. v9}, Lorg/andresoviedo/android_3d_model_engine/a/b;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FI[F[F[F)V

    .line 648
    iget-object v2, v1, Lcom/b/a/d;->p:Lorg/andresoviedo/android_3d_model_engine/a/c;

    invoke-virtual {v10, v2, v0, v12}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lorg/andresoviedo/android_3d_model_engine/a/c;[F[F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    move/from16 v16, v11

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v10, v4

    .line 682
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v0

    move/from16 v16, v11

    move-object v10, v4

    .line 677
    :goto_1
    iget-object v2, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    iget-object v1, v1, Lcom/b/a/d;->T:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_2
    return-void
.end method

.method private a([F[F[F[F[F[F)V
    .locals 21

    move-object/from16 v13, p0

    .line 389
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->b()Lorg/andresoviedo/android_3d_model_engine/b/c;

    .line 392
    iget v0, v13, Lcom/b/a/d;->R:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, -0x2

    const/16 v4, 0x4100

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v0, v3, :cond_1

    .line 400
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget-object v3, v13, Lcom/b/a/d;->k:[F

    aget v7, v3, v2

    aget v8, v3, v1

    aget v6, v3, v6

    aget v3, v3, v5

    invoke-virtual {v0, v7, v8, v6, v3}, Lorg/andresoviedo/a/a/c;->a(FFFF)V

    .line 402
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, v4}, Lorg/andresoviedo/a/a/c;->b(I)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 406
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget-object v3, v13, Lcom/b/a/d;->k:[F

    aget v7, v3, v2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    aget v9, v3, v1

    sub-float v9, v8, v9

    aget v6, v3, v6

    sub-float v6, v8, v6

    aget v3, v3, v5

    sub-float/2addr v8, v3

    invoke-virtual {v0, v7, v9, v6, v8}, Lorg/andresoviedo/a/a/c;->a(FFFF)V

    .line 408
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, v4}, Lorg/andresoviedo/a/a/c;->b(I)V

    .line 443
    :cond_2
    :goto_0
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v13, Lcom/b/a/d;->Q:Z

    if-eqz v0, :cond_3

    move v14, v1

    goto :goto_1

    :cond_3
    move v14, v2

    .line 444
    :goto_1
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move v15, v1

    goto :goto_2

    :cond_4
    move v15, v2

    .line 445
    :goto_2
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->e()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v13, Lcom/b/a/d;->N:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v16, v1

    .line 446
    :goto_4
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v13, Lcom/b/a/d;->O:Z

    if-eqz v0, :cond_7

    move/from16 v17, v1

    goto :goto_5

    :cond_7
    move/from16 v17, v2

    .line 447
    :goto_5
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, v13, Lcom/b/a/d;->P:Z

    if-eqz v0, :cond_8

    move/from16 v18, v1

    goto :goto_6

    :cond_8
    move/from16 v18, v2

    .line 480
    :goto_6
    iget-object v0, v13, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->d()Ljava/util/List;

    move-result-object v19

    move v12, v2

    .line 481
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v11, v19

    move/from16 v20, v12

    .line 482
    invoke-direct/range {v0 .. v12}, Lcom/b/a/d;->a([F[F[F[F[FZZZZZLjava/util/List;I)V

    add-int/lit8 v12, v20, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 24

    move-object/from16 v8, p0

    const-string v9, "ModelRenderer"

    .line 292
    iget-boolean v0, v8, Lcom/b/a/d;->V:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return v10

    .line 297
    :cond_0
    :try_start_0
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, v8, Lcom/b/a/d;->m:I

    iget v2, v8, Lcom/b/a/d;->n:I

    invoke-virtual {v0, v10, v10, v1, v2}, Lorg/andresoviedo/a/a/c;->b(IIII)V

    .line 298
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, v8, Lcom/b/a/d;->m:I

    iget v2, v8, Lcom/b/a/d;->n:I

    invoke-virtual {v0, v10, v10, v1, v2}, Lorg/andresoviedo/a/a/c;->a(IIII)V

    .line 301
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v1, 0x4100

    invoke-virtual {v0, v1}, Lorg/andresoviedo/a/a/c;->b(I)V

    .line 303
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    if-nez v0, :cond_1

    return v10

    .line 308
    :cond_1
    sget-object v6, Lcom/b/a/d;->c:[F

    .line 309
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->o()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v1, 0xbe2

    if-eqz v0, :cond_2

    .line 311
    :try_start_1
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, v1}, Lorg/andresoviedo/a/a/c;->i(I)V

    .line 312
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v1, 0x302

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v2, 0x303

    invoke-virtual {v0, v1, v2}, Lorg/andresoviedo/a/a/c;->c(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v12, v10

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move v12, v10

    goto/16 :goto_4

    .line 314
    :cond_2
    :try_start_2
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, v1}, Lorg/andresoviedo/a/a/c;->g(I)V

    .line 318
    :goto_0
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->c()Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    .line 321
    :try_start_3
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->b()Lorg/andresoviedo/android_3d_model_engine/b/c;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lorg/andresoviedo/android_3d_model_engine/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    iget v1, v8, Lcom/b/a/d;->m:I

    iget v1, v8, Lcom/b/a/d;->n:I

    .line 330
    iget-object v13, v8, Lcom/b/a/d;->z:[F

    const/4 v14, 0x0

    iget v15, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    iget v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    iget v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    iget v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->d:F

    iget v4, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->e:F

    iget v5, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->f:F

    iget v7, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->g:F

    iget v11, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->h:F

    iget v10, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->i:F

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v11

    move/from16 v23, v10

    invoke-static/range {v13 .. v23}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 332
    iget-object v1, v8, Lcom/b/a/d;->A:[F

    iget v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->n:I

    iget v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->j:F

    iget v4, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->k:F

    iget v5, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->l:F

    iget v7, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->m:F

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->a()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->b()F

    move-result v23

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 333
    iget-object v13, v8, Lcom/b/a/d;->B:[F

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/b/a/d;->A:[F

    const/16 v16, 0x0

    iget-object v1, v8, Lcom/b/a/d;->z:[F

    const/16 v18, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v1, 0x0

    .line 336
    invoke-virtual {v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(Z)V

    .line 340
    :cond_3
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->m()Z

    move-result v0

    if-nez v0, :cond_4

    .line 341
    iget-object v2, v8, Lcom/b/a/d;->z:[F

    iget-object v3, v8, Lcom/b/a/d;->A:[F

    iget-object v4, v8, Lcom/b/a/d;->B:[F

    iget-object v5, v8, Lcom/b/a/d;->D:[F

    iget-object v7, v8, Lcom/b/a/d;->E:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/b/a/d;->a([F[F[F[F[F[F)V

    return v12

    .line 346
    :cond_4
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    iget-boolean v0, v8, Lcom/b/a/d;->U:Z

    if-eqz v0, :cond_5

    .line 349
    iget-object v2, v8, Lcom/b/a/d;->G:[F

    iget-object v3, v8, Lcom/b/a/d;->H:[F

    iget-object v4, v8, Lcom/b/a/d;->I:[F

    iget-object v5, v8, Lcom/b/a/d;->D:[F

    sget-object v6, Lcom/b/a/d;->f:[F

    iget-object v7, v8, Lcom/b/a/d;->E:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/b/a/d;->a([F[F[F[F[F[F)V

    goto :goto_1

    .line 352
    :cond_5
    iget-object v2, v8, Lcom/b/a/d;->J:[F

    iget-object v3, v8, Lcom/b/a/d;->K:[F

    iget-object v4, v8, Lcom/b/a/d;->L:[F

    iget-object v5, v8, Lcom/b/a/d;->D:[F

    sget-object v6, Lcom/b/a/d;->g:[F

    iget-object v7, v8, Lcom/b/a/d;->E:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/b/a/d;->a([F[F[F[F[F[F)V

    .line 355
    :goto_1
    iget-boolean v0, v8, Lcom/b/a/d;->U:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v8, Lcom/b/a/d;->U:Z

    return v12

    .line 359
    :cond_7
    iget-object v0, v8, Lcom/b/a/d;->l:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 362
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, v8, Lcom/b/a/d;->m:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v8, Lcom/b/a/d;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/andresoviedo/a/a/c;->b(IIII)V

    .line 363
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, v8, Lcom/b/a/d;->m:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v8, Lcom/b/a/d;->n:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/andresoviedo/a/a/c;->a(IIII)V

    .line 364
    iget-object v2, v8, Lcom/b/a/d;->G:[F

    iget-object v3, v8, Lcom/b/a/d;->H:[F

    iget-object v4, v8, Lcom/b/a/d;->I:[F

    iget-object v5, v8, Lcom/b/a/d;->D:[F

    const/4 v6, 0x0

    iget-object v7, v8, Lcom/b/a/d;->E:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/b/a/d;->a([F[F[F[F[F[F)V

    .line 368
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, v8, Lcom/b/a/d;->m:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v8, Lcom/b/a/d;->m:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v8, Lcom/b/a/d;->n:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/andresoviedo/a/a/c;->b(IIII)V

    .line 369
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, v8, Lcom/b/a/d;->m:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v8, Lcom/b/a/d;->m:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v8, Lcom/b/a/d;->n:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/andresoviedo/a/a/c;->a(IIII)V

    .line 370
    iget-object v2, v8, Lcom/b/a/d;->J:[F

    iget-object v3, v8, Lcom/b/a/d;->K:[F

    iget-object v4, v8, Lcom/b/a/d;->L:[F

    iget-object v5, v8, Lcom/b/a/d;->D:[F

    const/4 v6, 0x0

    iget-object v7, v8, Lcom/b/a/d;->E:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/b/a/d;->a([F[F[F[F[F[F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move v4, v10

    move v12, v4

    .line 379
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 380
    iput-boolean v1, v8, Lcom/b/a/d;->V:Z

    goto :goto_5

    :catch_5
    move-exception v0

    move v4, v10

    move v12, v4

    .line 376
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 377
    iput-boolean v1, v8, Lcom/b/a/d;->V:Z

    :cond_8
    :goto_5
    return v12
.end method

.method public b()F
    .locals 0

    const/high16 p0, 0x43480000    # 200.0f

    return p0
.end method

.method public c()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/b/a/d;->M:Z

    return p0
.end method

.method public d()I
    .locals 0

    .line 687
    iget p0, p0, Lcom/b/a/d;->m:I

    return p0
.end method

.method public e()I
    .locals 0

    .line 691
    iget p0, p0, Lcom/b/a/d;->n:I

    return p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 271
    iput v1, v0, Lcom/b/a/d;->m:I

    .line 272
    iput v2, v0, Lcom/b/a/d;->n:I

    .line 275
    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Lorg/andresoviedo/a/a/c;->b(IIII)V

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 278
    iput v1, v0, Lcom/b/a/d;->o:F

    .line 279
    sget-object v1, Lcom/b/a/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: projection: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/b/a/d;->o:F

    neg-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/b/a/d;->o:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",-1,1]-near/far[1,10]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, v0, Lcom/b/a/d;->A:[F

    iget v6, v0, Lcom/b/a/d;->o:F

    neg-float v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->a()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->b()F

    move-result v10

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 281
    iget-object v11, v0, Lcom/b/a/d;->K:[F

    iget v14, v0, Lcom/b/a/d;->o:F

    neg-float v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->a()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->b()F

    move-result v18

    const/4 v12, 0x0

    const/high16 v15, -0x40800000    # -1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v11 .. v18}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 282
    iget-object v1, v0, Lcom/b/a/d;->H:[F

    iget v4, v0, Lcom/b/a/d;->o:F

    neg-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->a()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->b()F

    move-result v8

    const/4 v2, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 284
    iget-object v9, v0, Lcom/b/a/d;->S:[F

    iget v12, v0, Lcom/b/a/d;->o:F

    neg-float v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->a()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/d;->b()F

    move-result v16

    const/4 v10, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .line 251
    sget-object p1, Lcom/b/a/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated. config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p1}, Lorg/andresoviedo/a/a/c;->c()V

    .line 256
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget-object p0, p0, Lcom/b/a/d;->k:[F

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    const/4 v2, 0x3

    aget p0, p0, v2

    invoke-virtual {p1, p2, v0, v1, p0}, Lorg/andresoviedo/a/a/c;->a(FFFF)V

    .line 263
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 p1, 0xb71

    invoke-virtual {p0, p1}, Lorg/andresoviedo/a/a/c;->i(I)V

    .line 266
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 p1, 0xc11

    invoke-virtual {p0, p1}, Lorg/andresoviedo/a/a/c;->i(I)V

    return-void
.end method

.class public Lcom/oplus/camera/gl/i;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcom/oplus/camera/gl/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/gl/i$a;,
        Lcom/oplus/camera/gl/i$c;,
        Lcom/oplus/camera/gl/i$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "i"

.field private static final b:[F

.field private static final c:[F

.field private static final i:Lcom/oplus/camera/gl/k;


# instance fields
.field private A:[Lcom/oplus/camera/gl/i$b;

.field private B:[F

.field private C:[F

.field private D:Lcom/oplus/camera/gl/o;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:[F

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:[I

.field private X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/gl/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final j:[F

.field private final k:Lcom/oplus/camera/gl/o;

.field private final l:Lcom/oplus/camera/gl/o;

.field private final m:[F

.field private final n:[F

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/Rect;

.field private final r:[F

.field private final s:[I

.field private t:Lcom/oplus/camera/gl/d;

.field private u:Z

.field private v:[Lcom/oplus/camera/gl/i$b;

.field private w:[Lcom/oplus/camera/gl/i$b;

.field private x:[Lcom/oplus/camera/gl/i$b;

.field private y:[Lcom/oplus/camera/gl/i$b;

.field private z:[Lcom/oplus/camera/gl/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 55
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/gl/i;->b:[F

    const/16 v0, 0x8

    .line 68
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oplus/camera/gl/i;->c:[F

    .line 110
    new-instance v0, Lcom/oplus/camera/gl/j;

    invoke-direct {v0}, Lcom/oplus/camera/gl/j;-><init>()V

    sput-object v0, Lcom/oplus/camera/gl/i;->i:Lcom/oplus/camera/gl/k;

    return-void

    :array_0
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

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    .line 104
    iput v1, v0, Lcom/oplus/camera/gl/i;->d:I

    const/4 v2, 0x4

    .line 105
    iput v2, v0, Lcom/oplus/camera/gl/i;->e:I

    const/4 v3, 0x5

    .line 106
    iput v3, v0, Lcom/oplus/camera/gl/i;->f:I

    const/4 v4, 0x6

    .line 107
    iput v4, v0, Lcom/oplus/camera/gl/i;->g:I

    const/4 v5, 0x7

    .line 108
    iput v5, v0, Lcom/oplus/camera/gl/i;->h:I

    .line 114
    new-array v6, v2, [F

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->j:[F

    .line 115
    new-instance v6, Lcom/oplus/camera/gl/o;

    invoke-direct {v6}, Lcom/oplus/camera/gl/o;-><init>()V

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    .line 116
    new-instance v6, Lcom/oplus/camera/gl/o;

    invoke-direct {v6}, Lcom/oplus/camera/gl/o;-><init>()V

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->l:Lcom/oplus/camera/gl/o;

    const/16 v6, 0x20

    .line 118
    new-array v6, v6, [F

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->m:[F

    .line 119
    new-array v6, v2, [F

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->n:[F

    .line 120
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    .line 121
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    .line 122
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->q:Landroid/graphics/Rect;

    const/16 v6, 0x10

    .line 123
    new-array v6, v6, [F

    iput-object v6, v0, Lcom/oplus/camera/gl/i;->r:[F

    const/4 v6, 0x1

    .line 124
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/oplus/camera/gl/i;->s:[I

    const/4 v7, 0x0

    .line 125
    iput-object v7, v0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    const/4 v7, 0x0

    .line 126
    iput-boolean v7, v0, Lcom/oplus/camera/gl/i;->u:Z

    .line 128
    new-array v8, v1, [Lcom/oplus/camera/gl/i$b;

    new-instance v9, Lcom/oplus/camera/gl/i$a;

    const-string v10, "aPosition"

    invoke-direct {v9, v10}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    const-string v11, "uMatrix"

    invoke-direct {v9, v11}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v6

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    const-string v12, "uColor"

    invoke-direct {v9, v12}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v9, v8, v12

    iput-object v8, v0, Lcom/oplus/camera/gl/i;->v:[Lcom/oplus/camera/gl/i$b;

    .line 134
    new-array v8, v3, [Lcom/oplus/camera/gl/i$b;

    new-instance v9, Lcom/oplus/camera/gl/i$a;

    invoke-direct {v9, v10}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v11}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v6

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    const-string v13, "uTextureMatrix"

    invoke-direct {v9, v13}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v12

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    const-string v14, "uTextureSampler"

    invoke-direct {v9, v14}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v1

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    const-string v15, "uAlpha"

    invoke-direct {v9, v15}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v2

    iput-object v8, v0, Lcom/oplus/camera/gl/i;->w:[Lcom/oplus/camera/gl/i$b;

    .line 142
    new-array v8, v3, [Lcom/oplus/camera/gl/i$b;

    new-instance v9, Lcom/oplus/camera/gl/i$a;

    invoke-direct {v9, v10}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v11}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v6

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v13}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v12

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v14}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v1

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v15}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v2

    iput-object v8, v0, Lcom/oplus/camera/gl/i;->x:[Lcom/oplus/camera/gl/i$b;

    .line 150
    new-array v8, v4, [Lcom/oplus/camera/gl/i$b;

    new-instance v9, Lcom/oplus/camera/gl/i$a;

    invoke-direct {v9, v10}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v11}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v6

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v13}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v12

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v14}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v1

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v9, v15}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v2

    new-instance v9, Lcom/oplus/camera/gl/i$c;

    const-string v5, "uTexLut"

    invoke-direct {v9, v5}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v3

    iput-object v8, v0, Lcom/oplus/camera/gl/i;->y:[Lcom/oplus/camera/gl/i$b;

    .line 159
    new-array v5, v3, [Lcom/oplus/camera/gl/i$b;

    new-instance v8, Lcom/oplus/camera/gl/i$a;

    invoke-direct {v8, v10}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    new-instance v8, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v8, v11}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v6

    new-instance v8, Lcom/oplus/camera/gl/i$a;

    const-string v9, "aTextureCoordinate"

    invoke-direct {v8, v9}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v12

    new-instance v8, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v8, v14}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v1

    new-instance v8, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v8, v15}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v2

    iput-object v5, v0, Lcom/oplus/camera/gl/i;->z:[Lcom/oplus/camera/gl/i$b;

    const/16 v5, 0x8

    .line 167
    new-array v5, v5, [Lcom/oplus/camera/gl/i$b;

    new-instance v8, Lcom/oplus/camera/gl/i$a;

    invoke-direct {v8, v10}, Lcom/oplus/camera/gl/i$a;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    new-instance v8, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v8, v11}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v6

    new-instance v8, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v8, v13}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v12

    new-instance v8, Lcom/oplus/camera/gl/i$c;

    invoke-direct {v8, v15}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v1

    new-instance v1, Lcom/oplus/camera/gl/i$c;

    const-string v8, "uBlendingAlpha1"

    invoke-direct {v1, v8}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v2

    new-instance v1, Lcom/oplus/camera/gl/i$c;

    const-string v2, "uBlendingAlpha2"

    invoke-direct {v1, v2}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v3

    new-instance v1, Lcom/oplus/camera/gl/i$c;

    const-string v2, "uBlendingTexture1"

    invoke-direct {v1, v2}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v4

    new-instance v1, Lcom/oplus/camera/gl/i$c;

    const-string v2, "uBlendingTexture2"

    invoke-direct {v1, v2}, Lcom/oplus/camera/gl/i$c;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v5, v2

    iput-object v5, v0, Lcom/oplus/camera/gl/i;->A:[Lcom/oplus/camera/gl/i$b;

    const/16 v1, 0x80

    .line 179
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->B:[F

    const/16 v1, 0x8

    .line 180
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->C:[F

    .line 181
    new-instance v1, Lcom/oplus/camera/gl/o;

    invoke-direct {v1}, Lcom/oplus/camera/gl/o;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->D:Lcom/oplus/camera/gl/o;

    .line 182
    iput v7, v0, Lcom/oplus/camera/gl/i;->E:I

    .line 183
    iput v7, v0, Lcom/oplus/camera/gl/i;->F:I

    const/16 v1, 0x10

    .line 188
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->I:[F

    .line 202
    iput v7, v0, Lcom/oplus/camera/gl/i;->S:I

    .line 203
    iput v7, v0, Lcom/oplus/camera/gl/i;->T:I

    .line 204
    iput v7, v0, Lcom/oplus/camera/gl/i;->U:I

    .line 205
    iput v7, v0, Lcom/oplus/camera/gl/i;->V:I

    .line 208
    new-array v1, v6, [I

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->W:[I

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->X:Ljava/util/ArrayList;

    .line 213
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->r:[F

    invoke-static {v1, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 214
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->B:[F

    iget v2, v0, Lcom/oplus/camera/gl/i;->F:I

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 215
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->C:[F

    iget v2, v0, Lcom/oplus/camera/gl/i;->E:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 216
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->X:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/oplus/camera/gl/i;->b:[F

    invoke-static {v1}, Lcom/oplus/camera/gl/i;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/i;->a(Ljava/nio/FloatBuffer;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->R:I

    .line 221
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-static {v1, v2}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b31

    .line 222
    invoke-static {v2, v1}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v1

    .line 224
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0065

    invoke-static {v3, v4}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v2, v3}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v3

    .line 227
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0033

    invoke-static {v4, v5}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v2, v4}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v2

    .line 230
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f001a

    invoke-static {v4, v5}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x8b30

    .line 231
    invoke-static {v5, v4}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v4

    .line 233
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f0064

    invoke-static {v7, v8}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v5, v7}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v7

    .line 236
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f0037

    invoke-static {v8, v9}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v5, v8}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v8

    .line 239
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0036

    invoke-static {v9, v10}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-static {v5, v9}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v9

    .line 242
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0f0063

    invoke-static {v10, v11}, Lcom/oplus/camera/util/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 243
    invoke-static {v5, v10}, Lcom/oplus/camera/gl/i;->a(ILjava/lang/String;)I

    move-result v5

    .line 245
    iget-object v10, v0, Lcom/oplus/camera/gl/i;->v:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {v0, v1, v4, v10}, Lcom/oplus/camera/gl/i;->a(II[Lcom/oplus/camera/gl/i$b;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->L:I

    .line 246
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->w:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {v0, v3, v7, v1}, Lcom/oplus/camera/gl/i;->a(II[Lcom/oplus/camera/gl/i$b;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->M:I

    .line 248
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->x:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {v0, v3, v8, v1}, Lcom/oplus/camera/gl/i;->a(II[Lcom/oplus/camera/gl/i$b;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->N:I

    .line 250
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->y:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {v0, v3, v9, v1}, Lcom/oplus/camera/gl/i;->a(II[Lcom/oplus/camera/gl/i$b;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->O:I

    .line 251
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->z:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {v0, v2, v7, v1}, Lcom/oplus/camera/gl/i;->a(II[Lcom/oplus/camera/gl/i$b;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->P:I

    .line 252
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->A:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {v0, v3, v5, v1}, Lcom/oplus/camera/gl/i;->a(II[Lcom/oplus/camera/gl/i$b;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/gl/i;->Q:I

    const/16 v1, 0x303

    .line 253
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 255
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 257
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    if-nez v1, :cond_0

    .line 258
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f002c

    invoke-static {v1, v2}, Lcom/oplus/camera/util/k;->b(Landroid/content/Context;I)Lcom/oplus/camera/gl/d;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    :cond_0
    return-void
.end method

.method private a(II[Lcom/oplus/camera/gl/i$b;)I
    .locals 2

    .line 386
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 387
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    if-eqz v0, :cond_2

    .line 393
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 394
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 395
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 396
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 397
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 398
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 399
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->s:[I

    const p1, 0x8b82

    const/4 p2, 0x0

    .line 400
    invoke-static {v0, p1, p0, p2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 401
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 403
    aget p0, p0, p2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 404
    sget-object p0, Lcom/oplus/camera/gl/i;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not link program: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 406
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 407
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    move v0, p2

    .line 411
    :cond_0
    :goto_0
    array-length p0, p3

    if-ge p2, p0, :cond_1

    .line 412
    aget-object p0, p3, p2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/i$b;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 390
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create GL program: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(ILjava/lang/String;)I
    .locals 0

    .line 274
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 275
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 278
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 280
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 281
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return p0
.end method

.method private a(Ljava/nio/Buffer;I)I
    .locals 4

    .line 1159
    sget-object v0, Lcom/oplus/camera/gl/i;->i:Lcom/oplus/camera/gl/k;

    iget-object v1, p0, Lcom/oplus/camera/gl/i;->s:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/oplus/camera/gl/k;->a(I[II)V

    .line 1160
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1161
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->s:[I

    aget p0, p0, v2

    const v0, 0x8892

    .line 1162
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1163
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1164
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/2addr v1, p2

    const p2, 0x88e4

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1166
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return p0
.end method

.method private a(IIF)V
    .locals 6

    .line 598
    iget v0, p0, Lcom/oplus/camera/gl/i;->L:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 599
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 602
    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 603
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 606
    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/i;->b(I)[F

    move-result-object p2

    const/4 p3, 0x3

    .line 607
    aget v0, p2, p3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 608
    :goto_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/gl/i;->b(Z)V

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 611
    aget v0, p2, v2

    aget v4, p2, v1

    aget v5, p2, v3

    aget p3, p2, p3

    invoke-static {v0, v4, v5, p3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 612
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 615
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/gl/i;->v:[Lcom/oplus/camera/gl/i$b;

    aget-object p3, p3, v3

    iget p3, p3, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-static {p3, v1, p2, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 616
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->v:[Lcom/oplus/camera/gl/i$b;

    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;I)V

    .line 617
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method private a(IIIFFFFIF)V
    .locals 8

    move-object v0, p0

    move v1, p2

    move/from16 v2, p8

    move/from16 v3, p9

    .line 593
    invoke-direct {p0, p2, v2, v3}, Lcom/oplus/camera/gl/i;->a(IIF)V

    .line 594
    iget-object v1, v0, Lcom/oplus/camera/gl/i;->v:[Lcom/oplus/camera/gl/i$b;

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;IIFFFF)V

    return-void
.end method

.method private a(IIIFFFFLcom/oplus/camera/gl/l;)V
    .locals 10

    .line 588
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/l;->a()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/gl/l;->b()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/oplus/camera/gl/i;->a(IIIFFFFIF)V

    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->r:[F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->r:[F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 740
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->r:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 741
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->r:[F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    const/16 v0, 0xd

    aput p1, p0, v0

    return-void
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/oplus/camera/gl/c;)V
    .locals 5

    .line 304
    invoke-virtual {p2}, Lcom/oplus/camera/gl/c;->f()I

    move-result v0

    .line 305
    invoke-virtual {p2}, Lcom/oplus/camera/gl/c;->g()I

    move-result v1

    .line 306
    invoke-virtual {p2}, Lcom/oplus/camera/gl/c;->h()I

    move-result v2

    .line 307
    invoke-virtual {p2}, Lcom/oplus/camera/gl/c;->i()I

    move-result p2

    .line 309
    iget v3, p0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 310
    iget v3, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 311
    iget v3, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 312
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 316
    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 317
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 318
    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, p2

    .line 321
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 322
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 323
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/c;I[Lcom/oplus/camera/gl/i$b;)V
    .locals 3

    .line 897
    iget v0, p0, Lcom/oplus/camera/gl/i;->G:I

    iget v1, p0, Lcom/oplus/camera/gl/i;->H:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 898
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 899
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 900
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 901
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->r()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->b()F

    move-result p2

    const v1, 0x3f733333    # 0.95f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/i;->b(Z)V

    const p2, 0x84c0

    .line 902
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 903
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 904
    invoke-virtual {p1, p0}, Lcom/oplus/camera/gl/c;->b(Lcom/oplus/camera/gl/h;)Z

    .line 905
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 906
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 p1, 0x3

    .line 907
    aget-object p1, p3, p1

    iget p1, p1, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 908
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 910
    invoke-direct {p0}, Lcom/oplus/camera/gl/i;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    array-length p1, p3

    const/4 p2, 0x5

    if-le p1, p2, :cond_2

    const p1, 0x84c1

    .line 911
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 912
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 913
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/gl/d;->b(Lcom/oplus/camera/gl/h;)Z

    .line 914
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/d;->m()I

    move-result p1

    iget-object v1, p0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/d;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 915
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 916
    aget-object p1, p3, p2

    iget p1, p1, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 917
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_2
    const/4 p1, 0x4

    .line 920
    aget-object p1, p3, p1

    iget p1, p1, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->b()F

    move-result p0

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 921
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method private static a(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;)V
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->f()I

    move-result v0

    .line 290
    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->g()I

    move-result v1

    .line 291
    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->l()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-float p0, v2

    int-to-float v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    .line 297
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/c;FF[FLandroid/graphics/RectF;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    if-eqz v9, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 776
    :cond_0
    iget-object v2, v8, Lcom/oplus/camera/gl/i;->A:[Lcom/oplus/camera/gl/i$b;

    .line 777
    iget v3, v8, Lcom/oplus/camera/gl/i;->Q:I

    .line 778
    iget v4, v8, Lcom/oplus/camera/gl/i;->G:I

    iget v5, v8, Lcom/oplus/camera/gl/i;->H:I

    const/4 v10, 0x0

    invoke-static {v10, v10, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 779
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 780
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 781
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 782
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/gl/c;->r()Z

    move-result v3

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->b()F

    move-result v3

    const v4, 0x3f733333    # 0.95f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v10

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v11

    :goto_1
    invoke-direct {p0, v3}, Lcom/oplus/camera/gl/i;->b(Z)V

    const v12, 0x84c0

    .line 783
    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 784
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 785
    invoke-virtual {v9, p0}, Lcom/oplus/camera/gl/c;->b(Lcom/oplus/camera/gl/h;)Z

    .line 786
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 787
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v3, 0x6

    .line 788
    aget-object v3, v2, v3

    iget v3, v3, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 789
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const v13, 0x84c1

    .line 790
    invoke-static {v13}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 791
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 792
    invoke-virtual {v0, p0}, Lcom/oplus/camera/gl/c;->b(Lcom/oplus/camera/gl/h;)Z

    .line 793
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/c;->m()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/c;->e()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 794
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v0, 0x7

    .line 795
    aget-object v0, v2, v0

    iget v0, v0, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 796
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v0, 0x3

    .line 798
    aget-object v0, v2, v0

    iget v0, v0, Lcom/oplus/camera/gl/i$b;->a:I

    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->b()F

    move-result v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 799
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v0, 0x4

    .line 800
    aget-object v0, v2, v0

    iget v0, v0, Lcom/oplus/camera/gl/i$b;->a:I

    move/from16 v3, p3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 801
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v0, 0x5

    .line 802
    aget-object v0, v2, v0

    iget v0, v0, Lcom/oplus/camera/gl/i$b;->a:I

    move/from16 v3, p4

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 803
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 805
    invoke-direct {p0, v2, v10}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;I)V

    const/4 v0, 0x2

    .line 806
    aget-object v3, v2, v0

    iget v3, v3, Lcom/oplus/camera/gl/i$b;->a:I

    move-object/from16 v4, p5

    invoke-static {v3, v11, v10, v4, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 807
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/gl/c;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 810
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/i;->a(I)V

    .line 811
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/gl/i;->a(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 812
    invoke-virtual {p0, v4, v0, v4}, Lcom/oplus/camera/gl/i;->a(FFF)V

    .line 813
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/gl/i;->a(FF)V

    :cond_3
    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 816
    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v14

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;IIFFFF)V

    .line 818
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/gl/c;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 819
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->f()V

    .line 822
    :cond_4
    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 823
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 824
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 825
    invoke-static {v13}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 826
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 827
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 828
    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 829
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 831
    iget v0, v8, Lcom/oplus/camera/gl/i;->T:I

    add-int/2addr v0, v11

    iput v0, v8, Lcom/oplus/camera/gl/i;->T:I

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x8d40

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1064
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->W:[I

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1065
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1066
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->W:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1067
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1069
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1070
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1071
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->W:[I

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1072
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1076
    iget p1, p0, Lcom/oplus/camera/gl/i;->J:I

    iget p2, p0, Lcom/oplus/camera/gl/i;->K:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/gl/i;->a(II)V

    goto :goto_1

    .line 1078
    :cond_2
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->g()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/gl/i;->a(II)V

    .line 1080
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->n()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1081
    invoke-virtual {p2, p0}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    :cond_3
    const p0, 0x8ce0

    .line 1085
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->m()I

    move-result p1

    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->e()I

    move-result p2

    .line 1084
    invoke-static {v1, p0, p1, p2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1086
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1088
    invoke-static {}, Lcom/oplus/camera/gl/i;->j()V

    :goto_1
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/c;[FLandroid/graphics/Rect;Z)V
    .locals 10

    .line 847
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/i;->c(Lcom/oplus/camera/gl/c;)[Lcom/oplus/camera/gl/i$b;

    move-result-object v1

    const/4 v0, 0x0

    .line 848
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;I)V

    const/16 v8, 0xc11

    if-eqz p4, :cond_0

    .line 851
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_0
    const/4 p4, 0x2

    .line 854
    aget-object v2, v1, p4

    iget v2, v2, Lcom/oplus/camera/gl/i$b;->a:I

    const/4 v9, 0x1

    invoke-static {v2, v9, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 855
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 857
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 858
    invoke-virtual {p0, p4}, Lcom/oplus/camera/gl/i;->a(I)V

    .line 859
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p0, p4, p2}, Lcom/oplus/camera/gl/i;->a(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 860
    invoke-virtual {p0, v0, p2, v0}, Lcom/oplus/camera/gl/i;->a(FFF)V

    .line 861
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p0, p4, p2}, Lcom/oplus/camera/gl/i;->a(FF)V

    .line 864
    :cond_1
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p0, Lcom/oplus/camera/gl/i;->H:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p4, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {p2, p4, v0, v2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 865
    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v4, p2

    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float v6, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float v7, p2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;IIFFFF)V

    .line 867
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 868
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->f()V

    .line 871
    :cond_2
    iget p1, p0, Lcom/oplus/camera/gl/i;->T:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/oplus/camera/gl/i;->T:I

    .line 872
    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/c;[FLandroid/graphics/RectF;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/i;->c(Lcom/oplus/camera/gl/c;)[Lcom/oplus/camera/gl/i$b;

    move-result-object v1

    const/4 v0, 0x0

    .line 750
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;I)V

    const/4 v2, 0x2

    .line 751
    aget-object v3, v1, v2

    iget v3, v3, Lcom/oplus/camera/gl/i$b;->a:I

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 752
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 754
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {p0, v2}, Lcom/oplus/camera/gl/i;->a(I)V

    .line 756
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/gl/i;->a(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 757
    invoke-virtual {p0, v2, p2, v2}, Lcom/oplus/camera/gl/i;->a(FFF)V

    .line 758
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/gl/i;->a(FF)V

    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 761
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;IIFFFF)V

    .line 763
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 764
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->f()V

    .line 767
    :cond_2
    iget p1, p0, Lcom/oplus/camera/gl/i;->T:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/oplus/camera/gl/i;->T:I

    return-void
.end method

.method private a([Lcom/oplus/camera/gl/i$b;FFFF)V
    .locals 7

    .line 665
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->m:[F

    iget-object v2, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget v3, p0, Lcom/oplus/camera/gl/i;->F:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 666
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->m:[F

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p4, p5, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 667
    iget-object v5, p0, Lcom/oplus/camera/gl/i;->m:[F

    iget-object v3, p0, Lcom/oplus/camera/gl/i;->I:[F

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p2, 0x1

    .line 668
    aget-object p1, p1, p2

    iget p1, p1, Lcom/oplus/camera/gl/i$b;->a:I

    iget-object p0, p0, Lcom/oplus/camera/gl/i;->m:[F

    const/16 p4, 0x10

    invoke-static {p1, p2, p3, p0, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 669
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method private a([Lcom/oplus/camera/gl/i$b;I)V
    .locals 7

    .line 643
    iget p0, p0, Lcom/oplus/camera/gl/i;->R:I

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 644
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 p0, 0x0

    .line 645
    aget-object p1, p1, p0

    iget v1, p1, Lcom/oplus/camera/gl/i$b;->a:I

    mul-int/lit8 v6, p2, 0x8

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 647
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 648
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 649
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method private a([Lcom/oplus/camera/gl/i$b;IIFFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 653
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/gl/i;->a([Lcom/oplus/camera/gl/i$b;FFFF)V

    const/4 p0, 0x0

    .line 654
    aget-object p1, p1, p0

    iget p1, p1, Lcom/oplus/camera/gl/i$b;->a:I

    .line 656
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 657
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 658
    invoke-static {p2, p0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 659
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 660
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 661
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method private static b([F)Ljava/nio/FloatBuffer;
    .locals 3

    .line 264
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 265
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 267
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private b(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 733
    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/i;->a(Landroid/graphics/RectF;)V

    .line 734
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->r:[F

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private b(Z)V
    .locals 0

    const/16 p0, 0xbe2

    if-eqz p1, :cond_0

    .line 634
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 635
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 638
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :goto_0
    return-void
.end method

.method private b(I)[F
    .locals 4

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 621
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->b()F

    move-result v2

    mul-float/2addr v0, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    .line 625
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->n:[F

    const/4 v1, 0x0

    aput v2, p0, v1

    const/4 v1, 0x1

    .line 626
    aput v3, p0, v1

    const/4 v1, 0x2

    .line 627
    aput p1, p0, v1

    const/4 p1, 0x3

    .line 628
    aput v0, p0, p1

    return-object p0
.end method

.method private c(Lcom/oplus/camera/gl/c;)[Lcom/oplus/camera/gl/i$b;
    .locals 2

    .line 879
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->w:[Lcom/oplus/camera/gl/i$b;

    .line 881
    iget v1, p0, Lcom/oplus/camera/gl/i;->M:I

    goto :goto_0

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/gl/i;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->y:[Lcom/oplus/camera/gl/i$b;

    .line 885
    iget v1, p0, Lcom/oplus/camera/gl/i;->O:I

    goto :goto_0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->x:[Lcom/oplus/camera/gl/i$b;

    .line 888
    iget v1, p0, Lcom/oplus/camera/gl/i;->N:I

    .line 892
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;I[Lcom/oplus/camera/gl/i$b;)V

    return-object v0
.end method

.method public static i()V
    .locals 5

    .line 358
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 363
    sget-object v2, Lcom/oplus/camera/gl/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static j()V
    .locals 4

    const v0, 0x8d40

    .line 328
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const-string v1, ""

    goto :goto_0

    :sswitch_0
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :sswitch_1
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :sswitch_2
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :sswitch_3
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 353
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8cd6 -> :sswitch_3
        0x8cd7 -> :sswitch_2
        0x8cd9 -> :sswitch_1
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method private k()Z
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcom/oplus/camera/gl/i;->u:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/gl/i;->t:Lcom/oplus/camera/gl/d;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private l()Lcom/oplus/camera/gl/s;
    .locals 1

    .line 1059
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->X:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/s;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    .line 1150
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/gl/i;->a(Ljava/nio/Buffer;I)I

    move-result p0

    return p0
.end method

.method public a()Lcom/oplus/camera/gl/k;
    .locals 0

    .line 1195
    sget-object p0, Lcom/oplus/camera/gl/i;->i:Lcom/oplus/camera/gl/k;

    return-object p0
.end method

.method public a(F)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->C:[F

    iget p0, p0, Lcom/oplus/camera/gl/i;->E:I

    aput p1, v0, p0

    return-void
.end method

.method public a(FF)V
    .locals 5

    .line 483
    iget v0, p0, Lcom/oplus/camera/gl/i;->F:I

    .line 484
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->B:[F

    add-int/lit8 v1, v0, 0xc

    .line 485
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x0

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v4, v0, 0x4

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0xd

    .line 486
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v4, v0, 0x5

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0xe

    .line 487
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v4, v0, 0x6

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0xf

    .line 488
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x3

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v0, v0, 0x7

    aget p1, p0, v0

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, p0, v1

    return-void
.end method

.method public a(FFF)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget p0, p0, Lcom/oplus/camera/gl/i;->F:I

    invoke-static {v0, p0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->m:[F

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 502
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 503
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->B:[F

    .line 504
    iget p0, p0, Lcom/oplus/camera/gl/i;->F:I

    const/16 v2, 0x10

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p0

    move-object v5, v0

    .line 505
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p2, 0x10

    .line 506
    invoke-static {v0, p2, p1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(FFFFFFF)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    .line 1264
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->m:[F

    const/4 v3, 0x0

    move-object v2, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 1269
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/16 v2, 0x10

    .line 1271
    new-array p3, v2, [F

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p3, v3

    const/4 p2, 0x1

    aput v0, p3, p2

    const/4 p2, 0x2

    aput v0, p3, p2

    const/4 p2, 0x3

    aput v0, p3, p2

    const/4 p2, 0x4

    aput v0, p3, p2

    const/4 p2, 0x5

    aput p1, p3, p2

    const/4 p2, 0x6

    aput v0, p3, p2

    const/4 p2, 0x7

    aput v0, p3, p2

    const/16 p2, 0x8

    neg-float p4, p5

    div-float/2addr p4, p7

    aput p4, p3, p2

    const/16 p2, 0x9

    neg-float p4, p6

    div-float/2addr p4, p7

    aput p4, p3, p2

    const/16 p2, 0xa

    aput v0, p3, p2

    const/16 p2, 0xb

    const/high16 p4, -0x40800000    # -1.0f

    div-float/2addr p4, p7

    aput p4, p3, p2

    const/16 p2, 0xc

    aput v0, p3, p2

    const/16 p2, 0xd

    aput v0, p3, p2

    const/16 p2, 0xe

    aput v0, p3, p2

    const/16 p2, 0xf

    aput p1, p3, p2

    const/16 p2, 0x10

    const/4 p4, 0x0

    const/4 p6, 0x0

    move-object p1, v1

    move-object p5, v1

    .line 1289
    invoke-static/range {p1 .. p6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p2, 0x0

    .line 1290
    iget-object p3, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget p4, p0, Lcom/oplus/camera/gl/i;->F:I

    const/16 p6, 0x10

    invoke-static/range {p1 .. p6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1291
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget p0, p0, Lcom/oplus/camera/gl/i;->F:I

    invoke-static {v1, v3, p1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(FFFFI)V
    .locals 10

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 674
    invoke-direct/range {v0 .. v9}, Lcom/oplus/camera/gl/i;->a(IIIFFFFIF)V

    .line 676
    iget p1, p0, Lcom/oplus/camera/gl/i;->U:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/gl/i;->U:I

    return-void
.end method

.method public a(FFFFLcom/oplus/camera/gl/l;)V
    .locals 9

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    .line 575
    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/gl/i;->a(IIIFFFFLcom/oplus/camera/gl/l;)V

    .line 577
    iget p1, p0, Lcom/oplus/camera/gl/i;->V:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/gl/i;->V:I

    return-void
.end method

.method public a(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->b()F

    move-result v0

    .line 528
    iget v4, p0, Lcom/oplus/camera/gl/i;->E:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/oplus/camera/gl/i;->E:I

    .line 529
    iget-object v4, p0, Lcom/oplus/camera/gl/i;->C:[F

    array-length v5, v4

    iget v6, p0, Lcom/oplus/camera/gl/i;->E:I

    if-gt v5, v6, :cond_1

    .line 530
    array-length v5, v4

    mul-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/gl/i;->C:[F

    .line 532
    :cond_1
    iget-object v4, p0, Lcom/oplus/camera/gl/i;->C:[F

    iget v5, p0, Lcom/oplus/camera/gl/i;->E:I

    aput v0, v4, v5

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 536
    iget v0, p0, Lcom/oplus/camera/gl/i;->F:I

    add-int/lit8 v1, v0, 0x10

    .line 537
    iput v1, p0, Lcom/oplus/camera/gl/i;->F:I

    .line 538
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->B:[F

    array-length v2, v1

    iget v4, p0, Lcom/oplus/camera/gl/i;->F:I

    if-gt v2, v4, :cond_4

    .line 539
    array-length v2, v1

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/gl/i;->B:[F

    .line 541
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget v2, p0, Lcom/oplus/camera/gl/i;->F:I

    const/16 v3, 0x10

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->D:Lcom/oplus/camera/gl/o;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/o;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 10

    .line 420
    iput p1, p0, Lcom/oplus/camera/gl/i;->G:I

    .line 421
    iput p2, p0, Lcom/oplus/camera/gl/i;->H:I

    .line 422
    iget v0, p0, Lcom/oplus/camera/gl/i;->G:I

    iget v1, p0, Lcom/oplus/camera/gl/i;->H:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 423
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget v1, p0, Lcom/oplus/camera/gl/i;->F:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 425
    iget-object v2, p0, Lcom/oplus/camera/gl/i;->I:[F

    int-to-float v5, p1

    int-to-float v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v7, v0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 426
    invoke-direct {p0}, Lcom/oplus/camera/gl/i;->l()Lcom/oplus/camera/gl/s;

    move-result-object v1

    if-nez v1, :cond_0

    .line 427
    iput p1, p0, Lcom/oplus/camera/gl/i;->J:I

    .line 428
    iput p2, p0, Lcom/oplus/camera/gl/i;->K:I

    .line 429
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget p2, p0, Lcom/oplus/camera/gl/i;->F:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 430
    iget-object p1, p0, Lcom/oplus/camera/gl/i;->B:[F

    iget p0, p0, Lcom/oplus/camera/gl/i;->F:I

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0, p2, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;II)V
    .locals 9

    .line 1109
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result v0

    .line 1110
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1111
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1112
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->h()I

    move-result v3

    .line 1113
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->i()I

    move-result v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v6, p2

    move v7, p3

    .line 1114
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1115
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;IIII)V
    .locals 3

    if-lez p4, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;)V

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 686
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcom/oplus/camera/gl/i;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/oplus/camera/gl/c;)V

    .line 687
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/gl/i;->b(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;IILandroid/graphics/Bitmap;II)V
    .locals 7

    .line 1141
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result v0

    .line 1142
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1143
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1144
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 1145
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1131
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result p0

    .line 1132
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1133
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/4 p1, 0x0

    .line 1134
    invoke-static {p0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1135
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 692
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 696
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 698
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcom/oplus/camera/gl/i;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/oplus/camera/gl/c;)V

    .line 699
    iget-object p2, p0, Lcom/oplus/camera/gl/i;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/gl/i;->b(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/c;FF[FIIII)V
    .locals 7

    move-object v0, p0

    move v1, p6

    move v2, p7

    if-lez p8, :cond_1

    if-gtz p9, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v3, v0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    add-int/2addr v1, p8

    int-to-float v1, v1

    add-int v2, v2, p9

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 720
    iget-object v6, v0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/c;FF[FLandroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;[FIIII)V
    .locals 3

    if-lez p5, :cond_1

    if-gtz p6, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 709
    iget-object p3, p0, Lcom/oplus/camera/gl/i;->p:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;[FLandroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;[FIIIIZ)V
    .locals 1

    if-lez p5, :cond_1

    if-gtz p6, :cond_0

    goto :goto_0

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->q:Landroid/graphics/Rect;

    add-int/2addr p5, p3

    add-int/2addr p6, p4

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 842
    iget-object p3, p0, Lcom/oplus/camera/gl/i;->q:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;[FLandroid/graphics/Rect;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 2

    .line 1052
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->c()V

    .line 1053
    invoke-direct {p0}, Lcom/oplus/camera/gl/i;->l()Lcom/oplus/camera/gl/s;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 465
    iput-boolean p1, p0, Lcom/oplus/camera/gl/i;->u:Z

    return-void
.end method

.method public a([F)V
    .locals 3

    const/4 p0, 0x1

    .line 447
    aget p0, p1, p0

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-static {p0, v0, v1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 448
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/16 p0, 0x4000

    .line 449
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 450
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/c;)Z
    .locals 2

    .line 998
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    monitor-enter v1

    .line 1002
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/o;->a(I)V

    .line 1003
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return v0
.end method

.method public b()F
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->C:[F

    iget p0, p0, Lcom/oplus/camera/gl/i;->E:I

    aget p0, v0, p0

    return p0
.end method

.method public b(Lcom/oplus/camera/gl/c;)V
    .locals 1

    .line 1094
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result p0

    .line 1095
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1096
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const p1, 0x812f

    const/16 v0, 0x2802

    .line 1097
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1098
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/16 v0, 0x2803

    .line 1099
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1100
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const p1, 0x46180400    # 9729.0f

    const/16 v0, 0x2801

    .line 1101
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1102
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const/16 v0, 0x2800

    .line 1103
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1104
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public b(Lcom/oplus/camera/gl/c;II)V
    .locals 9

    .line 1120
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->m()I

    move-result v0

    .line 1121
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1122
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 1123
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->h()I

    move-result v4

    .line 1124
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->i()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move v6, p2

    move v7, p3

    .line 1125
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1126
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    .line 520
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/i;->a(I)V

    return-void
.end method

.method public d()I
    .locals 0

    .line 1296
    iget p0, p0, Lcom/oplus/camera/gl/i;->G:I

    return p0
.end method

.method public e()I
    .locals 0

    .line 1301
    iget p0, p0, Lcom/oplus/camera/gl/i;->H:I

    return p0
.end method

.method public f()V
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->D:Lcom/oplus/camera/gl/o;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/o;->a()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 559
    iget v1, p0, Lcom/oplus/camera/gl/i;->E:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/gl/i;->E:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 563
    iget v0, p0, Lcom/oplus/camera/gl/i;->F:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/oplus/camera/gl/i;->F:I

    :cond_3
    return-void
.end method

.method public g()V
    .locals 6

    .line 1018
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    monitor-enter v0

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/o;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 1020
    sget-object v1, Lcom/oplus/camera/gl/i;->i:Lcom/oplus/camera/gl/k;

    iget-object v4, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/o;->b()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/o;->c()[I

    move-result-object v5

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/oplus/camera/gl/k;->a(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 1021
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->k:Lcom/oplus/camera/gl/o;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/o;->d()V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/i;->l:Lcom/oplus/camera/gl/o;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/o;->b()I

    move-result v1

    if-lez v1, :cond_1

    .line 1024
    sget-object v1, Lcom/oplus/camera/gl/i;->i:Lcom/oplus/camera/gl/k;

    iget-object v4, p0, Lcom/oplus/camera/gl/i;->l:Lcom/oplus/camera/gl/o;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/o;->b()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/gl/i;->l:Lcom/oplus/camera/gl/o;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/o;->c()[I

    move-result-object v5

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/oplus/camera/gl/k;->b(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 1025
    iget-object p0, p0, Lcom/oplus/camera/gl/i;->l:Lcom/oplus/camera/gl/o;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/o;->d()V

    .line 1027
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public h()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/oplus/camera/gl/i;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/s;

    .line 1045
    invoke-direct {p0}, Lcom/oplus/camera/gl/i;->l()Lcom/oplus/camera/gl/s;

    move-result-object v1

    .line 1046
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/gl/i;->a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;)V

    .line 1047
    invoke-virtual {p0}, Lcom/oplus/camera/gl/i;->f()V

    return-void
.end method

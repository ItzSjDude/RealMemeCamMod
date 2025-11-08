.class public Lcom/oplus/camera/ui/control/MainShutterButton;
.super Lcom/oplus/camera/ui/control/ShutterButton;
.source "MainShutterButton.java"


# static fields
.field private static final o:Landroid/view/animation/Interpolator;

.field private static final p:Landroid/view/animation/Interpolator;

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I

.field private static final w:I


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:F

.field private P:F

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private aA:F

.field private aB:F

.field private aC:F

.field private aD:F

.field private aE:F

.field private aF:F

.field private aG:F

.field private aH:F

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Z

.field private aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Landroid/animation/AnimatorSet;

.field private aS:Landroid/animation/ValueAnimator;

.field private aT:Landroid/animation/ValueAnimator;

.field private aU:Landroid/graphics/Canvas;

.field private aV:Landroid/graphics/Bitmap;

.field private aW:Landroid/graphics/Bitmap;

.field private aX:Landroid/graphics/Bitmap;

.field private aY:Landroid/graphics/Bitmap;

.field private aZ:Landroid/graphics/Bitmap;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private bA:Landroid/animation/ObjectAnimator;

.field private bB:Landroid/animation/ValueAnimator;

.field private bC:Landroid/animation/ValueAnimator;

.field private bD:Landroid/animation/ValueAnimator;

.field private bE:Landroid/animation/ValueAnimator;

.field private bF:Landroid/animation/ValueAnimator;

.field private bG:Landroid/animation/ValueAnimator;

.field private bH:Landroid/animation/ValueAnimator;

.field private bI:Landroid/animation/ValueAnimator;

.field private bJ:Landroid/animation/ValueAnimator;

.field private bK:Landroid/animation/ValueAnimator;

.field private bL:Landroid/animation/ValueAnimator;

.field private bM:Landroid/animation/ValueAnimator;

.field private bN:Landroid/animation/ValueAnimator;

.field private bO:Landroid/animation/ValueAnimator;

.field private bP:Landroid/animation/ValueAnimator;

.field private bQ:Landroid/animation/ValueAnimator;

.field private bR:Landroid/animation/ValueAnimator;

.field private bS:Landroid/view/animation/PathInterpolator;

.field private bT:Landroid/view/animation/PathInterpolator;

.field private bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private bV:Landroid/graphics/Path;

.field private ba:Landroid/graphics/Bitmap;

.field private bb:Landroid/graphics/RectF;

.field private bc:Landroid/graphics/RectF;

.field private bd:Landroid/graphics/RectF;

.field private be:Landroid/graphics/RectF;

.field private bf:Landroid/graphics/RectF;

.field private bg:Landroid/graphics/RectF;

.field private bh:Landroid/graphics/Paint;

.field private bi:Landroid/graphics/Paint;

.field private bj:Landroid/graphics/Paint;

.field private bk:Landroid/graphics/Paint;

.field private bl:Landroid/graphics/Paint;

.field private bm:Landroid/graphics/Paint;

.field private bn:Landroid/graphics/Paint;

.field private bo:Landroid/graphics/Paint;

.field private bp:Landroid/graphics/Paint;

.field private bq:Landroid/graphics/Paint;

.field private br:Landroid/graphics/Paint;

.field private bs:Landroid/graphics/Paint;

.field private bt:Landroid/graphics/Paint;

.field private bu:Landroid/graphics/Paint;

.field private bv:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private bw:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private bx:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private by:Landroid/animation/ObjectAnimator;

.field private bz:Landroid/animation/ObjectAnimator;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/control/MainShutterButton;->o:Landroid/view/animation/Interpolator;

    .line 120
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/control/MainShutterButton;->p:Landroid/view/animation/Interpolator;

    const-string v0, "#FFEA3447"

    .line 136
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->q:I

    const-string v0, "#E3E3E3"

    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->r:I

    const-string v0, "#4D4D4D"

    .line 138
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->s:I

    const-string v0, "#FB822A"

    .line 139
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    const-string v0, "#E1651F"

    .line 140
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    const-string v0, "#757575"

    .line 141
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->v:I

    const-string v0, "#33FB822A"

    .line 142
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/control/MainShutterButton;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 307
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 167
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    .line 168
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->y:I

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    .line 170
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    .line 171
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    const/4 v1, 0x0

    .line 172
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->C:F

    .line 173
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    .line 174
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    .line 175
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 176
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 177
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->H:I

    .line 178
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    .line 179
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    .line 180
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    .line 181
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    .line 182
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    .line 183
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    .line 184
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    .line 185
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->P:F

    .line 186
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    .line 187
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    .line 188
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    .line 189
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    .line 190
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    .line 191
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->V:I

    .line 192
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->W:I

    .line 193
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aa:I

    .line 194
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ab:I

    .line 195
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ac:I

    .line 196
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ad:I

    .line 197
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    .line 198
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    .line 199
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    .line 200
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    .line 201
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    .line 202
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    .line 203
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    .line 204
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    .line 205
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    const/16 v2, 0xff

    .line 206
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    .line 207
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ao:I

    const/4 v2, 0x6

    .line 209
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    const/16 v3, 0xc

    .line 210
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aq:I

    .line 211
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ar:I

    const/16 v4, 0x9

    .line 212
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->as:I

    .line 213
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    const/4 v3, 0x4

    .line 214
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->au:I

    .line 215
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    .line 216
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    const/16 v2, 0x18

    .line 217
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ax:I

    const/16 v2, 0x80

    .line 218
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ay:I

    const/4 v2, -0x1

    .line 219
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    .line 221
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    .line 222
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aB:F

    .line 223
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    .line 224
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    .line 225
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aE:F

    .line 226
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    .line 227
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    .line 228
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 231
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    .line 234
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 235
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    .line 236
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 237
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    .line 238
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aP:Z

    .line 239
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aQ:Z

    .line 241
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    .line 242
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    .line 243
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    .line 245
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    .line 246
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    .line 247
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    .line 248
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    .line 249
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    .line 250
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    .line 251
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ba:Landroid/graphics/Bitmap;

    .line 253
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    .line 254
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bc:Landroid/graphics/RectF;

    .line 255
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    .line 256
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    .line 257
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    .line 258
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    .line 259
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    .line 260
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    .line 261
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    .line 262
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    .line 263
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    .line 264
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    .line 265
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    .line 266
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 267
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    .line 268
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bq:Landroid/graphics/Paint;

    .line 269
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    .line 270
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    .line 271
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    .line 272
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    .line 274
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bv:Landroid/util/Property;

    .line 275
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bw:Landroid/util/Property;

    .line 276
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    .line 278
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    .line 279
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    .line 280
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    .line 282
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    .line 283
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    .line 284
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    .line 285
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    .line 286
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    .line 287
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bG:Landroid/animation/ValueAnimator;

    .line 288
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bH:Landroid/animation/ValueAnimator;

    .line 289
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    .line 290
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    .line 291
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    .line 292
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    .line 293
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    .line 294
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    .line 295
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    .line 296
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    .line 297
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    .line 298
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    .line 300
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bS:Landroid/view/animation/PathInterpolator;

    .line 301
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bT:Landroid/view/animation/PathInterpolator;

    .line 303
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 304
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    .line 168
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->y:I

    const/4 v1, 0x0

    .line 169
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    .line 170
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    .line 171
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    const/4 v2, 0x0

    .line 172
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->C:F

    .line 173
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    .line 174
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    .line 175
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 176
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 177
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->H:I

    .line 178
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    .line 179
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    .line 180
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    .line 181
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    .line 182
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    .line 183
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    .line 184
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    .line 185
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->P:F

    .line 186
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    .line 187
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    .line 188
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    .line 189
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    .line 190
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    .line 191
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->V:I

    .line 192
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->W:I

    .line 193
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aa:I

    .line 194
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ab:I

    .line 195
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ac:I

    .line 196
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ad:I

    .line 197
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    .line 198
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    .line 199
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    .line 200
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    .line 201
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    .line 202
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    .line 203
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    .line 204
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    .line 205
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    const/16 v3, 0xff

    .line 206
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    .line 207
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ao:I

    const/4 v3, 0x6

    .line 209
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    const/16 v4, 0xc

    .line 210
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aq:I

    .line 211
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ar:I

    const/16 v5, 0x9

    .line 212
    iput v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->as:I

    .line 213
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    const/4 v4, 0x4

    .line 214
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->au:I

    .line 215
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    .line 216
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    const/16 v3, 0x18

    .line 217
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ax:I

    const/16 v3, 0x80

    .line 218
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ay:I

    const/4 v3, -0x1

    .line 219
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    .line 221
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    .line 222
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aB:F

    .line 223
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    .line 224
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    .line 225
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aE:F

    .line 226
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    .line 227
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    .line 228
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    const/4 v2, 0x0

    .line 230
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 231
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    .line 232
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    .line 234
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 235
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    .line 236
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 237
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    .line 238
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aP:Z

    .line 239
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aQ:Z

    .line 241
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    .line 242
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    .line 243
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    .line 245
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    .line 246
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    .line 247
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    .line 248
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    .line 249
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    .line 250
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    .line 251
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ba:Landroid/graphics/Bitmap;

    .line 253
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    .line 254
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bc:Landroid/graphics/RectF;

    .line 255
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    .line 256
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    .line 257
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    .line 258
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    .line 259
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    .line 260
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    .line 261
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    .line 262
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    .line 263
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    .line 264
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    .line 265
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    .line 266
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 267
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    .line 268
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bq:Landroid/graphics/Paint;

    .line 269
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    .line 270
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    .line 271
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    .line 272
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    .line 274
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bv:Landroid/util/Property;

    .line 275
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bw:Landroid/util/Property;

    .line 276
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    .line 278
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    .line 279
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    .line 280
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    .line 282
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    .line 283
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    .line 284
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    .line 285
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    .line 286
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    .line 287
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bG:Landroid/animation/ValueAnimator;

    .line 288
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bH:Landroid/animation/ValueAnimator;

    .line 289
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    .line 290
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    .line 291
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    .line 292
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    .line 293
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    .line 294
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    .line 295
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    .line 296
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    .line 297
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    .line 298
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    .line 300
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bS:Landroid/view/animation/PathInterpolator;

    .line 301
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bT:Landroid/view/animation/PathInterpolator;

    .line 303
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 304
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    .line 312
    invoke-virtual {p0, p1, p2, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    .line 168
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->y:I

    const/4 v1, 0x0

    .line 169
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    .line 170
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    .line 171
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    const/4 v2, 0x0

    .line 172
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->C:F

    .line 173
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    .line 174
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    .line 175
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 176
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 177
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->H:I

    .line 178
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    .line 179
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    .line 180
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    .line 181
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    .line 182
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    .line 183
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    .line 184
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    .line 185
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->P:F

    .line 186
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    .line 187
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    .line 188
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    .line 189
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    .line 190
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    .line 191
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->V:I

    .line 192
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->W:I

    .line 193
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aa:I

    .line 194
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ab:I

    .line 195
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ac:I

    .line 196
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ad:I

    .line 197
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    .line 198
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    .line 199
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    .line 200
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    .line 201
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    .line 202
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    .line 203
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    .line 204
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    .line 205
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    const/16 v3, 0xff

    .line 206
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    .line 207
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ao:I

    const/4 v3, 0x6

    .line 209
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    const/16 v4, 0xc

    .line 210
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aq:I

    .line 211
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ar:I

    const/16 v5, 0x9

    .line 212
    iput v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->as:I

    .line 213
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    const/4 v4, 0x4

    .line 214
    iput v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->au:I

    .line 215
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    .line 216
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    const/16 v3, 0x18

    .line 217
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ax:I

    const/16 v3, 0x80

    .line 218
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ay:I

    const/4 v3, -0x1

    .line 219
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    .line 221
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    .line 222
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aB:F

    .line 223
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    .line 224
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    .line 225
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aE:F

    .line 226
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    .line 227
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    .line 228
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    const/4 v2, 0x0

    .line 230
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 231
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    .line 232
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    .line 234
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 235
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    .line 236
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 237
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    .line 238
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aP:Z

    .line 239
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aQ:Z

    .line 241
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    .line 242
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    .line 243
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    .line 245
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    .line 246
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    .line 247
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    .line 248
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    .line 249
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    .line 250
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    .line 251
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ba:Landroid/graphics/Bitmap;

    .line 253
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    .line 254
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bc:Landroid/graphics/RectF;

    .line 255
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    .line 256
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    .line 257
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    .line 258
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    .line 259
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    .line 260
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    .line 261
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    .line 262
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    .line 263
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    .line 264
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    .line 265
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    .line 266
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 267
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    .line 268
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bq:Landroid/graphics/Paint;

    .line 269
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    .line 270
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    .line 271
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    .line 272
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    .line 274
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bv:Landroid/util/Property;

    .line 275
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bw:Landroid/util/Property;

    .line 276
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    .line 278
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    .line 279
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    .line 280
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    .line 282
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    .line 283
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    .line 284
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    .line 285
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    .line 286
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    .line 287
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bG:Landroid/animation/ValueAnimator;

    .line 288
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bH:Landroid/animation/ValueAnimator;

    .line 289
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    .line 290
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    .line 291
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    .line 292
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    .line 293
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    .line 294
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    .line 295
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    .line 296
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    .line 297
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    .line 298
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    .line 300
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bS:Landroid/view/animation/PathInterpolator;

    .line 301
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bT:Landroid/view/animation/PathInterpolator;

    .line 303
    iput-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 304
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private A()V
    .locals 3

    const/4 v0, 0x2

    .line 2545
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    .line 2546
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2547
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1b8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2548
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$15;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$15;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private B()V
    .locals 4

    .line 2568
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x78

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 2569
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    rsub-int/lit8 p0, p0, 0x78

    mul-int/lit16 p0, p0, 0x320

    div-int/2addr p0, v2

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private C()V
    .locals 2

    const/4 v0, 0x0

    .line 2574
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    .line 2575
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    .line 2576
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    .line 2577
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    .line 2578
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    .line 2579
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    .line 2580
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    .line 2582
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bG:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 2583
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2584
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bG:Landroid/animation/ValueAnimator;

    .line 2587
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bH:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 2588
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2589
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bH:Landroid/animation/ValueAnimator;

    .line 2592
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 2593
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2594
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    .line 2597
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 2598
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2599
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    :cond_3
    return-void
.end method

.method private D()V
    .locals 7

    .line 2623
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2624
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x43055c29    # 133.36f

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ao:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x85

    :goto_0
    const/4 v2, 0x0

    .line 2625
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ao:I

    .line 2626
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2627
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2630
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 2631
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private E()V
    .locals 0

    .line 2636
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 2637
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 6

    .line 2642
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2643
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 2644
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2647
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 2648
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    const/high16 v1, 0x43b40000    # 360.0f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2649
    :goto_0
    iget-boolean v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v1, v1

    .line 2651
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2652
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v0, v3, v5

    aput v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2653
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/animation/TimeInterpolator;FFF)F

    move-result v0

    .line 2654
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 2655
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private G()V
    .locals 3

    .line 2683
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2684
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2685
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 6

    .line 2748
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2749
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    .line 2750
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2751
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    const v4, 0x3f547ae1    # 0.83f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2752
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$16;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$16;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2760
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$17;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2783
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bJ:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private I()V
    .locals 6

    .line 2787
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2788
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    .line 2789
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2790
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2791
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$18;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$18;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2799
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$19;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$19;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2822
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bL:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private J()V
    .locals 6

    .line 2826
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2827
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    .line 2828
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2829
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2830
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$20;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$20;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2838
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$21;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$21;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2861
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private K()V
    .locals 6

    .line 2865
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2866
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    .line 2867
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2868
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2869
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$22;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$22;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2877
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$24;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$24;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2900
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bK:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private L()V
    .locals 3

    .line 2957
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2958
    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    .line 2959
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2960
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2961
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$27;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$27;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2968
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$28;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$28;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 2996
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2999
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bP:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private M()V
    .locals 3

    .line 3003
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 3004
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    .line 3005
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3006
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3007
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$29;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$29;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3014
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$30;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$30;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 3038
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3041
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bQ:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(FFFZ)F
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    sub-float/2addr p2, v0

    div-float/2addr p2, p0

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    return p1

    :cond_0
    sub-float/2addr p2, v0

    div-float/2addr p2, p0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private a(Landroid/animation/TimeInterpolator;FFF)F
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    sub-float/2addr p4, p3

    const v1, 0x3ca3d70a    # 0.02f

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v0

    move v0, p0

    :goto_0
    cmpg-float v4, p0, v2

    if-gez v4, :cond_1

    .line 2670
    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    move v0, p0

    move v3, v4

    :cond_0
    add-float/2addr p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :cond_2
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 468
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 469
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-nez p1, :cond_0

    .line 472
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 484
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 10

    .line 489
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 490
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-nez p1, :cond_0

    .line 493
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 498
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 503
    :goto_0
    sget v0, Lcom/oplus/camera/ui/control/MainShutterButton;->v:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    float-to-double v6, p3

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/16 v6, 0x0

    add-double/2addr v2, v6

    double-to-int p3, v2

    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    .line 505
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v0, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    .line 506
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-object v6, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-double v6, v6

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    .line 507
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-double v6, v3

    iget-object v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v8, v3

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    double-to-int v1, v6

    .line 504
    invoke-virtual {p2, p3, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 508
    iget-object p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 509
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/MainShutterButton;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 0

    .line 2031
    iput-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 2032
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2377
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 3090
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v1, "button_shape_ring_none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3094
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/16 v1, 0x9

    const/4 v2, 0x1

    const-string v3, "button_shape_dial_rotate"

    const/4 v4, 0x0

    const-string v5, "button_shape_dial_still"

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3137
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3138
    iput-boolean v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 3139
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 3140
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3141
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3142
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3145
    :cond_2
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 3146
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 3156
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3157
    iput-boolean v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 3158
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 3164
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ba:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    const v1, 0x7f0803b9

    const v2, 0x3eb33333    # 0.35f

    .line 3165
    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ba:Landroid/graphics/Bitmap;

    .line 3168
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ba:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3102
    :cond_6
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3103
    iput-boolean v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 3104
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 3105
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3106
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    .line 3107
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aN:Z

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 3108
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v1, "button_shape_countdown_ten_seconds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3109
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    const v1, 0x7f0803b5

    .line 3110
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    .line 3113
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3114
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v1, "button_shape_countdown_three_seconds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3115
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    const v1, 0x7f0803b8

    .line 3116
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    .line 3119
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3120
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v1, "button_shape_next_step"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3121
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    const v1, 0x7f080489

    .line 3122
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    .line 3125
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3126
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v1, "button_shape_complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3127
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    const v1, 0x7f080453

    .line 3128
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    .line 3131
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_10
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p2, :cond_1

    .line 1692
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1696
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1697
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1698
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1699
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr p0, v4

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p0, 0x0

    .line 1700
    invoke-virtual {p1, p2, p0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1637
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;ZZ)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;ZZ)V
    .locals 8

    .line 1641
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v1, "button_color_inside_red"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x33

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1643
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_0

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v2, "button_color_inside_grey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1646
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 1650
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1651
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    .line 1652
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1655
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 1657
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1661
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    if-eqz p2, :cond_7

    const/4 p2, 0x2

    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-eq p2, v0, :cond_7

    .line 1662
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v0, "button_shape_ring_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 1663
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bc:Landroid/graphics/RectF;

    .line 1665
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    add-float/2addr v2, p2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    iget v6, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, p2

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v4

    iget v7, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, p2

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v0

    div-float/2addr v7, v4

    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1669
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 1670
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1671
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1672
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1675
    :cond_7
    iget-boolean p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p2

    if-nez p2, :cond_9

    .line 1676
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    if-nez p2, :cond_8

    const v0, 0x7f0805f9

    .line 1677
    invoke-direct {p0, p2, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    .line 1680
    :cond_8
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aZ:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bq:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    if-eqz p3, :cond_a

    .line 1685
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v0, p3

    int-to-float p3, p3

    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1687
    :cond_a
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v0, p3

    int-to-float p3, p3

    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->o()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/MainShutterButton;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/MainShutterButton;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setModeAppearing(Z)V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 522
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const-string p1, "com.oplus.ui.shutterbutton.type.lowlight"

    .line 523
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080259

    .line 524
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setBackgroundResource(I)V

    .line 527
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 329
    sget-object v0, Lcom/oplus/camera/R$styleable;->MainShutterButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p3, 0x12

    const v0, 0x7f070a77

    .line 334
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 333
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    const/16 p3, 0xe

    const v0, 0x7f070a8c

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 335
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    const/16 p3, 0x10

    const v0, 0x7f070a83

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 337
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    const/16 p3, 0xf

    const v0, 0x7f070a82

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 339
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    const p3, 0x7f0a002a

    .line 342
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 341
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->H:I

    const/16 p3, 0x16

    const v0, 0x7f0a002c

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 343
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    const/16 p3, 0x11

    const v0, 0x7f0a002b

    .line 346
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 345
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    .line 347
    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    rsub-int p3, p3, 0x168

    int-to-float p3, p3

    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aE:F

    const/4 p3, 0x4

    const v0, 0x7f070a78

    .line 349
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 348
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 351
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070122

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    .line 357
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    .line 359
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    .line 360
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    .line 361
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    iget p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->W:I

    .line 362
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    iget p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->V:I

    .line 364
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aa:I

    .line 365
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070abc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ab:I

    .line 366
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ac:I

    .line 367
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ad:I

    .line 368
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070abd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    .line 369
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    .line 370
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070abe

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    .line 371
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    .line 372
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070abf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    .line 373
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ac2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    .line 374
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->au:I

    .line 376
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    iget p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    .line 378
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    .line 379
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 383
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    .line 384
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 p3, 0x80

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 388
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    .line 389
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 391
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->q:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    .line 394
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    const/16 p3, 0x33

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    .line 399
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 400
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 401
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 403
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    .line 404
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    .line 408
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 409
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 411
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 412
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 413
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 415
    new-instance p1, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bq:Landroid/graphics/Paint;

    .line 417
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a7b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->P:F

    .line 420
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    .line 421
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 422
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 424
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    ushr-int/lit8 p3, p3, 0x18

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 425
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    sget v0, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    invoke-direct {p0, p3, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(II)Landroid/graphics/Shader;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 427
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 429
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 431
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    ushr-int/lit8 p3, p3, 0x18

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 432
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    sget v0, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    invoke-direct {p0, p3, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(II)Landroid/graphics/Shader;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 434
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    .line 435
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->w:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->P:F

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 440
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    .line 441
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 442
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 444
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 445
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->P:F

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 447
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    .line 448
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 449
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    sget p2, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x18

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    sget p2, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    sget p3, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    invoke-direct {p0, p2, p3}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(II)Landroid/graphics/Shader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->k()V

    .line 456
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->p()V

    return-void

    .line 353
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    throw p0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p2, :cond_1

    .line 1704
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1708
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1709
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1710
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1711
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr p0, v4

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p0, 0x0

    .line 1712
    invoke-virtual {p1, p2, p0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Z)V
    .locals 11

    .line 3045
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3046
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    .line 3047
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_a

    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 3051
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->as:I

    add-int v4, v1, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 3054
    :cond_0
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_1

    const/4 v4, 0x0

    .line 3055
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    add-int v3, v1, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    add-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 3058
    :cond_1
    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    if-le v2, v1, :cond_6

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x3c

    if-ne v0, v2, :cond_3

    .line 3068
    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aq:I

    .line 3069
    :goto_1
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_4

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    .line 3071
    :goto_2
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    add-int/lit8 v4, v3, -0x3c

    if-le v0, v4, :cond_5

    if-nez v3, :cond_9

    :cond_5
    const/4 v6, 0x0

    .line 3072
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    add-int v4, v3, v2

    int-to-float v7, v4

    const/4 v8, 0x0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    int-to-float v9, v3

    iget-object v10, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 3059
    :cond_6
    :goto_3
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    if-ne v0, v1, :cond_7

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aq:I

    .line 3060
    :goto_4
    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    if-ne v0, v2, :cond_8

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    goto :goto_5

    :cond_8
    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    .line 3062
    :goto_5
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    if-lt v0, v3, :cond_9

    const/4 v5, 0x0

    .line 3063
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    add-int v4, v3, v1

    int-to-float v6, v4

    const/4 v7, 0x0

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    .line 3079
    invoke-virtual {p1, v1, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3082
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/MainShutterButton;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aQ:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    return p1
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/MainShutterButton;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aP:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ay:I

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private d(II)V
    .locals 0

    .line 2036
    iput p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    .line 2037
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method private d(ZZ)V
    .locals 6

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startInsideRedAnimator, show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInsideRedScaleValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInsideRedAlphaValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2906
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    .line 2904
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getVisibility()I

    move-result v0

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2915
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_1

    .line 2916
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    .line 2917
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2918
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/control/MainShutterButton$25;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$25;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 2926
    :cond_1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2929
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_2

    .line 2930
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    .line 2931
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2932
    iget-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/control/MainShutterButton$26;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$26;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 2939
    :cond_2
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    .line 2943
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    aput v2, v1, v0

    aput v3, v1, p2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2944
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    aput v2, v1, v0

    aput v3, v1, p2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 2946
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    new-array v3, v4, [F

    iget v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    aput v5, v3, v0

    aput v1, v3, p2

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2947
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    aput v3, v1, v0

    aput v2, v1, p2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2950
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2951
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2952
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bN:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2953
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bO:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    move v1, v3

    .line 2909
    :cond_5
    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aG:F

    if-eqz p1, :cond_6

    move v2, v3

    .line 2910
    :cond_6
    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aH:F

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    return p1
.end method

.method private e(II)Landroid/graphics/Shader;
    .locals 9

    .line 3181
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v4, p0, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method

.method static synthetic e(Lcom/oplus/camera/ui/control/MainShutterButton;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->C:F

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->k()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    return p1
.end method

.method static synthetic h(Lcom/oplus/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->y:I

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    return p1
.end method

.method static synthetic i(Lcom/oplus/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ay:I

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ao:I

    return p1
.end method

.method static synthetic j(Lcom/oplus/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    return-object p0
.end method

.method private k()V
    .locals 5

    .line 532
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->n:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/control/MainShutterButton;->s:I

    goto :goto_0

    .line 533
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    if-nez v0, :cond_1

    const-string v0, "com.oplus.ui.shutterbutton.type.lowlight"

    .line 534
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    sget v0, Lcom/oplus/camera/ui/control/MainShutterButton;->r:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    .line 537
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    .line 538
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    .line 540
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 541
    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 545
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 549
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    .line 553
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    .line 557
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bn:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 561
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    if-eqz v0, :cond_8

    .line 565
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    :cond_8
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 569
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 570
    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 572
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->br:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    sget v2, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(II)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 575
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    .line 576
    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 578
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    sget v2, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(II)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 581
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    if-eqz v0, :cond_b

    .line 582
    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    if-eqz v0, :cond_c

    .line 586
    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    if-eqz v0, :cond_d

    .line 590
    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/ui/control/MainShutterButton;->t:I

    sget v2, Lcom/oplus/camera/ui/control/MainShutterButton;->u:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(II)Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_d
    return-void
.end method

.method private l()V
    .locals 2

    .line 637
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 643
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 644
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 645
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 652
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/ui/control/MainShutterButton;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aQ:Z

    return p0
.end method

.method public static synthetic lambda$K6b3K5fIqeHI87OactLQ4tWRGNo(Lcom/oplus/camera/ui/control/MainShutterButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$kAPST3TKwqPRkOCehgR5ePHHd_M(Lcom/oplus/camera/ui/control/MainShutterButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    return-object p0
.end method

.method private m()V
    .locals 1

    .line 656
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 662
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 667
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 670
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->B()V

    return-void
.end method

.method private n()Z
    .locals 0

    .line 674
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    return p0
.end method

.method static synthetic o(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 1731
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setModeAppearing(Z)V

    .line 1733
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    if-nez v0, :cond_0

    .line 1734
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aB:F

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aB:F

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/ui/control/MainShutterButton;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    return p0
.end method

.method private p()V
    .locals 0

    .line 1744
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->q()V

    .line 1745
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->y()V

    .line 1746
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->z()V

    return-void
.end method

.method static synthetic q(Lcom/oplus/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    return p0
.end method

.method private q()V
    .locals 9

    .line 1750
    new-instance v0, Lcom/oplus/camera/ui/control/MainShutterButton$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton$1;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bv:Landroid/util/Property;

    .line 1763
    new-instance v0, Lcom/oplus/camera/ui/control/MainShutterButton$12;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton$12;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bw:Landroid/util/Property;

    const/4 v0, 0x2

    .line 1775
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    .line 1776
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oplus/camera/ui/control/MainShutterButton;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1777
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->H:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1778
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1779
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1780
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/control/MainShutterButton$23;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$23;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1787
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    .line 1788
    new-array v1, v0, [F

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    aput v4, v1, v5

    iget v6, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v6, v6

    aput v6, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1789
    sget-object v6, Lcom/oplus/camera/ui/control/MainShutterButton;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1790
    iget v6, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1791
    new-instance v6, Lcom/oplus/camera/ui/control/MainShutterButton$31;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$31;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1797
    new-instance v6, Lcom/oplus/camera/ui/control/MainShutterButton$32;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$32;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1804
    new-array v6, v0, [F

    iget v7, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v7, v7

    aput v7, v6, v5

    const/high16 v7, 0x43870000    # 270.0f

    aput v7, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1805
    sget-object v7, Lcom/oplus/camera/ui/control/MainShutterButton;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1806
    iget v7, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1807
    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1808
    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1809
    new-instance v3, Lcom/oplus/camera/ui/control/MainShutterButton$33;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$33;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1815
    new-instance v3, Lcom/oplus/camera/ui/control/MainShutterButton$34;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$34;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1827
    iget-object v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    new-array v7, v0, [Landroid/animation/Animator;

    aput-object v1, v7, v5

    aput-object v6, v7, v2

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1829
    new-array v1, v0, [F

    aput v4, v1, v5

    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    .line 1830
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oplus/camera/ui/control/MainShutterButton;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1831
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->I:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1832
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1833
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$35;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$35;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1840
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$36;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$36;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic r(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/RectF;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    return-object p0
.end method

.method private r()V
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2114
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2117
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method private s()V
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/oplus/camera/ui/control/MainShutterButton;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aP:Z

    return p0
.end method

.method private setButtonTypeAndInvalidate(I)V
    .locals 5

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonTypeAndInvalidate, buttonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->s()V

    .line 2044
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->t()V

    .line 2045
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    .line 2046
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    .line 2047
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonType(I)V

    .line 2049
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 2050
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2051
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 2052
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->r()V

    .line 2056
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v3, 0x3

    if-eq v3, p1, :cond_a

    const/16 v4, 0x1d

    if-eq v4, p1, :cond_a

    const/16 v4, 0x22

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    if-ne v2, p1, :cond_2

    if-ne v3, v0, :cond_2

    const-string p1, "button_color_ring_theme"

    .line 2060
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2061
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->E()V

    .line 2062
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto :goto_2

    :cond_2
    const/16 p1, 0x20

    .line 2063
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne p1, v1, :cond_3

    if-ne v2, v0, :cond_3

    .line 2064
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->F()V

    goto :goto_2

    .line 2065
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne v2, p1, :cond_4

    .line 2066
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto :goto_2

    :cond_4
    const/16 v0, 0xe

    if-ne v0, p1, :cond_5

    .line 2068
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x5

    if-ne v0, p1, :cond_6

    .line 2069
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v0, "button_shape_dial_rotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2070
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->d()V

    goto :goto_2

    :cond_6
    const/16 p1, 0x19

    .line 2071
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne p1, v0, :cond_7

    .line 2072
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->L()V

    goto :goto_2

    :cond_7
    const/16 p1, 0x1f

    if-eq p1, v0, :cond_9

    const/16 p1, 0x24

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 2076
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto :goto_2

    .line 2074
    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->G()V

    goto :goto_2

    .line 2057
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->D()V

    :goto_2
    return-void
.end method

.method private setModeAppearing(Z)V
    .locals 2

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setModeAppearing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    return-void
.end method

.method private t()V
    .locals 1

    .line 2127
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 2133
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2138
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private v()V
    .locals 1

    const/4 v0, 0x0

    .line 2201
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    .line 2202
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    .line 2203
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    .line 2204
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    .line 2205
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    .line 2206
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    .line 2207
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    return-void
.end method

.method private w()V
    .locals 1

    const/4 v0, 0x0

    .line 2211
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aS:Landroid/animation/ValueAnimator;

    .line 2212
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aR:Landroid/animation/AnimatorSet;

    .line 2213
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bv:Landroid/util/Property;

    .line 2214
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bw:Landroid/util/Property;

    .line 2215
    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    return-void
.end method

.method private x()V
    .locals 2

    .line 2219
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2221
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aV:Landroid/graphics/Bitmap;

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2226
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aW:Landroid/graphics/Bitmap;

    .line 2229
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2230
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2231
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aX:Landroid/graphics/Bitmap;

    .line 2234
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 2235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2236
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aY:Landroid/graphics/Bitmap;

    .line 2239
    :cond_3
    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aU:Landroid/graphics/Canvas;

    return-void
.end method

.method private y()V
    .locals 9

    .line 2260
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a85

    .line 2261
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    const v1, 0x7f070a86

    .line 2262
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    const v1, 0x7f070a87

    .line 2263
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    .line 2265
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->av:I

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->at:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ax:I

    .line 2266
    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ax:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 2267
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ar:I

    .line 2268
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ap:I

    sub-int v1, v2, v0

    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ar:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aq:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    .line 2269
    div-int/2addr v2, v0

    iput v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->as:I

    .line 2271
    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$2;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "dial"

    invoke-direct {v1, p0, v2, v3}, Lcom/oplus/camera/ui/control/MainShutterButton$2;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    .line 2283
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    .line 2284
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2285
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2286
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$3;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2321
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    .line 2322
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2323
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2324
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$4;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2331
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$5;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2347
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    .line 2348
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f2b851f    # 0.67f

    const/4 v5, 0x0

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v6, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2349
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0xb4

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2350
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$6;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2356
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$7;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$7;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2367
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v0, [Ljava/lang/Object;

    iget v7, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v2, v8

    iget v7, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v2, v8

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    .line 2368
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v6, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2369
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2370
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$8;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$8;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2376
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bD:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/-$$Lambda$MainShutterButton$kAPST3TKwqPRkOCehgR5ePHHd_M;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$MainShutterButton$kAPST3TKwqPRkOCehgR5ePHHd_M;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2380
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    .line 2381
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2382
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2383
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2384
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2385
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oplus/camera/ui/control/MainShutterButton$9;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$9;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2426
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bR:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oplus/camera/ui/control/MainShutterButton$10;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$10;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2438
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    new-array v3, v0, [I

    fill-array-data v3, :array_4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    .line 2439
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 2440
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2441
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2442
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2443
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/MainShutterButton$11;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$11;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2466
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bx:Landroid/util/Property;

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    .line 2467
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f1374bc    # 0.576f

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3ed78d50    # 0.421f

    const v5, 0x3f5a5e35    # 0.853f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2470
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bA:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/MainShutterButton$13;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$13;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x4d
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x78
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3c
    .end array-data
.end method

.method private z()V
    .locals 11

    .line 2500
    new-instance v0, Lcom/oplus/camera/ui/control/MainShutterButton$14;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/MainShutterButton$14;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x2

    .line 2529
    new-array v1, v0, [F

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    .line 2530
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f28f5c3    # 0.66f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2533
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2534
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2536
    new-array v0, v0, [F

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    int-to-float v1, v1

    aput v1, v0, v3

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v1, v1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    .line 2537
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2540
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2541
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bU:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2194
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->v()V

    .line 2195
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->w()V

    .line 2196
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->C()V

    .line 2197
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->x()V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonType, insideRectColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inSideColor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iput-object p2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 2172
    iput p3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    .line 2173
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonType(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 321
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    const-string v3, "button_shape_ring_none"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 325
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/b;)V
    .locals 4

    .line 2081
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    const-string v1, "MainShutterButton"

    if-nez v0, :cond_0

    const-string p0, "switchToModeType, null == currentButtonInfo"

    .line 2084
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2089
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToModeType, before shutterButtonType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", before insideColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", before ringShape: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> after shutterButtonType: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", after insideColor: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", after ringShape: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2243
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2244
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2245
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    .line 2248
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_1

    .line 2249
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/b;)Z
    .locals 2

    .line 2099
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne v0, v1, :cond_0

    .line 2100
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->d()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2559
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->A()V

    .line 2562
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bI:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    .line 2563
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    .line 2617
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    .line 2618
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "MainShutterButton"

    const-string v1, "pauseFastVideoDialAnimator"

    .line 2690
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 2702
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2703
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 2708
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 2712
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2713
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bC:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    return-void
.end method

.method public getButtonType()I
    .locals 0

    .line 2177
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    return p0
.end method

.method public getCurrentGlobalAngle()F
    .locals 0

    .line 1883
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    return p0
.end method

.method public getCurrentSweepAngle()F
    .locals 0

    .line 1895
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    return p0
.end method

.method public getDialValue()I
    .locals 0

    .line 2604
    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    return p0
.end method

.method public getInsideColor()Ljava/lang/String;
    .locals 0

    .line 2181
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    return-object p0
.end method

.method public getRingShape()Ljava/lang/String;
    .locals 0

    .line 2185
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 2

    .line 2189
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getShutterPadding()I
    .locals 1

    .line 3177
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public h()V
    .locals 2

    const-string v0, "MainShutterButton"

    const-string v1, "resumeFastVideoDialAnimator"

    .line 2718
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bz:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    .line 2721
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow, mButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 1911
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    .line 1914
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDetachedFromWindow, mButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 1922
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->m()V

    .line 1925
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 679
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->a:I

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->c:I

    const/16 v8, 0x168

    if-eq v1, v2, :cond_3

    .line 680
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 682
    iget-wide v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->g:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 683
    iget-wide v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->f:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 684
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->b:I

    iget-boolean v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->d:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v2, v1

    if-ltz v2, :cond_1

    .line 685
    rem-int/2addr v2, v8

    goto :goto_1

    .line 686
    :cond_1
    rem-int/2addr v2, v8

    add-int/2addr v2, v8

    .line 687
    :goto_1
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->a:I

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto :goto_2

    .line 690
    :cond_2
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->c:I

    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->a:I

    .line 694
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    const/4 v9, 0x2

    if-nez v1, :cond_4

    .line 695
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v9

    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bb:Landroid/graphics/RectF;

    .line 700
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bc:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    .line 701
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v9

    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bc:Landroid/graphics/RectF;

    .line 706
    :cond_5
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    if-nez v1, :cond_6

    .line 707
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v3, v9

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v9

    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v5, v9

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v6, v9

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    .line 711
    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v1, :cond_7

    .line 712
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v9

    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    .line 718
    :cond_7
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    if-nez v1, :cond_8

    .line 719
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->au:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 720
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    .line 721
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 722
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 723
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 724
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->be:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 727
    :cond_8
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 728
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    .line 731
    :cond_9
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v11, 0x1

    if-ne v11, v1, :cond_a

    .line 732
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1e

    :cond_a
    const/4 v3, 0x3

    const/16 v12, 0xff

    if-ne v9, v1, :cond_e

    .line 734
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 736
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_b

    .line 737
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 738
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_3

    :cond_b
    if-ne v11, v1, :cond_c

    .line 740
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 741
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_3

    :cond_c
    if-ne v3, v1, :cond_d

    .line 743
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 744
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_3

    .line 746
    :cond_d
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 747
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 750
    :goto_3
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_e
    const/4 v13, 0x0

    if-ne v3, v1, :cond_14

    .line 752
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ay:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 753
    invoke-direct {v0, v7, v13}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 755
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    const-string v2, "button_color_ring_default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 756
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->al:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 757
    :cond_f
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    const-string v2, "button_color_ring_theme"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 758
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->am:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    :cond_10
    :goto_4
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 762
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 764
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_11

    .line 765
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 766
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_5

    :cond_11
    if-ne v11, v1, :cond_12

    .line 768
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 769
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_5

    :cond_12
    if-ne v9, v1, :cond_13

    .line 771
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 772
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_5

    .line 774
    :cond_13
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 775
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 778
    :goto_5
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_14
    const/4 v4, 0x4

    if-eq v4, v1, :cond_6c

    const/16 v4, 0x20

    if-ne v4, v1, :cond_15

    goto/16 :goto_1d

    :cond_15
    const/4 v4, 0x5

    const-string v14, "button_shape_ring_none"

    const/16 v15, 0x8

    const/high16 v16, 0x41000000    # 8.0f

    if-ne v4, v1, :cond_1c

    .line 797
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 798
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v4, v2

    int-to-float v2, v2

    iget-object v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 800
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v2, "button_color_inside_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 804
    :cond_16
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    goto :goto_6

    :cond_17
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 806
    :goto_6
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v2, v9

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 807
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float v4, v4, v16

    div-float v2, v2, v16

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v8, v10

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v10

    div-int/2addr v10, v9

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v14, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v3, v14

    mul-float/2addr v3, v2

    sub-float/2addr v10, v3

    int-to-float v1, v1

    int-to-float v2, v14

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 815
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v6, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 819
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v3, "button_color_inside_grey"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 820
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 821
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    :cond_18
    move v2, v13

    goto :goto_7

    .line 823
    :cond_19
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v3, "button_color_inside_red"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 824
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 825
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    move v2, v11

    goto :goto_7

    .line 827
    :cond_1a
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v3, "button_color_inside_hasselblad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 828
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 829
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    const/4 v2, 0x3

    .line 833
    :goto_7
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 835
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_1b

    add-int/2addr v1, v11

    .line 836
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    .line 839
    :cond_1b
    iput v13, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const-string v1, "button_color_inside_none"

    .line 840
    invoke-virtual {v0, v9, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;I)V

    goto/16 :goto_1e

    :cond_1c
    const/16 v3, 0x11

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v6, 0x437f0000    # 255.0f

    if-ne v1, v3, :cond_1f

    .line 843
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 844
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 846
    iget-boolean v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    if-eqz v1, :cond_1d

    .line 847
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0708fe

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f06006a

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 847
    invoke-virtual {v1, v3, v2, v2, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_8

    .line 850
    :cond_1d
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f060567

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 850
    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 854
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 855
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 856
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    .line 857
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    sub-float/2addr v1, v2

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v3, v8

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    iget v14, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v14, v14

    sub-float/2addr v9, v14

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    iget v15, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v10

    iget v12, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v12, v12

    add-float/2addr v15, v12

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v10, v10

    add-float/2addr v12, v10

    const/high16 v10, -0x3c810000    # -255.0f

    .line 869
    iget v13, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float/2addr v10, v13

    add-float/2addr v10, v6

    sub-float/2addr v9, v1

    mul-float/2addr v9, v13

    add-float/2addr v1, v9

    sub-float/2addr v14, v2

    mul-float/2addr v14, v13

    add-float/2addr v2, v14

    sub-float/2addr v15, v3

    mul-float/2addr v15, v13

    add-float/2addr v3, v15

    sub-float/2addr v12, v8

    mul-float/2addr v12, v13

    add-float/2addr v8, v12

    .line 876
    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v6, v1, v2, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 877
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 879
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    float-to-int v2, v10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    int-to-float v2, v1

    .line 884
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    int-to-float v3, v3

    .line 885
    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    int-to-float v8, v6

    .line 886
    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    int-to-float v9, v9

    .line 887
    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    int-to-float v12, v10

    .line 888
    iget v13, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    int-to-float v13, v13

    sub-int/2addr v6, v1

    int-to-float v6, v6

    sub-int/2addr v10, v1

    int-to-float v1, v10

    div-float/2addr v6, v1

    .line 891
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float/2addr v1, v4

    sub-float/2addr v5, v1

    sub-float v1, v12, v2

    sub-float v4, v9, v13

    .line 895
    invoke-direct {v0, v2, v5, v1, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v2

    const/4 v10, 0x0

    .line 896
    invoke-direct {v0, v3, v5, v4, v10}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v3

    .line 897
    invoke-direct {v0, v8, v5, v1, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v8

    .line 898
    invoke-direct {v0, v9, v5, v4, v10}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v9

    .line 899
    invoke-direct {v0, v12, v5, v1, v10}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v1

    .line 900
    invoke-direct {v0, v13, v5, v4, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v4

    .line 902
    iget-object v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 904
    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    cmpg-float v11, v10, v6

    if-gez v11, :cond_1e

    sub-float/2addr v8, v2

    div-float v1, v10, v6

    mul-float/2addr v8, v1

    add-float/2addr v8, v2

    sub-float/2addr v9, v3

    div-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v3

    .line 907
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 908
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9

    :cond_1e
    sub-float/2addr v1, v2

    mul-float/2addr v1, v10

    add-float/2addr v1, v2

    sub-float v4, v9, v4

    sub-float/2addr v10, v6

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v6

    div-float/2addr v10, v11

    mul-float/2addr v4, v10

    sub-float v4, v9, v4

    .line 912
    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 913
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 914
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 917
    :goto_9
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 918
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 919
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1e

    :cond_1f
    const/16 v3, 0x15

    if-ne v3, v1, :cond_20

    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 923
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 924
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 925
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 926
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    int-to-float v2, v2

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 927
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    int-to-float v2, v2

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 928
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    int-to-float v2, v2

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 930
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 931
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 932
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 933
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1e

    :cond_20
    const/16 v3, 0x14

    if-ne v3, v1, :cond_21

    .line 935
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 936
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 938
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    int-to-float v2, v1

    .line 939
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    int-to-float v4, v3

    .line 940
    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v3

    .line 941
    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    int-to-float v8, v6

    div-float/2addr v8, v10

    add-float/2addr v5, v8

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 945
    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 946
    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 947
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 948
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 949
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 950
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_21
    const/16 v3, 0x12

    const v12, 0x3e99999a    # 0.3f

    if-ne v3, v1, :cond_22

    .line 952
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 953
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v1, 0x3f333333    # 0.7f

    .line 960
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float v4, v6, v3

    add-float/2addr v4, v2

    mul-float/2addr v3, v12

    add-float/2addr v3, v1

    .line 963
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    sub-float/2addr v2, v1

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v3, v1

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    add-float/2addr v5, v1

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v8, v1

    .line 968
    iget-object v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v9, v2, v3, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 969
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 970
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 971
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 973
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 975
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    int-to-float v2, v1

    .line 976
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    int-to-float v4, v3

    .line 977
    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v3

    .line 978
    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    int-to-float v9, v8

    div-float/2addr v9, v10

    add-float/2addr v5, v9

    add-int/2addr v3, v8

    int-to-float v3, v3

    const/high16 v8, 0x3f800000    # 1.0f

    .line 982
    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float/2addr v12, v9

    sub-float/2addr v8, v12

    mul-float/2addr v9, v6

    sub-float/2addr v6, v9

    sub-float v9, v1, v2

    sub-float v10, v3, v4

    .line 987
    invoke-direct {v0, v2, v8, v9, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v12

    .line 988
    invoke-direct {v0, v4, v8, v10, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v4

    const/4 v13, 0x0

    .line 989
    invoke-direct {v0, v1, v8, v9, v13}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v1

    .line 991
    invoke-direct {v0, v2, v8, v9, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v2

    .line 992
    invoke-direct {v0, v3, v8, v10, v13}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v3

    .line 994
    iget-object v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v9, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 995
    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 996
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 997
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 998
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 999
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_22
    const/16 v3, 0x13

    if-ne v3, v1, :cond_23

    .line 1001
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1002
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v1, 0x3f333333    # 0.7f

    .line 1009
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float v4, v6, v3

    add-float/2addr v4, v2

    mul-float/2addr v3, v12

    add-float/2addr v3, v1

    .line 1012
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    sub-float/2addr v2, v1

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v3, v1

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    add-float/2addr v5, v1

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v8, v1

    .line 1017
    iget-object v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v9, v2, v3, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1018
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1019
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1020
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1022
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1024
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ae:I

    int-to-float v1, v1

    .line 1025
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->af:I

    int-to-float v2, v2

    .line 1026
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ag:I

    int-to-float v3, v3

    .line 1027
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ah:I

    int-to-float v4, v4

    .line 1028
    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ai:I

    int-to-float v5, v5

    .line 1029
    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aj:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1031
    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float/2addr v12, v10

    sub-float/2addr v9, v12

    mul-float/2addr v10, v6

    sub-float/2addr v6, v10

    sub-float v10, v5, v1

    sub-float v12, v4, v8

    .line 1036
    invoke-direct {v0, v1, v9, v10, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v1

    const/4 v13, 0x0

    .line 1037
    invoke-direct {v0, v2, v9, v12, v13}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v2

    .line 1038
    invoke-direct {v0, v3, v9, v10, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v3

    .line 1039
    invoke-direct {v0, v4, v9, v12, v13}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v4

    .line 1040
    invoke-direct {v0, v5, v9, v10, v13}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v5

    .line 1041
    invoke-direct {v0, v8, v9, v12, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(FFFZ)F

    move-result v8

    .line 1043
    iget-object v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1044
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1045
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1046
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1047
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1048
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_23
    const/16 v2, 0x10

    if-ne v1, v2, :cond_25

    .line 1050
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1051
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1053
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v1, v1

    .line 1054
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v2, v2

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v3, v8

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    iget v11, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v9, v11

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    iget v12, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    iget v13, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    iget v14, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    iget v15, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v10

    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    int-to-float v4, v4

    add-float/2addr v15, v4

    const/high16 v4, -0x3c810000    # -255.0f

    .line 1066
    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v6

    sub-float/2addr v2, v1

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    sub-float/2addr v12, v3

    mul-float/2addr v12, v10

    add-float/2addr v3, v12

    sub-float/2addr v13, v8

    mul-float/2addr v13, v10

    add-float/2addr v8, v13

    sub-float/2addr v14, v9

    mul-float/2addr v14, v10

    add-float/2addr v9, v14

    sub-float/2addr v15, v11

    mul-float/2addr v15, v10

    add-float/2addr v11, v15

    .line 1073
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v8, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1074
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1076
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1077
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1078
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->R:I

    int-to-float v2, v1

    mul-float/2addr v2, v5

    .line 1079
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->S:I

    int-to-float v4, v3

    mul-float/2addr v4, v5

    int-to-float v6, v1

    int-to-float v8, v3

    sub-float/2addr v6, v2

    .line 1083
    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    mul-float/2addr v6, v9

    add-float/2addr v2, v6

    sub-float/2addr v8, v4

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 1086
    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->T:I

    int-to-float v8, v6

    int-to-float v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    div-float/2addr v2, v10

    sub-float/2addr v8, v2

    .line 1087
    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->U:I

    int-to-float v11, v9

    int-to-float v12, v3

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    div-float/2addr v4, v10

    sub-float/2addr v11, v4

    int-to-float v6, v6

    int-to-float v1, v1

    div-float/2addr v1, v10

    add-float/2addr v6, v1

    add-float/2addr v6, v2

    int-to-float v1, v9

    int-to-float v2, v3

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    int-to-float v2, v9

    int-to-float v3, v3

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 1096
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 1098
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v9, v3, v4

    if-gtz v9, :cond_24

    sub-float/2addr v6, v8

    mul-float/2addr v6, v3

    mul-float/2addr v6, v10

    add-float/2addr v6, v8

    sub-float/2addr v2, v11

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    .line 1101
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1102
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a

    :cond_24
    sub-float v4, v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float v10, v3, v9

    mul-float/2addr v4, v10

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v4, v9

    add-float/2addr v4, v6

    sub-float/2addr v2, v11

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    .line 1106
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1107
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1108
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1111
    :goto_a
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aF:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v5, v1

    .line 1112
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->Q:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1113
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1114
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bV:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bp:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_25
    const/4 v2, 0x6

    if-ne v2, v1, :cond_2c

    .line 1116
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1118
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    goto :goto_b

    :cond_26
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 1120
    :goto_b
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v2, v9

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 1121
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    div-float v2, v2, v16

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    sub-int/2addr v6, v5

    int-to-float v6, v6

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    add-int/2addr v8, v5

    int-to-float v8, v8

    iget v10, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v10

    div-int/2addr v10, v9

    add-int/2addr v10, v5

    int-to-float v5, v10

    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    int-to-float v10, v9

    mul-float/2addr v10, v2

    add-float/2addr v5, v10

    int-to-float v1, v1

    int-to-float v2, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1129
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v6, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1133
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v2, :cond_27

    .line 1134
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1135
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    const-string v2, "button_color_inside_grey"

    goto :goto_c

    :cond_27
    const/16 v3, 0xff

    if-ne v11, v2, :cond_28

    .line 1138
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1139
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    const-string v2, "button_color_inside_red"

    goto :goto_c

    :cond_28
    const/4 v4, 0x3

    if-ne v4, v2, :cond_29

    .line 1142
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1143
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    const-string v2, "button_color_inside_hasselblad"

    goto :goto_c

    .line 1146
    :cond_29
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1147
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    const-string v2, "button_color_inside_none"

    .line 1150
    :goto_c
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1152
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    if-ge v1, v15, :cond_2a

    add-int/2addr v1, v11

    .line 1153
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_2a
    const/4 v1, 0x0

    .line 1156
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 1157
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    const/4 v3, 0x3

    if-ne v3, v1, :cond_2b

    const/16 v1, 0x17

    .line 1158
    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;)V

    goto/16 :goto_1e

    .line 1160
    :cond_2b
    invoke-direct {v0, v11, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;)V

    goto/16 :goto_1e

    :cond_2c
    const/4 v2, 0x7

    if-ne v2, v1, :cond_30

    .line 1163
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1165
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 1166
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    .line 1167
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 1173
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1181
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_2d

    .line 1182
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1183
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_d

    :cond_2d
    const/16 v3, 0xff

    if-ne v11, v1, :cond_2e

    .line 1185
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1186
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_d

    .line 1188
    :cond_2e
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1189
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1192
    :goto_d
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1194
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_2f

    add-int/2addr v1, v11

    .line 1195
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_2f
    const/4 v1, 0x0

    .line 1198
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/4 v1, 0x3

    .line 1199
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_30
    if-ne v15, v1, :cond_35

    .line 1202
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1204
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v2, v1

    div-float v2, v2, v16

    int-to-float v1, v1

    .line 1205
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    int-to-float v4, v3

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 1206
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v4, v2

    div-float v4, v4, v16

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v4, v1

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    int-to-float v5, v5

    add-float/2addr v5, v1

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v1

    .line 1212
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1216
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v3, "button_color_inside_grey"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1217
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1218
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bk:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    :cond_31
    const/4 v1, 0x0

    goto :goto_e

    .line 1220
    :cond_32
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v3, "button_color_inside_red"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1221
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1222
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    move v1, v11

    goto :goto_e

    :cond_33
    const/16 v3, 0xff

    .line 1224
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    const-string v4, "button_color_inside_hasselblad"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1225
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1226
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    const/4 v1, 0x3

    .line 1230
    :goto_e
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1232
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    if-ge v2, v15, :cond_34

    add-int/2addr v2, v11

    .line 1233
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_34
    const/4 v2, 0x0

    .line 1236
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    const/4 v2, 0x4

    .line 1237
    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(II)V

    goto/16 :goto_1e

    :cond_35
    const/16 v2, 0x9

    if-ne v2, v1, :cond_38

    .line 1240
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1242
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_36

    .line 1243
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1244
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_f

    :cond_36
    const/16 v2, 0xff

    if-ne v11, v1, :cond_37

    .line 1246
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1247
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_f

    .line 1249
    :cond_37
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1250
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1253
    :goto_f
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_38
    const/16 v2, 0xa

    if-ne v2, v1, :cond_3c

    .line 1255
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1256
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1258
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 1259
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    .line 1260
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 1266
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1268
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_39

    .line 1269
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1270
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_10

    :cond_39
    const/16 v3, 0xff

    if-ne v11, v1, :cond_3a

    .line 1272
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1273
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_10

    .line 1275
    :cond_3a
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1276
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1279
    :goto_10
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1281
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_3b

    add-int/2addr v1, v11

    .line 1282
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_3b
    const/4 v1, 0x0

    .line 1285
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/16 v1, 0x9

    .line 1286
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_3c
    const/16 v2, 0x16

    if-ne v2, v1, :cond_41

    .line 1289
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1290
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1292
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    goto :goto_11

    :cond_3d
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 1293
    :goto_11
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v2, v9

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 1294
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    div-float v2, v2, v16

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v9

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v9

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v10, v9

    mul-float/2addr v10, v2

    sub-float/2addr v8, v10

    int-to-float v1, v1

    int-to-float v2, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1302
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1304
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v2, :cond_3e

    .line 1305
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1306
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_12

    :cond_3e
    const/16 v3, 0xff

    if-ne v11, v2, :cond_3f

    .line 1308
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1309
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_12

    .line 1311
    :cond_3f
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1312
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1315
    :goto_12
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1317
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_40

    add-int/2addr v1, v11

    .line 1318
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_40
    const/4 v1, 0x0

    .line 1321
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/4 v1, 0x3

    .line 1322
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_41
    const/16 v2, 0xb

    if-ne v2, v1, :cond_45

    .line 1325
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1327
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v2, v1

    div-float v2, v2, v16

    int-to-float v1, v1

    .line 1328
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    int-to-float v4, v3

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 1329
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v4, v2

    div-float v4, v4, v16

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v4, v1

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    int-to-float v5, v5

    add-float/2addr v5, v1

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v1

    .line 1335
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1337
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_42

    .line 1338
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1339
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_13

    :cond_42
    const/16 v3, 0xff

    if-ne v11, v1, :cond_43

    .line 1341
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1342
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_13

    .line 1344
    :cond_43
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1345
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1348
    :goto_13
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1350
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    if-ge v1, v15, :cond_44

    add-int/2addr v1, v11

    .line 1351
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_44
    const/4 v1, 0x0

    .line 1354
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    .line 1355
    invoke-direct {v0, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_45
    const/16 v2, 0xc

    if-ne v2, v1, :cond_48

    .line 1358
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1359
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1360
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1361
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1363
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_46

    .line 1364
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1365
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_14

    :cond_46
    const/16 v2, 0xff

    if-ne v11, v1, :cond_47

    .line 1367
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1368
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_14

    .line 1370
    :cond_47
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1371
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1374
    :goto_14
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1376
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    if-lt v1, v8, :cond_6d

    const/4 v2, 0x0

    .line 1377
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    const/16 v1, 0xb

    .line 1378
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_48
    const/4 v2, 0x0

    const/16 v3, 0xd

    if-ne v3, v1, :cond_4a

    .line 1381
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1382
    invoke-direct {v0, v7, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1383
    iput v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    .line 1385
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_49

    add-int/2addr v1, v11

    .line 1386
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    .line 1389
    :cond_49
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/4 v1, 0x3

    .line 1390
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_4a
    const/16 v3, 0xe

    if-ne v3, v1, :cond_4d

    .line 1393
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1394
    invoke-direct {v0, v7, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1395
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aB:F

    sub-float/2addr v1, v2

    .line 1396
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    .line 1398
    iget-boolean v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aM:Z

    if-eqz v3, :cond_4b

    .line 1399
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 1401
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aE:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4c

    sub-float/2addr v3, v4

    goto :goto_15

    :cond_4b
    add-float/2addr v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v2

    .line 1406
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->J:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1408
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aE:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4c

    sub-float/2addr v1, v4

    add-float/2addr v3, v4

    :cond_4c
    :goto_15
    move v4, v3

    move v3, v1

    .line 1414
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1415
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1416
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_4d
    const/16 v2, 0xf

    if-ne v2, v1, :cond_51

    .line 1418
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1419
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 1420
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    .line 1421
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 1427
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1429
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_4e

    .line 1430
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1431
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_16

    :cond_4e
    const/16 v3, 0xff

    if-ne v11, v1, :cond_4f

    .line 1433
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1434
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_16

    .line 1436
    :cond_4f
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1437
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1440
    :goto_16
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1442
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_50

    add-int/2addr v1, v11

    .line 1443
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_50
    const/4 v1, 0x0

    .line 1446
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/4 v1, 0x3

    .line 1447
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_51
    const/16 v2, 0x17

    if-ne v2, v1, :cond_52

    .line 1450
    invoke-direct {v0, v7, v11, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;ZZ)V

    goto/16 :goto_1e

    :cond_52
    const/16 v2, 0x18

    if-ne v2, v1, :cond_55

    .line 1452
    invoke-direct {v0, v7, v11, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;ZZ)V

    .line 1454
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_53

    .line 1455
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1456
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_17

    :cond_53
    const/16 v2, 0xff

    if-ne v11, v1, :cond_54

    .line 1458
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1459
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_17

    .line 1461
    :cond_54
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1462
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    :goto_17
    const-string v1, "button_shape_countdown_cancel"

    .line 1465
    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    goto/16 :goto_1e

    :cond_55
    const/16 v2, 0x19

    if-ne v2, v1, :cond_56

    .line 1467
    new-instance v2, Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1468
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->C:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1469
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    .line 1470
    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_56
    const/16 v2, 0x1a

    if-ne v2, v1, :cond_57

    .line 1472
    new-instance v2, Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1473
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->C:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1474
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    .line 1475
    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bs:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_57
    const/16 v2, 0x1b

    if-ne v2, v1, :cond_59

    const/4 v2, 0x0

    .line 1477
    invoke-direct {v0, v7, v2, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;ZZ)V

    .line 1478
    iput v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    .line 1480
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_58

    add-int/2addr v1, v11

    .line 1481
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    .line 1484
    :cond_58
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1485
    iput-boolean v11, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aP:Z

    const/16 v1, 0x19

    .line 1486
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_59
    const/16 v2, 0x1c

    if-ne v2, v1, :cond_5a

    .line 1489
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1490
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    .line 1491
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    sub-float v3, v2, v1

    .line 1493
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_5a
    const/16 v2, 0x1d

    if-ne v2, v1, :cond_5b

    .line 1495
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1496
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_5b
    const/16 v2, 0x1e

    if-ne v2, v1, :cond_5f

    .line 1498
    invoke-direct {v0, v7, v11}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1500
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 1501
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    .line 1502
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 1504
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v9

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 1508
    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1516
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_5c

    .line 1517
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1518
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_18

    :cond_5c
    const/16 v3, 0xff

    if-ne v11, v1, :cond_5d

    .line 1520
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1521
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_18

    .line 1523
    :cond_5d
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1524
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1527
    :goto_18
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1529
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_5e

    add-int/2addr v1, v11

    .line 1530
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_5e
    const/4 v2, 0x0

    .line 1533
    iput v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/16 v1, 0x1f

    .line 1534
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_5f
    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-ne v3, v1, :cond_63

    .line 1538
    invoke-direct {v0, v7, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 1540
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1541
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1543
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    if-nez v1, :cond_60

    .line 1544
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1545
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_19

    :cond_60
    const/16 v2, 0xff

    if-ne v11, v1, :cond_61

    .line 1547
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1548
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bj:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_19

    :cond_61
    if-ne v9, v1, :cond_62

    .line 1550
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1551
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    goto :goto_19

    .line 1553
    :cond_62
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1554
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bi:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1557
    :goto_19
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_63
    const/16 v2, 0x21

    if-ne v2, v1, :cond_66

    .line 1559
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1561
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    goto :goto_1a

    :cond_64
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 1562
    :goto_1a
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v2, v9

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 1563
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    div-float v2, v2, v16

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 1568
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v9

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v9

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v10, v9

    mul-float/2addr v10, v2

    sub-float/2addr v8, v10

    int-to-float v1, v1

    int-to-float v2, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1571
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1572
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1573
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1574
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1576
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_65

    add-int/2addr v1, v11

    .line 1577
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_65
    const/4 v1, 0x0

    .line 1580
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/16 v1, 0x22

    .line 1581
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_66
    const/16 v2, 0x22

    if-ne v2, v1, :cond_67

    .line 1584
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1585
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1586
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1e

    :cond_67
    const/16 v2, 0x23

    if-ne v2, v1, :cond_6a

    .line 1588
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1590
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->A:I

    goto :goto_1b

    :cond_68
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->B:I

    .line 1591
    :goto_1b
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->D:I

    div-int/2addr v2, v9

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 1592
    iget v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    div-float v2, v2, v16

    .line 1595
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v9

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v8, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v9

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v9, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    int-to-float v10, v9

    mul-float/2addr v10, v2

    sub-float/2addr v8, v10

    int-to-float v1, v1

    int-to-float v2, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1600
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1601
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1602
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bl:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    .line 1603
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bg:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1605
    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    if-ge v1, v15, :cond_69

    add-int/2addr v1, v11

    .line 1606
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    .line 1607
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_1e

    :cond_69
    const/4 v1, 0x0

    .line 1609
    iput v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->F:I

    const/16 v1, 0x24

    .line 1610
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_1e

    :cond_6a
    const/16 v2, 0x24

    if-ne v2, v1, :cond_6d

    .line 1614
    iget-boolean v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aQ:Z

    if-eqz v1, :cond_6b

    .line 1615
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1616
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    sub-int/2addr v1, v8

    int-to-float v4, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 1618
    :cond_6b
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bt:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1619
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->K:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bu:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1622
    :goto_1c
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bf:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->E:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bo:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 780
    :cond_6c
    :goto_1d
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bm:Landroid/graphics/Paint;

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    .line 781
    invoke-direct {v0, v7, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 783
    iget v4, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    .line 784
    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    sub-float v3, v2, v1

    .line 793
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->O:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 794
    iget-object v1, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->az:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 795
    iget-object v2, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bd:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/control/MainShutterButton;->bh:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1625
    :cond_6d
    :goto_1e
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setButtonType(I)V
    .locals 2

    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    .line 2147
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne v1, p1, :cond_0

    .line 2148
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    .line 2151
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    if-eqz p1, :cond_1

    .line 2152
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->G:I

    :cond_1
    return-void
.end method

.method public setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V
    .locals 10

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonTypeAndInvalidate, mShutterButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInfoInsideColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRingShape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInfoInsideRectColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbMoreModeShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    .line 1929
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 1936
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->by:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1941
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    .line 1942
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1947
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    .line 1948
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1949
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aT:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1952
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->s()V

    .line 1953
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->t()V

    .line 1955
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    .line 1956
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 1957
    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    .line 1958
    iget-boolean v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    .line 1959
    iget-object v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    .line 1960
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->g()Z

    move-result v5

    iput-boolean v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aO:Z

    .line 1961
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 1962
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    .line 1963
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aK:Ljava/lang/String;

    .line 1964
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->e()I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aw:I

    .line 1965
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->a()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonType(I)V

    .line 1966
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->i()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/control/MainShutterButton;->setNextButtonType(I)V

    .line 1968
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->g()Z

    move-result v5

    if-eq v3, v5, :cond_3

    .line 1969
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->k()V

    .line 1972
    :cond_3
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    .line 1973
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1974
    iput-boolean v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aL:Z

    .line 1975
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->r()V

    .line 1979
    :cond_4
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->f()Z

    move-result v3

    const-string v7, "button_color_inside_red"

    if-eqz v3, :cond_6

    .line 1980
    iget-object v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1981
    iput v5, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    .line 1984
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->c()V

    goto :goto_0

    :cond_6
    const/16 v3, 0xff

    .line 1986
    iput v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->an:I

    .line 1989
    :goto_0
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const/4 v8, 0x3

    if-eq v8, v3, :cond_19

    const/16 v9, 0x1d

    if-eq v9, v3, :cond_19

    const/16 v9, 0x22

    if-ne v9, v3, :cond_7

    goto/16 :goto_3

    :cond_7
    if-ne v6, v3, :cond_8

    if-ne v8, v0, :cond_8

    const-string v3, "button_color_ring_theme"

    .line 1993
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1994
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->E()V

    .line 1995
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto/16 :goto_4

    :cond_8
    const/16 v3, 0x20

    .line 1996
    iget v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne v3, v4, :cond_9

    if-ne v6, v0, :cond_9

    .line 1997
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->F()V

    goto/16 :goto_4

    .line 1998
    :cond_9
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne v6, v3, :cond_a

    .line 1999
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto/16 :goto_4

    :cond_a
    const/16 v4, 0xe

    if-ne v4, v3, :cond_b

    .line 2001
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x5

    if-ne v4, v3, :cond_c

    .line 2002
    iget-object v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    const-string v4, "button_shape_dial_rotate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2003
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->d()V

    goto/16 :goto_4

    :cond_c
    const/16 v3, 0x10

    .line 2004
    iget v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne v3, v4, :cond_d

    .line 2005
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->H()V

    goto/16 :goto_4

    :cond_d
    const/16 v3, 0x11

    if-ne v3, v4, :cond_e

    .line 2007
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->K()V

    goto/16 :goto_4

    :cond_e
    const/16 v3, 0x12

    if-ne v3, v4, :cond_f

    .line 2009
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->I()V

    goto/16 :goto_4

    :cond_f
    const/16 v3, 0x13

    if-ne v3, v4, :cond_10

    .line 2011
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->J()V

    goto/16 :goto_4

    :cond_10
    const/16 v3, 0x19

    if-ne v3, v4, :cond_11

    .line 2013
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->L()V

    goto :goto_4

    :cond_11
    const/16 v3, 0x1a

    if-ne v3, v4, :cond_12

    if-eq v0, v4, :cond_12

    .line 2015
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->M()V

    goto :goto_4

    :cond_12
    const/16 v0, 0x1c

    .line 2016
    iget v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-ne v0, v3, :cond_13

    .line 2017
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l()V

    goto :goto_4

    :cond_13
    const/4 v0, 0x1

    if-eq v0, v3, :cond_14

    const/16 v4, 0x17

    if-ne v4, v3, :cond_16

    :cond_14
    if-eqz v1, :cond_16

    .line 2018
    iget-object v3, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    .line 2019
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2020
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aI:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2021
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/b;->h()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "button_shape_ring_none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aJ:Ljava/lang/String;

    .line 2022
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_1

    :cond_15
    move v0, v5

    .line 2020
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(ZZ)V

    goto :goto_4

    :cond_16
    const/16 p1, 0x1f

    .line 2023
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    if-eq p1, v0, :cond_18

    const/16 p1, 0x24

    if-ne p1, v0, :cond_17

    goto :goto_2

    .line 2026
    :cond_17
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    goto :goto_4

    .line 2024
    :cond_18
    :goto_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->G()V

    goto :goto_4

    .line 1990
    :cond_19
    :goto_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->D()V

    :goto_4
    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0

    .line 1887
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aC:F

    .line 1891
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0

    .line 1902
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aD:F

    .line 1903
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setDialValue(I)V
    .locals 0

    .line 2612
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->M:I

    .line 2613
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 1

    .line 515
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->n:Z

    .line 516
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->k()V

    .line 517
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->refreshDrawableState()V

    .line 518
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->x()V

    .line 520
    new-instance v0, Lcom/oplus/camera/ui/control/-$$Lambda$MainShutterButton$K6b3K5fIqeHI87OactLQ4tWRGNo;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/control/-$$Lambda$MainShutterButton$K6b3K5fIqeHI87OactLQ4tWRGNo;-><init>(Lcom/oplus/camera/ui/control/MainShutterButton;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNextButtonType(I)V
    .locals 0

    .line 2157
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->y:I

    return-void
.end method

.method public setPressed(Z)V
    .locals 6

    .line 604
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 611
    :goto_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setPressed(Z)V

    if-eqz v0, :cond_5

    .line 614
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->u()V

    .line 616
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    .line 617
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    iget v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p1, v4

    .line 619
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 620
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    int-to-float v3, v2

    sub-float/2addr v3, p1

    mul-float/2addr v3, v0

    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr v3, p1

    float-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 622
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bE:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 624
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->aA:F

    iget v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    goto :goto_2

    :cond_4
    int-to-float p1, v4

    .line 626
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 627
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->z:I

    int-to-float v3, v2

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->N:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 629
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->bF:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 632
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    :cond_5
    return-void

    :cond_6
    :goto_4
    const-string p0, "MainShutterButton"

    const-string p1, "setPressed, return because Animator is null"

    .line 605
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShutterButtonProgress(F)V
    .locals 3

    .line 2730
    iget v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    const-string v1, "MainShutterButton"

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 2731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShutterButtonProgress, button type is error, mButtonType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->x:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2736
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterButtonProgress, progress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 2738
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    .line 2740
    iget p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    .line 2741
    iput v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->ak:I

    .line 2744
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setShutterButtonTime(I)V
    .locals 0

    .line 2726
    iput p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton;->L:I

    return-void
.end method

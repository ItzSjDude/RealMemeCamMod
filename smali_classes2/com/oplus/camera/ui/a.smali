.class public Lcom/oplus/camera/ui/a;
.super Ljava/lang/Object;
.source "BackgroundSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/a$a;,
        Lcom/oplus/camera/ui/a$b;,
        Lcom/oplus/camera/ui/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/ui/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/ui/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Lcom/oplus/camera/ui/a$c;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->d:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->e:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->f:Lcom/oplus/camera/ui/a$c;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->h:Landroid/graphics/Paint;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/a;)Lcom/oplus/camera/ui/a$c;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->f:Lcom/oplus/camera/ui/a$c;

    return-object p0
.end method

.method public static a(I)Lcom/oplus/camera/ui/a;
    .locals 2

    .line 52
    sget-object v0, Lcom/oplus/camera/ui/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/oplus/camera/ui/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/a;

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/a;

    invoke-direct {v0}, Lcom/oplus/camera/ui/a;-><init>()V

    .line 57
    sget-object v1, Lcom/oplus/camera/ui/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;
    .locals 0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/ui/a;->a(I)Lcom/oplus/camera/ui/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFIZ)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p6, :cond_1

    if-ne p5, v1, :cond_0

    .line 241
    iget-object p5, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 242
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    if-ne p5, v0, :cond_3

    .line 244
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    if-ne p5, v1, :cond_2

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    if-ne p5, v0, :cond_3

    .line 250
    iget-object p5, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v1, p4

    .line 257
    iget v2, v8, Landroid/graphics/RectF;->bottom:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v2, v10

    .line 258
    invoke-direct {v0, v11, v9, v1}, Lcom/oplus/camera/ui/a;->a(FFI)[F

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v1, v14, :cond_0

    .line 262
    iget-object v1, v0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 263
    iget-object v1, v0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    new-instance v2, Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->left:F

    mul-float v5, v11, v10

    add-float/2addr v4, v5

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v1, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 265
    new-instance v15, Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v5

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v15, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 266
    aget v3, v12, v13

    aget v1, v12, v14

    div-float v4, v1, v10

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 268
    invoke-direct {v0, v8, v11, v9}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v1

    .line 269
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 270
    aget v3, v1, v13

    iget v4, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 271
    iget v3, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v11

    iget v4, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    iget v3, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v11

    iget v4, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    aget v1, v1, v14

    iget v3, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v9

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 275
    iget-object v1, v0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 277
    aget v1, v12, v13

    aget v2, v12, v14

    div-float/2addr v2, v10

    add-float/2addr v2, v1

    aget v1, v12, v14

    div-float v3, v1, v10

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v1, v0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 281
    new-instance v15, Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    mul-float v4, v11, v10

    add-float/2addr v3, v4

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v15, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 282
    new-instance v6, Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 284
    aget v1, v12, v13

    aget v2, v12, v14

    div-float/2addr v2, v10

    add-float v3, v1, v2

    aget v1, v12, v14

    div-float v4, v1, v10

    const/4 v5, 0x0

    iget-object v2, v0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move-object v2, v15

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 285
    aget v1, v12, v13

    aget v2, v12, v14

    div-float/2addr v2, v10

    add-float v3, v1, v2

    aget v1, v12, v14

    div-float v4, v1, v10

    iget-object v6, v0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 287
    invoke-direct {v0, v8, v11, v9}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v1

    .line 288
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 289
    aget v3, v1, v13

    iget v4, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 290
    iget v3, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v11

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget v3, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v11

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    aget v1, v1, v14

    iget v3, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v9

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 294
    iget-object v1, v0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 295
    iget-object v1, v0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 297
    aget v3, v12, v13

    aget v1, v12, v14

    div-float v4, v1, v10

    iget-object v6, v0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 298
    aget v2, v12, v13

    aget v1, v12, v14

    div-float v3, v1, v10

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Canvas;FFILjava/lang/String;)V
    .locals 9

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 305
    invoke-direct {p0, p4, p3, p5}, Lcom/oplus/camera/ui/a;->a(FFI)[F

    move-result-object p3

    .line 306
    new-instance v7, Landroid/graphics/RectF;

    int-to-float p6, p6

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p4, v1

    invoke-direct {v7, p6, v0, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p6

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-ne p5, v8, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, p5, v2, p4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, p5, p1, p4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 312
    aget v3, p3, v0

    aget v4, p3, v8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    move-object v1, p2

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p5, v2, :cond_1

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, p5, p1, p4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 315
    aget v3, p3, v0

    aget v4, p3, v8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    move-object v1, p2

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 316
    aget v3, p3, v0

    aget v4, p3, v8

    iget-object v6, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 319
    :cond_1
    :goto_0
    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 5

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 217
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    if-ne p3, v4, :cond_0

    .line 221
    iget-object p3, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    if-ne p3, v3, :cond_3

    .line 224
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    if-ne p3, v4, :cond_2

    .line 228
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    if-ne p3, v3, :cond_3

    .line 230
    iget-object p3, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    :cond_3
    :goto_0
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private a(FFI)[F
    .locals 6

    const/4 p0, 0x2

    .line 170
    new-array p0, p0, [F

    cmpl-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x40490fdb    # (float)Math.PI

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v0, :cond_0

    sub-float/2addr p2, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v3

    div-float/2addr p1, v2

    aput p1, p0, v5

    .line 174
    aget p1, p0, v5

    mul-float/2addr p1, v1

    sub-float/2addr v3, p1

    aput v3, p0, v4

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    aput p1, p0, v5

    aput v3, p0, v4

    goto :goto_0

    :cond_1
    sub-float p2, p1, p2

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 179
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    double-to-float p1, p1

    neg-float p1, p1

    mul-float/2addr p1, v3

    div-float/2addr p1, v2

    aput p1, p0, v5

    .line 180
    aget p1, p0, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    add-float/2addr p1, v3

    aput p1, p0, v4

    :goto_0
    if-ne p3, v4, :cond_2

    .line 184
    aget p1, p0, v5

    aget p2, p0, v4

    add-float/2addr p1, p2

    aput p1, p0, v5

    const/high16 p1, 0x43b40000    # 360.0f

    .line 185
    aget p2, p0, v4

    sub-float/2addr p1, p2

    aput p1, p0, v4

    :cond_2
    return-object p0
.end method

.method private a(Landroid/graphics/RectF;FF)[F
    .locals 9

    const/4 p0, 0x2

    .line 192
    new-array p0, p0, [F

    cmpg-float v0, p3, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_0

    float-to-double v5, p2

    .line 195
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-float p3, p2, p3

    float-to-double v7, p3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 196
    iget p3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, p2

    float-to-double v5, p3

    sub-double/2addr v5, v3

    double-to-float p3, v5

    aput p3, p0, v2

    .line 197
    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    add-double/2addr p1, v3

    double-to-float p1, p1

    aput p1, p0, v1

    goto :goto_0

    :cond_0
    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    float-to-double v5, p2

    .line 199
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-float/2addr p3, p2

    float-to-double v7, p3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 200
    iget p3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, p2

    float-to-double v5, p3

    sub-double/2addr v5, v3

    double-to-float p3, v5

    aput p3, p0, v2

    .line 201
    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    add-double/2addr p1, v3

    double-to-float p1, p1

    aput p1, p0, v1

    goto :goto_0

    .line 203
    :cond_1
    iget p2, p1, Landroid/graphics/RectF;->left:F

    aput p2, p0, v2

    .line 204
    iget p1, p1, Landroid/graphics/RectF;->right:F

    aput p1, p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/oplus/camera/ui/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/oplus/camera/ui/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/a$b;

    iget-object v1, v1, Lcom/oplus/camera/ui/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a$b;

    iget-object v0, v0, Lcom/oplus/camera/ui/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/a$a;->a(ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/ui/a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/g;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/g;->a(J)V

    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/oplus/camera/ui/a$c;

    iget-object v1, p0, Lcom/oplus/camera/ui/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/ui/a$c;-><init>(JJI)V

    iput-object v0, p0, Lcom/oplus/camera/ui/a;->f:Lcom/oplus/camera/ui/a$c;

    .line 132
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lcom/oplus/camera/ui/a$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/a$1;-><init>(Lcom/oplus/camera/ui/a;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oplus/camera/ui/preview/g;)V
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/a;->d:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/a;->e:Ljava/lang/ref/WeakReference;

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->g:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/a;->h:Landroid/graphics/Paint;

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->h:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object p1, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-static {p2}, Lcom/oplus/camera/util/c;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->k:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a$a;Landroid/graphics/Canvas;I)V
    .locals 12

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a$b;

    .line 375
    move-object v8, p1

    check-cast v8, Landroid/view/View;

    const/4 v1, 0x2

    .line 376
    new-array v2, v1, [I

    .line 377
    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 378
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 379
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 380
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 381
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 382
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int/2addr v7, v5

    .line 383
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    .line 384
    invoke-virtual {p0}, Lcom/oplus/camera/ui/a;->b()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v5, v9, :cond_3

    if-ne p3, v11, :cond_3

    .line 387
    aget v1, v2, v11

    add-int/2addr v1, v4

    if-ge v5, v1, :cond_1

    .line 388
    iput-boolean v10, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 389
    invoke-direct {p0, v8, p2, p3, v11}, Lcom/oplus/camera/ui/a;->a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 390
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 391
    :cond_1
    aget v1, v2, v11

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    if-le v5, v1, :cond_2

    .line 392
    iget-boolean v1, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    if-nez v1, :cond_6

    .line 393
    invoke-direct {p0, v8, p2, p3, v10}, Lcom/oplus/camera/ui/a;->a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 394
    invoke-interface {p1, v10}, Lcom/oplus/camera/ui/a$a;->setNormalBackground(Z)V

    .line 395
    iput-boolean v11, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    goto :goto_0

    .line 398
    :cond_2
    iput-boolean v10, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 399
    aget p1, v2, v11

    sub-int/2addr v5, p1

    sub-int/2addr v5, v4

    int-to-float v4, v5

    int-to-float p1, v7

    div-float v5, p1, v6

    iget-object v7, v0, Lcom/oplus/camera/ui/a$b;->c:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v8

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/a;->a(Landroid/view/View;Landroid/graphics/Canvas;FFILjava/lang/String;)V

    .line 400
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-eq v5, v9, :cond_6

    if-ne p3, v1, :cond_6

    .line 403
    aget v1, v2, v11

    add-int/2addr v1, v4

    if-ge v5, v1, :cond_4

    .line 404
    iget-boolean v1, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    if-nez v1, :cond_6

    .line 405
    invoke-direct {p0, v8, p2, p3, v10}, Lcom/oplus/camera/ui/a;->a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 406
    invoke-interface {p1, v11}, Lcom/oplus/camera/ui/a$a;->setNormalBackground(Z)V

    .line 407
    iput-boolean v11, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    goto :goto_0

    .line 409
    :cond_4
    aget p1, v2, v11

    add-int/2addr p1, v4

    add-int/2addr p1, v3

    if-le v5, p1, :cond_5

    .line 410
    iput-boolean v10, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 411
    invoke-direct {p0, v8, p2, p3, v11}, Lcom/oplus/camera/ui/a;->a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 412
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 414
    :cond_5
    iput-boolean v10, v0, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 415
    aget p1, v2, v11

    sub-int/2addr v5, p1

    sub-int/2addr v5, v4

    int-to-float v4, v5

    int-to-float p1, v7

    div-float v5, p1, v6

    iget-object v7, v0, Lcom/oplus/camera/ui/a$b;->c:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v8

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/a;->a(Landroid/view/View;Landroid/graphics/Canvas;FFILjava/lang/String;)V

    .line 416
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a$a;Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v5, p4

    .line 323
    iget-object v3, v0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v3, v0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/oplus/camera/ui/a$b;

    .line 328
    move-object v9, v7

    check-cast v9, Landroid/view/View;

    const/4 v3, 0x2

    .line 329
    new-array v4, v3, [I

    .line 330
    invoke-virtual {v9, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 331
    invoke-virtual {p0}, Lcom/oplus/camera/ui/a;->b()I

    move-result v6

    .line 332
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v6, v11, :cond_3

    if-ne v5, v13, :cond_3

    int-to-float v3, v6

    .line 335
    aget v11, v4, v13

    int-to-float v11, v11

    iget v14, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v14

    cmpg-float v11, v3, v11

    if-gez v11, :cond_1

    .line 336
    iput-boolean v12, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v10

    move v4, v10

    move/from16 v5, p4

    .line 337
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFIZ)V

    .line 338
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 339
    :cond_1
    aget v11, v4, v13

    int-to-float v11, v11

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v14

    cmpl-float v3, v3, v11

    if-lez v3, :cond_2

    .line 340
    iget-boolean v3, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    if-nez v3, :cond_6

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v10

    move v4, v10

    move/from16 v5, p4

    .line 341
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFIZ)V

    .line 342
    invoke-interface {v7, v12}, Lcom/oplus/camera/ui/a$a;->setNormalBackground(Z)V

    .line 343
    iput-boolean v13, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    goto/16 :goto_0

    .line 346
    :cond_2
    iput-boolean v12, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 347
    aget v3, v4, v13

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 348
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-eq v6, v11, :cond_6

    if-ne v5, v3, :cond_6

    int-to-float v3, v6

    .line 351
    aget v11, v4, v13

    int-to-float v11, v11

    iget v14, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v14

    cmpg-float v11, v3, v11

    if-gez v11, :cond_4

    .line 352
    iget-boolean v3, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    if-nez v3, :cond_6

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v10

    move v4, v10

    move/from16 v5, p4

    .line 353
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFIZ)V

    .line 354
    invoke-interface {v7, v13}, Lcom/oplus/camera/ui/a$a;->setNormalBackground(Z)V

    .line 355
    iput-boolean v13, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    goto :goto_0

    .line 357
    :cond_4
    aget v7, v4, v13

    int-to-float v7, v7

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v11

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5

    .line 358
    iput-boolean v12, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v10

    move v4, v10

    move/from16 v5, p4

    .line 359
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFIZ)V

    .line 360
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 362
    :cond_5
    iput-boolean v12, v8, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 363
    aget v3, v4, v13

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/oplus/camera/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 364
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a$a;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 118
    new-instance v1, Lcom/oplus/camera/ui/a$b;

    invoke-direct {v1, v0, p2}, Lcom/oplus/camera/ui/a$b;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/g;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->Y()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public b(I)V
    .locals 2

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/ui/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/a$b;

    iget-object v1, v1, Lcom/oplus/camera/ui/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a$b;

    iget-object v0, v0, Lcom/oplus/camera/ui/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/a$a;->a(ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.class public La/a/b/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/f/i$a;,
        La/a/b/f/i$b;,
        La/a/b/f/i$c;,
        La/a/b/f/i$d;
    }
.end annotation


# instance fields
.field public a:Lco/polarr/renderer/utils/AnimationJson;

.field public b:J

.field public c:J

.field public d:J

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/a/b/f/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/a/b/f/i$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/b/f/a;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, La/a/b/f/i;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/b/f/i;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/b/f/i;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/b/f/i;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2}, La/a/b/f/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lco/polarr/renderer/utils/AnimationJson;->fromJson(Ljava/io/Reader;)Lco/polarr/renderer/utils/AnimationJson;

    move-result-object v2

    iput-object v2, p0, La/a/b/f/i;->a:Lco/polarr/renderer/utils/AnimationJson;

    iget-object v2, p0, La/a/b/f/i;->a:Lco/polarr/renderer/utils/AnimationJson;

    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson;->getSprites()[Lco/polarr/renderer/utils/AnimationJson$Sprite;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "mPacmanAnimationJson.getSprites() return null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, La/a/b/f/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPacmanAnimationJson.getSprites() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, La/a/b/f/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Cannot initialize pacman filter"

    invoke-static {v1, p2}, La/a/b/f/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p2, p0, La/a/b/f/i;->a:Lco/polarr/renderer/utils/AnimationJson;

    invoke-virtual {p2}, Lco/polarr/renderer/utils/AnimationJson;->getSprites()[Lco/polarr/renderer/utils/AnimationJson$Sprite;

    move-result-object p2

    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_5

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson$Sprite;->getSpriteId()I

    move-result v3

    iget-object v4, p0, La/a/b/f/i;->g:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson$Sprite;->getMaxWidth()F

    move-result v7

    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson$Sprite;->getMaxHeight()F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson$Sprite;->getImageList()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v6}, La/a/b/f/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p0, v6}, La/a/b/f/i;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, La/a/b/f/i$b;

    invoke-direct {v8, v6}, La/a/b/f/i$b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson$Sprite;->getAnimations()[Lco/polarr/renderer/utils/AnimationJson$Animation;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    if-lez v5, :cond_4

    iget-object v5, p0, La/a/b/f/i;->e:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, La/a/b/f/i$a;

    invoke-virtual {v2}, Lco/polarr/renderer/utils/AnimationJson$Sprite;->isRepeat()Z

    move-result v2

    invoke-direct {v6, p0, v4, v2}, La/a/b/f/i$a;-><init>(La/a/b/f/i;[Lco/polarr/renderer/utils/AnimationJson$Animation;Z)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, La/a/b/f/i;->c:J

    return-wide v0
.end method

.method public final a(II)La/a/b/c/d;
    .locals 0

    iget-object p0, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/b/f/i$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/a/b/f/i$b;->a()La/a/b/c/d;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    return-object p0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    throw p0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, La/a/b/f/i;->d:J

    return-void
.end method

.method public a(FF)[La/a/b/f/i$c;
    .locals 14

    move-object v6, p0

    iget-wide v0, v6, La/a/b/f/i;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v6, La/a/b/f/i;->b:J

    sub-long/2addr v0, v2

    :cond_0
    move-wide v7, v0

    iput-wide v7, v6, La/a/b/f/i;->c:J

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v6, La/a/b/f/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v6, La/a/b/f/i;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/f/i$a;

    invoke-virtual {v0, v7, v8}, La/a/b/f/i$a;->a(J)Lco/polarr/renderer/utils/AnimationJson$Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getImageId()I

    move-result v3

    invoke-virtual {p0, v1, v3}, La/a/b/f/i;->a(II)La/a/b/c/d;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v11, La/a/b/f/i$c;

    invoke-direct {v11, p0}, La/a/b/f/i$c;-><init>(La/a/b/f/i;)V

    iput-object v1, v11, La/a/b/f/i$c;->a:La/a/b/c/d;

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getRotation()F

    move-result v3

    iput v3, v11, La/a/b/f/i$c;->d:F

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getOpacity()F

    move-result v3

    iput v3, v11, La/a/b/f/i$c;->c:F

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getBlendingMode()La/a/b/f/x;

    move-result-object v3

    iput-object v3, v11, La/a/b/f/i$c;->e:La/a/b/f/x;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getScale()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, p2

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v0, v12, v0

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v1, La/a/b/c/d;->b:I

    int-to-float v0, v0

    iget v1, v1, La/a/b/c/d;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, v11, La/a/b/f/i$c;->d:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_2

    const/high16 v5, 0x43870000    # 270.0f

    cmpl-float v1, v5, v1

    if-nez v1, :cond_3

    :cond_2
    div-float v0, v12, v0

    :cond_3
    div-float v1, v2, v0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_4

    mul-float v2, v3, v0

    move v1, v3

    :cond_4
    div-float v5, v2, p1

    div-float v12, v1, p2

    new-instance v13, La/a/b/f/i$d;

    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v5, v1

    sub-float v2, v0, v2

    iget v0, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v12

    sub-float v3, v0, v1

    move-object v0, v13

    move-object v1, p0

    move v4, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, La/a/b/f/i$d;-><init>(La/a/b/f/i;FFFF)V

    iput-object v13, v11, La/a/b/f/i$c;->b:La/a/b/f/i$d;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [La/a/b/f/i$c;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/b/f/i$c;

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object p0, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/b/f/i$b;

    invoke-virtual {v1}, La/a/b/f/i$b;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, La/a/b/f/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/b/f/i$a;

    invoke-virtual {v1}, La/a/b/f/i$a;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, La/a/b/f/i;->b:J

    iput-wide v2, p0, La/a/b/f/i;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/b/f/i;->d:J

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/b/f/i$b;

    invoke-virtual {v2}, La/a/b/f/i$b;->close()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, La/a/b/f/i;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method

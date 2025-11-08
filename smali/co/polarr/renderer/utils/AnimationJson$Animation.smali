.class public Lco/polarr/renderer/utils/AnimationJson$Animation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/utils/AnimationJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Animation"
.end annotation


# instance fields
.field public animationId:I

.field public blendingMode:Ljava/lang/String;

.field public center:[F

.field public imageId:I

.field public opacity:F

.field public rotation:F

.field public scale:F

.field public timeInMS:J

.field public visibility:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->animationId:I

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->imageId:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->timeInMS:J

    iput-boolean v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->visibility:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->center:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->scale:F

    const/4 v1, 0x0

    iput v1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->rotation:F

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->opacity:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(IIIZFFFFFLa/a/b/f/x;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->animationId:I

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->imageId:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->timeInMS:J

    iput-boolean v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->visibility:Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->center:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->scale:F

    const/4 v3, 0x0

    iput v3, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->rotation:F

    iput v2, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->opacity:F

    iput p1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->animationId:I

    iput p2, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->imageId:I

    int-to-long p1, p3

    iput-wide p1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->timeInMS:J

    iput-boolean p4, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->visibility:Z

    iget-object p1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->center:[F

    aput p5, p1, v0

    const/4 p2, 0x1

    aput p6, p1, p2

    iput p7, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->scale:F

    iput p8, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->rotation:F

    iput p9, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->opacity:F

    sget-object p1, Lco/polarr/renderer/utils/AnimationJson$porender_YuvEf;->a:[I

    invoke-virtual {p10}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const-string p1, "normal"

    goto :goto_0

    :cond_0
    const-string p1, "overlay"

    goto :goto_0

    :cond_1
    const-string p1, "screen"

    goto :goto_0

    :cond_2
    const-string p1, "multiply"

    :goto_0
    iput-object p1, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->blendingMode:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getBlendingMode()La/a/b/f/x;
    .locals 4

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->blendingMode:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "multiply"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "overlay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_1

    sget-object p0, La/a/b/f/x;->a:La/a/b/f/x;

    return-object p0

    :cond_1
    sget-object p0, La/a/b/f/x;->d:La/a/b/f/x;

    return-object p0

    :cond_2
    sget-object p0, La/a/b/f/x;->c:La/a/b/f/x;

    return-object p0

    :cond_3
    sget-object p0, La/a/b/f/x;->b:La/a/b/f/x;

    return-object p0

    :cond_4
    sget-object p0, La/a/b/f/x;->a:La/a/b/f/x;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x410bbbb0 -> :sswitch_3
        -0x3df94319 -> :sswitch_2
        -0x361a3f94 -> :sswitch_1
        0x26f8a624 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->center:[F

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->animationId:I

    return p0
.end method

.method public getImageId()I
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->imageId:I

    return p0
.end method

.method public getOpacity()F
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->opacity:F

    return p0
.end method

.method public getRotation()F
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->rotation:F

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->scale:F

    return p0
.end method

.method public getTimeInMS()J
    .locals 2

    iget-wide v0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->timeInMS:J

    return-wide v0
.end method

.method public isVisibility()Z
    .locals 0

    iget-boolean p0, p0, Lco/polarr/renderer/utils/AnimationJson$Animation;->visibility:Z

    return p0
.end method

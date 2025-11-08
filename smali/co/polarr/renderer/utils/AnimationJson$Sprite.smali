.class public Lco/polarr/renderer/utils/AnimationJson$Sprite;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/utils/AnimationJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sprite"
.end annotation


# instance fields
.field public animation:[Lco/polarr/renderer/utils/AnimationJson$Animation;

.field public imageList:[Lco/polarr/renderer/utils/AnimationJson$ImageItem;

.field public maxHeight:F

.field public maxWidth:F

.field public repeat:Z

.field public spriteId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->spriteId:I

    const/4 v1, 0x0

    iput v1, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->maxWidth:F

    iput v1, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->maxHeight:F

    iput-boolean v0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->repeat:Z

    return-void
.end method


# virtual methods
.method public getAnimations()[Lco/polarr/renderer/utils/AnimationJson$Animation;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->animation:[Lco/polarr/renderer/utils/AnimationJson$Animation;

    return-object p0
.end method

.method public getImageList()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->imageList:[Lco/polarr/renderer/utils/AnimationJson$ImageItem;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->imageList:[Lco/polarr/renderer/utils/AnimationJson$ImageItem;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->access$000(Lco/polarr/renderer/utils/AnimationJson$ImageItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->access$100(Lco/polarr/renderer/utils/AnimationJson$ImageItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxHeight()F
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->maxHeight:F

    return p0
.end method

.method public getMaxWidth()F
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->maxWidth:F

    return p0
.end method

.method public getSpriteId()I
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->spriteId:I

    return p0
.end method

.method public isRepeat()Z
    .locals 0

    iget-boolean p0, p0, Lco/polarr/renderer/utils/AnimationJson$Sprite;->repeat:Z

    return p0
.end method

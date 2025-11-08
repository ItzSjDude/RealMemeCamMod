.class public Lco/polarr/renderer/utils/AnimationJson$ImageItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/polarr/renderer/utils/AnimationJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageItem"
.end annotation


# instance fields
.field public imageId:I

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->imageId:I

    return-void
.end method

.method public static synthetic access$000(Lco/polarr/renderer/utils/AnimationJson$ImageItem;)I
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->imageId:I

    return p0
.end method

.method public static synthetic access$100(Lco/polarr/renderer/utils/AnimationJson$ImageItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getImageId()I
    .locals 0

    iget p0, p0, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->imageId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson$ImageItem;->path:Ljava/lang/String;

    return-object p0
.end method

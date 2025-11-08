.class public Lcom/oplus/camera/ui/preview/a/g;
.super Ljava/lang/Object;
.source "FaceBeautyHelp.java"


# static fields
.field public static final a:[I

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 44
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/ui/preview/a/g;->a:[I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/g;->c:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/g;->d:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/g;->e:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/g;->f:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
    .end array-data
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 80
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "rosy_nude"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "orange_crush"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.oplus.feature.custom.makeup.type.snow.support"

    .line 88
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "snow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "first_love"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "peach_pink"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "red_velvet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.oplus.feature.custom.makeup.type.dream.support"

    .line 96
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "dream"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "sparkling_sea"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "unique_eyes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "midnight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "violet_shimmer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "smokey"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    const-string v1, "groomed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/oplus/camera/statistics/model/DcsMsgData;->initMakeupList()V

    .line 109
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    sget-object v1, Lcom/oplus/camera/ui/preview/a/-$$Lambda$g$EGpQOOSc1UA87V795W9xaDIp9ZE;->INSTANCE:Lcom/oplus/camera/ui/preview/a/-$$Lambda$g$EGpQOOSc1UA87V795W9xaDIp9ZE;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 110
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_beauty_common_makeup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_beauty_portrait_makeup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->e:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_beauty_video_makeup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_beauty_night_makeup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$EGpQOOSc1UA87V795W9xaDIp9ZE(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/g;->a(Ljava/lang/String;)V

    return-void
.end method

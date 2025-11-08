.class public Lcom/oplus/camera/entry/c;
.super Landroid/database/AbstractCursor;
.source "CameraInfoCursor.java"

# interfaces
.implements Lcom/oplus/camera/entry/a;


# static fields
.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:[I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/oplus/camera/entry/c$1;

    invoke-direct {v0}, Lcom/oplus/camera/entry/c$1;-><init>()V

    sput-object v0, Lcom/oplus/camera/entry/c;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 13
    sget-object v0, Lcom/oplus/camera/entry/c;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/entry/c;->h:[I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/entry/c;->i:Ljava/util/Map;

    const/4 v0, 0x0

    .line 46
    :goto_0
    sget-object v1, Lcom/oplus/camera/entry/c;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/oplus/camera/entry/c;->i:Ljava/util/Map;

    sget-object v2, Lcom/oplus/camera/entry/c;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 182
    sget-object v0, Lcom/oplus/camera/entry/c;->j:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v1, "support"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0xf

    aput v1, v0, p0

    return-void
.end method

.method public b()V
    .locals 8

    .line 59
    sget-object v0, Lcom/oplus/camera/entry/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "highDefinition"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "idPhoto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "microscope"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "3dPhoto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto/16 :goto_2

    :sswitch_4
    const-string v6, "portrait"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto/16 :goto_2

    :sswitch_5
    const-string v6, "night"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto/16 :goto_2

    :sswitch_6
    const-string v6, "movie"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_7
    const-string v6, "macro"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_2

    :sswitch_8
    const-string v6, "xpan"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_2

    :sswitch_9
    const-string v6, "superText"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_a
    const-string v6, "ultraHD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_b
    const-string v6, "highPixel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_c
    const-string v6, "multiCamera"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_d
    const-string v6, "fishEye"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_e
    const-string v6, "street"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto :goto_2

    :sswitch_f
    const-string v6, "starry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_2

    :sswitch_10
    const-string v6, "groupshot"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_11
    const-string v6, "sticker"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :cond_0
    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v4, "com.oplus.3d.photo.support"

    .line 131
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_3

    :pswitch_1
    const-string v4, "com.oplus.feature.xpan.mode.support"

    .line 127
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_3

    :pswitch_2
    const-string v4, "com.oplus.feature.street.mode.support"

    .line 123
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_3

    :pswitch_3
    const-string v4, "com.oplus.starry.support"

    .line 119
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    .line 115
    :pswitch_4
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->isSupportMicroscope()Z

    move-result v7

    goto :goto_3

    :pswitch_5
    const-string v4, "com.oplus.feature.movie.mode.support"

    .line 111
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_6
    const-string v4, "com.oplus.multi.video.mode.support"

    .line 107
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_7
    const-string v4, "com.oplus.feature.groupshot.support"

    .line 104
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_8
    const-string v4, "com.oplus.feature.fish.eye.support"

    .line 100
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_9
    const-string v4, "com.oplus.feature.id.photo.support"

    .line 96
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_a
    const-string v4, "com.oplus.feature.high.definition.support"

    .line 92
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_b
    const-string v4, "com.oplus.feature.macro.mode.support"

    .line 88
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_c
    const-string v4, "com.oplus.feature.high.pixel.support"

    .line 84
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_d
    const-string v4, "com.oplus.feature.ultra.high.resolution.support"

    .line 80
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_e
    const-string v4, "com.oplus.feature.super.text.support"

    .line 76
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_f
    const-string v4, "com.oplus.app.feature.sticker.support"

    .line 72
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_10
    const-string v4, "com.oplus.feature.suppernight.support"

    .line 68
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :pswitch_11
    const-string v4, "com.oplus.feature.portrait.support"

    .line 64
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v7

    .line 138
    :goto_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int v3, v7, v3

    or-int/2addr v2, v3

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v1, "mode"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    aput v2, v0, p0

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_11
        -0x58568607 -> :sswitch_10
        -0x353237e7 -> :sswitch_f
        -0x352aaffd -> :sswitch_e
        -0x3292a347 -> :sswitch_d
        -0x2bdb0a42 -> :sswitch_c
        -0x2a24c5fc -> :sswitch_b
        -0x13e39a58 -> :sswitch_a
        -0x13d70cb8 -> :sswitch_9
        0x383d25 -> :sswitch_8
        0x62d9bcc -> :sswitch_7
        0x6343f30 -> :sswitch_6
        0x63f6418 -> :sswitch_5
        0x2b77bb9b -> :sswitch_4
        0x391aba21 -> :sswitch_3
        0x51de9a10 -> :sswitch_2
        0x61ab39d7 -> :sswitch_1
        0x6594cc95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 4

    .line 147
    sget-object v0, Lcom/oplus/camera/entry/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x1

    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v2, "mode"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aget v0, v0, v2

    and-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v2, "rear"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    aput v0, v1, p0

    return-void
.end method

.method public d()V
    .locals 4

    .line 158
    sget-object v0, Lcom/oplus/camera/entry/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v2, "mode"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aget v0, v0, v2

    and-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v2, "front"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    aput v0, v1, p0

    return-void
.end method

.method public e()V
    .locals 4

    .line 171
    sget-object v0, Lcom/oplus/camera/entry/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v2, "mode"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aget v0, v0, v2

    and-int/2addr v0, v1

    .line 178
    iget-object v1, p0, Lcom/oplus/camera/entry/c;->h:[I

    const-string v2, "beauty"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/entry/c;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    aput v0, v1, p0

    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/entry/c;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 0

    .line 202
    sget-object p0, Lcom/oplus/camera/entry/c;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDouble(I)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInt(I)I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/oplus/camera/entry/c;->h:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLong(I)J
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/entry/c;->h:[I

    aget p0, p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

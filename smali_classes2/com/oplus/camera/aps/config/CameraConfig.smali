.class public Lcom/oplus/camera/aps/config/CameraConfig;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfig"

.field private static sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

.field private static sbInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKeyInMenuList(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, ""

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    sget-object v1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v0

    .line 144
    :goto_0
    sget-object v3, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 145
    sget-object v3, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v0

    .line 152
    :goto_1
    sget-object v3, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 153
    sget-object v3, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public static getConfigBooleanValue(Ljava/lang/String;)Z
    .locals 5

    .line 232
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 236
    :try_start_0
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception v2

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigBooleanValue, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraConfig"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_1
    return v2
.end method

.method public static getConfigBooleanValue(Ljava/lang/String;I)Z
    .locals 1

    .line 106
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_front_camera_supported"

    goto :goto_0

    :cond_0
    const-string p1, "_back_camera_supported"

    .line 108
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object p1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p1}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 112
    :cond_1
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 113
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getConfigByteValue(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1

    .line 250
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 256
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigColorValue(Ljava/lang/String;)I
    .locals 0

    .line 317
    :try_start_0
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getConfigFloatArrayValue(Ljava/lang/String;)[F
    .locals 3

    .line 280
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 284
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 286
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 287
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigFloatValue(Ljava/lang/String;)F
    .locals 1

    .line 270
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getConfigFpsValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 346
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 348
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getConfigFpsVideoType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 356
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 358
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 362
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getConfigIntArrayValue(Ljava/lang/String;)[I
    .locals 3

    .line 297
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 301
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 303
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 304
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigIntValue(Ljava/lang/String;)I
    .locals 1

    .line 260
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getConfigIntValue(Ljava/lang/String;I)I
    .locals 0

    .line 187
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "com.oplus.high.picturesize.name_front"

    .line 188
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 190
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "x"

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 199
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 203
    new-instance v3, Landroid/util/Size;

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigStringListValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 326
    invoke-static {p0}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitUtils;->getVendorTagConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getAppSettingMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getMenuPanelOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 87
    :try_start_0
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_default"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_front_camera"

    goto :goto_0

    :cond_0
    const-string p1, "_back_camera"

    .line 90
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object p1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p1}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 94
    :cond_1
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 95
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;
    .locals 4

    const-string v0, "x"

    .line 165
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :try_start_0
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraConfig"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "com.oplus.high.picturesize_front"

    .line 180
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportSettingMenuKey(Ljava/lang/String;)Z
    .locals 1

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSupportedList(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getOptionItemConfigs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_front_camera_supported"

    goto :goto_0

    :cond_0
    const-string p1, "_back_camera_supported"

    .line 61
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getOptionItemConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/c;

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_2
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/c;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/oplus/camera/aps/config/CameraConfig;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraConfig"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, sbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/camera/aps/config/CameraConfig;->sbInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-boolean v1, Lcom/oplus/camera/aps/config/CameraConfig;->sbInit:Z

    if-nez v1, :cond_0

    const-string v1, "CameraConfig.initialize"

    .line 41
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-direct {v1}, Lcom/oplus/camera/aps/config/ConfigDataBase;-><init>()V

    sput-object v1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    .line 44
    sget-object v1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oplus/camera/aps/config/ConfigDataBase;->parseDefaultProjectConfig()V

    .line 45
    sget-object v1, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->parseProjectConfigFromConfigFile(Landroid/content/Context;)V

    .line 46
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->parseMenuPanel()V

    .line 47
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->parseMenuSetting()V

    .line 48
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->parseDefaultMenuSettingConfigMap()V

    .line 49
    sget-object p0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->parseOptionItemConfig()V

    const/4 p0, 0x1

    .line 50
    sput-boolean p0, Lcom/oplus/camera/aps/config/CameraConfig;->sbInit:Z

    const-string p0, "CameraConfig.initialize"

    .line 52
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_0
    const-string p0, "CameraConfig"

    const-string v1, "initialize X"

    .line 55
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isApsSupportVendorTag(Ljava/lang/String;)Z
    .locals 3

    .line 370
    invoke-static {p0}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitUtils;->getVendorTagConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isApsSupportVendorTag, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraConfig"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportMicroscope()Z
    .locals 1

    const-string v0, "com.oplus.feature.microscope.support"

    .line 223
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oplus/camera/aps/config/ConfigDataBase;->KEY_LEGACY_MICROSCOPE_SUPPORT:Ljava/lang/String;

    .line 224
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportMicroscopeFilter()Z
    .locals 1

    const-string v0, "com.oplus.feature.microscope.filter.support"

    .line 228
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static release()V
    .locals 2

    const-string v0, "CameraConfig"

    const-string v1, "release"

    .line 366
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setConfigBooleanValue(Ljava/lang/String;Z)V
    .locals 4

    .line 126
    sget-object v0, Lcom/oplus/camera/aps/config/CameraConfig;->sConfigDataBase:Lcom/oplus/camera/aps/config/ConfigDataBase;

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/oplus/camera/aps/config/ConfigDataBase;->getAppSettingMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 130
    :goto_1
    invoke-static {p0, v1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitUtils;->setVendorTagConfigRus(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

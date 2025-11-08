.class public Lcom/oplus/camera/soloop/a;
.super Ljava/lang/Object;
.source "SoloopDataRequest.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lokhttp3/Call;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/soloop/a;->a:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/soloop/a;->b:Landroid/content/SharedPreferences;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/soloop/a;->c:Lokhttp3/Call;

    .line 55
    iput-object p1, p0, Lcom/oplus/camera/soloop/a;->a:Landroid/content/Context;

    .line 56
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p1

    const-string v0, "soloop_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/soloop/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/soloop/a;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/soloop/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/soloop/a;Ljava/lang/String;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/soloop/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/oplus/camera/soloop/a;->b:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 168
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "key_is_soloop_in_market"

    .line 161
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/soloop/a;->a(Ljava/lang/String;Z)V

    const-string v1, "key_market_soloop_support_jump"

    .line 162
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/soloop/a;->a(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 15

    const-string v0, "camera"

    const-string v1, ""

    .line 61
    iget-object v2, p0, Lcom/oplus/camera/soloop/a;->a:Landroid/content/Context;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "com.oplus.show.soloop.support.same"

    .line 65
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "SoloopDataRequest"

    if-nez v2, :cond_1

    const-string p0, "soloopUpdateRequest, project config is off."

    .line 66
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 73
    new-instance v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;

    invoke-direct {v5}, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;-><init>()V

    .line 74
    new-instance v6, Lcom/oplus/camera/soloop/SoloopRequest$Upgrades;

    invoke-direct {v6}, Lcom/oplus/camera/soloop/SoloopRequest$Upgrades;-><init>()V

    .line 75
    new-instance v7, Lcom/oplus/camera/soloop/SoloopRequest;

    invoke-direct {v7}, Lcom/oplus/camera/soloop/SoloopRequest;-><init>()V

    .line 76
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 81
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "3cba827273b563e6884dec9b0ebacb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/oplus/camera/update/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "soloopUpdateRequest error, message: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v1

    .line 86
    :goto_0
    new-instance v12, Lcom/oplus/camera/sticker/b/a;

    iget-object v13, p0, Lcom/oplus/camera/soloop/a;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/oplus/camera/sticker/b/a;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/oplus/camera/l/a;->e()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 90
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_2

    .line 96
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/camera/getSoloopUpdate"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v13, v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;->androidVersionCode:I

    const-string v13, "2101"

    .line 99
    iput-object v13, v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;->channel:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oplus/camera/sticker/c/a;->c()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;->oplusOsCode:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/oplus/camera/util/Util;->aM()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;->language:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oplus/camera/sticker/c/a;->b()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;->model:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oplus/camera/sticker/c/a;->f()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;->region:Ljava/lang/String;

    const-string v13, "com.oplus.videoeditor"

    .line 105
    iput-object v13, v6, Lcom/oplus/camera/soloop/SoloopRequest$Upgrades;->pkgName:Ljava/lang/String;

    const-wide/16 v13, 0x0

    .line 106
    iput-wide v13, v6, Lcom/oplus/camera/soloop/SoloopRequest$Upgrades;->verCode:J

    .line 108
    iput-object v5, v7, Lcom/oplus/camera/soloop/SoloopRequest;->clientMeta:Lcom/oplus/camera/soloop/SoloopRequest$ClientMeta;

    .line 109
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iput-object v2, v7, Lcom/oplus/camera/soloop/SoloopRequest;->upgrades:Ljava/util/List;

    .line 111
    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "application/json;charset=utf-8"

    .line 113
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-static {v5, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v11

    :goto_1
    const-string v5, "sign"

    .line 114
    invoke-virtual {v4, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v5, "openid"

    .line 115
    invoke-virtual {v1, v5, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 116
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ts"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v1

    iget-object v5, p0, Lcom/oplus/camera/soloop/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/oplus/camera/sticker/c/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "appVersion"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/c/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v5, "model"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/c/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "oplusOSVersion"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/oplus/camera/sticker/c/a;->a()Lcom/oplus/camera/sticker/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/c/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v5, "uRegion"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "androidVersion"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/oplus/camera/util/Util;->ax()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ulang"

    invoke-virtual {v0, v5, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 125
    new-instance v0, Lcom/oplus/camera/soloop/a$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/soloop/a$1;-><init>(Lcom/oplus/camera/soloop/a;)V

    .line 156
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/soloop/a;->c:Lokhttp3/Call;

    .line 157
    iget-object p0, p0, Lcom/oplus/camera/soloop/a;->c:Lokhttp3/Call;

    invoke-virtual {v12, p0, v0}, Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Call;Lcom/oplus/camera/sticker/b/a$c;)V

    return-void

    :cond_4
    :goto_2
    const-string p0, "soloopUpdateRequest, routeURL is null"

    .line 91
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/soloop/a;->c:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/soloop/a;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 179
    iput-object v1, p0, Lcom/oplus/camera/soloop/a;->b:Landroid/content/SharedPreferences;

    .line 182
    :cond_1
    iput-object v1, p0, Lcom/oplus/camera/soloop/a;->a:Landroid/content/Context;

    return-void
.end method

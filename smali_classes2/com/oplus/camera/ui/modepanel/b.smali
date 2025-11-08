.class public Lcom/oplus/camera/ui/modepanel/b;
.super Ljava/lang/Object;
.source "DataBaseOperator.java"


# static fields
.field public static a:I = 0x2

.field private static volatile b:Lcom/oplus/camera/ui/modepanel/b;


# instance fields
.field private c:Lcom/oplus/camera/ui/modepanel/j;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->d:Landroid/content/SharedPreferences;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->e:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/oplus/camera/ui/modepanel/j;

    invoke-direct {v0}, Lcom/oplus/camera/ui/modepanel/j;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    .line 50
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->e:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->d:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_0
    const-string v0, "DataBaseOperator"

    const-string v1, "context is null"

    .line 55
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/b;->b()V

    return-void
.end method

.method public static a()Lcom/oplus/camera/ui/modepanel/b;
    .locals 2

    .line 37
    sget-object v0, Lcom/oplus/camera/ui/modepanel/b;->b:Lcom/oplus/camera/ui/modepanel/b;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/oplus/camera/ui/modepanel/b;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/oplus/camera/ui/modepanel/b;->b:Lcom/oplus/camera/ui/modepanel/b;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/oplus/camera/ui/modepanel/b;

    invoke-direct {v1}, Lcom/oplus/camera/ui/modepanel/b;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/modepanel/b;->b:Lcom/oplus/camera/ui/modepanel/b;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/ui/modepanel/b;->b:Lcom/oplus/camera/ui/modepanel/b;

    return-object v0
.end method

.method private c()V
    .locals 18

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.oplus.feature.suppernight.support"

    .line 98
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v5, 0x1

    const/4 v8, 0x5

    const-string v3, "com.oplus.feature.front.supernight.support"

    .line 101
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v9

    const/4 v7, 0x0

    const-string v4, "night"

    const-string v6, "position_headline"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "com.oplus.feature.street.mode.support"

    .line 106
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v5, 0x1

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const-string v4, "street"

    const-string v6, "position_headline"

    move-object v3, v10

    move v7, v1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 109
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 114
    :cond_1
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v5, 0x0

    const/16 v8, 0x15

    const/4 v9, 0x1

    const-string v4, "commonVideo"

    const-string v6, "position_headline"

    move-object v3, v10

    move v7, v1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 116
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    .line 120
    new-instance v3, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v13, 0x0

    const/16 v16, 0x14

    const/16 v17, 0x1

    const-string v12, "common"

    const-string v14, "position_headline"

    move-object v11, v3

    move v15, v1

    invoke-direct/range {v11 .. v17}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    const-string v2, "com.oplus.feature.portrait.support"

    .line 126
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    new-instance v2, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v6, 0x1

    const/16 v9, 0x16

    const/4 v10, 0x1

    const-string v5, "portrait"

    const-string v7, "position_headline"

    move-object v4, v2

    move v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_2
    move v6, v1

    .line 134
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.oplus.feature.high.definition.support"

    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "highDefinition"

    const-string v5, "position_headline"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v11, 0x0

    const v13, 0x7fffffff

    const/16 v14, 0x17

    const/4 v15, 0x1

    const-string v10, "more"

    const-string v12, "position_headline"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    .line 146
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/util/List;)Z

    return-void
.end method

.method private d()V
    .locals 21

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v8, Lcom/oplus/camera/ui/modepanel/i;

    const-string v2, "professional"

    const/4 v3, 0x1

    const-string v4, "position_mode_panel"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 155
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oplus.feature.ultra.high.resolution.support"

    .line 158
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0xb

    const/4 v8, 0x0

    const-string v3, "ultraHD"

    const-string v5, "position_mode_panel"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    :cond_0
    const-string v1, "com.oplus.feature.high.pixel.support"

    .line 165
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v9, 0x1

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const-string v8, "highPixel"

    const-string v10, "position_mode_panel"

    move-object v7, v1

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    .line 172
    :cond_1
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v9, 0x1

    const/4 v12, 0x0

    const-string v2, "com.oplus.feature.front.panorama.support"

    .line 174
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v13

    const-string v8, "panorama"

    const-string v10, "position_mode_panel"

    move-object v7, v1

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v6, 0x1

    const-string v2, "com.oplus.feature.macro.mode.support"

    .line 178
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    new-instance v2, Lcom/oplus/camera/ui/modepanel/i;

    const/16 v16, 0x1

    const/16 v19, 0xa

    const/16 v20, 0x0

    const-string v15, "macro"

    const-string v17, "position_mode_panel"

    move-object v14, v2

    move/from16 v18, v1

    invoke-direct/range {v14 .. v20}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const-string v2, "com.oplus.feature.movie.mode.support"

    .line 185
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-string v3, "movie"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 188
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const-string v2, "com.oplus.feature.slow.video.support"

    .line 192
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/4 v7, 0x2

    const-string v2, "com.oplus.feature.front.slow.video.support"

    .line 195
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v8

    const-string v3, "slowVideo"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 196
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const-string v9, "com.oplus.feature.timelapse.pro.support"

    .line 200
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 201
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v3, "fastVideo"

    const-string v5, "position_mode_panel"

    move-object v2, v10

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 203
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_5
    const-string v2, "com.oplus.feature.doubleexposure.support"

    .line 207
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x0

    const/16 v7, 0x12

    const/4 v8, 0x1

    const-string v3, "double_exposure"

    const-string v5, "position_mode_panel"

    move-object v2, v10

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 210
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_6
    const-string v2, "com.oplus.long.exposure.support"

    .line 214
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x1b

    const/4 v8, 0x0

    const-string v3, "longExposure"

    const-string v5, "position_mode_panel"

    move-object v2, v10

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 217
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_7
    const-string v2, "com.oplus.multi.video.mode.support"

    .line 221
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 222
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0xe

    const/4 v8, 0x1

    const-string v3, "multiCamera"

    const-string v5, "position_mode_panel"

    move-object v2, v10

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 224
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 228
    :cond_8
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->isSupportMicroscope()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 229
    new-instance v10, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v3, "microscope"

    const-string v5, "position_mode_panel"

    move-object v2, v10

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 231
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 235
    :cond_9
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 236
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x19

    const/4 v8, 0x1

    const-string v3, "timelapsePro"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 238
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_a
    const-string v2, "com.oplus.app.feature.sticker.support"

    .line 242
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 243
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/4 v7, 0x7

    const/4 v8, 0x1

    const-string v3, "sticker"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 245
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_b
    const-string v2, "com.oplus.feature.id.photo.support"

    .line 249
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 250
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->v(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 251
    invoke-static {}, Lcom/oplus/camera/l/c;->g()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 252
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0xd

    const/4 v8, 0x1

    const-string v3, "idPhoto"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 254
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_c
    const-string v2, "com.oplus.feature.fish.eye.support"

    .line 258
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 259
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x1d

    const/4 v8, 0x0

    const-string v3, "fishEye"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 261
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_d
    const-string v2, "com.oplus.feature.super.text.support"

    .line 265
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 266
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "superText"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 268
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_e
    const-string v2, "com.oplus.starry.support"

    .line 272
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 273
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x13

    const/4 v8, 0x0

    const-string v3, "starry"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 275
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_f
    const-string v2, "com.oplus.feature.groupshot.support"

    .line 279
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 280
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-string v3, "groupshot"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 282
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_10
    const-string v2, "com.oplus.feature.tilt.shift.photo.support"

    .line 286
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 287
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, "tiltShift"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 289
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_11
    const-string v2, "com.oplus.feature.xpan.mode.support"

    .line 293
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 294
    new-instance v9, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-string v3, "xpan"

    const-string v5, "position_mode_panel"

    move-object v2, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 296
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_12
    move v6, v1

    const-string v1, "com.oplus.3d.photo.support"

    .line 300
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 301
    new-instance v1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v4, 0x1

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v3, "3dPhoto"

    const-string v5, "position_mode_panel"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v1, p0

    .line 307
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/util/List;)Z

    return-void
.end method

.method private e()Z
    .locals 3

    .line 502
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->d:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 503
    sget v1, Lcom/oplus/camera/ui/modepanel/b;->a:I

    const-string v2, "pref_camera_mode_version"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)Lcom/oplus/camera/ui/modepanel/i;
    .locals 7

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query, queryModeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataBaseOperator"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x1

    .line 317
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 318
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "select * from mode_info where mode_id = ?"

    .line 317
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 321
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mode_name"

    .line 323
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 322
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "mode_id"

    .line 324
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string p1, "position"

    .line 326
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 325
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "rank"

    .line 327
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string p1, "support_edit"

    .line 329
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 328
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string p1, "support_front"

    .line 331
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 330
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 332
    new-instance p1, Lcom/oplus/camera/ui/modepanel/i;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/modepanel/i;",
            ">;"
        }
    .end annotation

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DataBaseOperator"

    if-eqz v0, :cond_0

    const-string p0, "query, can\'t query null positon."

    .line 344
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "position_headline"

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "position_mode_panel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query, position invalid, positioin: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 355
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    if-eqz p0, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 358
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "select * from mode_info where position = ?"

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 362
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "mode_name"

    .line 364
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 363
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "mode_id"

    .line 365
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string p1, "position"

    .line 367
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 366
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "rank"

    .line 368
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string p1, "support_edit"

    .line 370
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 369
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string p1, "support_front"

    .line 372
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 371
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string p1, "sticker"

    .line 375
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.oplus.app.feature.sticker.support"

    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "query, unsupport the sticker mode."

    .line 376
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    new-instance p1, Lcom/oplus/camera/ui/modepanel/i;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method public a(IIZ)V
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRank, modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rank: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DataBaseOperator"

    invoke-static {v0, p3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    if-eqz p0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 484
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update mode_info set rank = \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' where "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mode_id"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = \'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePosition, modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataBaseOperator"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    if-eqz p0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mode_info set position = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mode_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/modepanel/i;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\', \'"

    .line 394
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/i;

    .line 400
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert into mode_info (mode_name, mode_id, position, rank, support_front, support_edit) values (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->f()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->b()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add, inserting modeInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error, "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DataBaseOperator"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->e:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->e:Landroid/content/Context;

    const-string v2, "mode_data.db"

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataBaseOperator"

    const-string v2, "initialize, db is not exist"

    .line 70
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DataBaseOperator"

    const-string v2, "initialize, version is changed"

    .line 72
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "position_headline"

    .line 76
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v2, "position_mode_panel"

    .line 77
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 79
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :cond_3
    :goto_0
    const-string v0, "DataBaseOperator"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, insertIntoDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 85
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/b;->c()V

    .line 86
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/b;->d()V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_mode_version"

    sget v2, Lcom/oplus/camera/ui/modepanel/b;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Z
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete, modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataBaseOperator"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/b;->c:Lcom/oplus/camera/ui/modepanel/j;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from mode_info where mode_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

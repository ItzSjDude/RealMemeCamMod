.class public Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;
.super Ljava/lang/Object;
.source "HumanEffectFusionApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanEffectFusionConfig"
.end annotation


# instance fields
.field public cache_path:Ljava/lang/String;

.field public isBackCamera:Z

.field public isRealTime:Z

.field public log_level:I

.field public model_data:[B

.field public native_lib_path:Ljava/lang/String;

.field public power_mode:I

.field public sdkLoadType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 126
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->log_level:I

    .line 131
    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Lcom/anc/humansdk/fusion/SdkPowerMode;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->power_mode:I

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->model_data:[B

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->isRealTime:Z

    const-string v1, ""

    .line 134
    iput-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    .line 136
    iput-boolean v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->isBackCamera:Z

    .line 137
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->sdkLoadType:I

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->mappingSDKObject()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;

    move-result-object p0

    return-object p0
.end method

.method private mappingSDKObject()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
    .locals 2

    .line 141
    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;-><init>()V

    .line 142
    iget-boolean v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->isRealTime:Z

    iput-boolean v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    .line 143
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->model_data:[B

    iput-object v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    .line 144
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    .line 146
    iget-boolean v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->isBackCamera:Z

    iput-boolean v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    .line 147
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->log_level:I

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    .line 148
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->power_mode:I

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    .line 149
    iget p0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->sdkLoadType:I

    iput p0, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    return-object v0
.end method

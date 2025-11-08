.class public Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
.super Ljava/lang/Object;
.source "HumanEffectFusionApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoFusionParams"
.end annotation


# instance fields
.field public bgLightFactor:F

.field public blue:F

.field public blurIntensity:F

.field public bokeh_max_radius_factor:F

.field public facula_density:F

.field public green:F

.field public light_factor:F

.field public max_light_threshold:F

.field public min_light_threshold:F

.field public red:F

.field public saturation:F

.field public smooth_amount:F

.field public yellow:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 176
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 177
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 178
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 179
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 180
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    .line 181
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 182
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 183
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 184
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 185
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    .line 186
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    .line 187
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    .line 188
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 176
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 177
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 178
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 179
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 180
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    .line 181
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 182
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 183
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 184
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 185
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    .line 186
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    .line 187
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    .line 188
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    .line 194
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 176
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 177
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 178
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 179
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 180
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    .line 181
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 182
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 183
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 184
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 185
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    .line 186
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    .line 187
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    .line 188
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    .line 198
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 199
    iput p2, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 176
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 177
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 178
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 179
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 180
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    .line 181
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 182
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 183
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 184
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 185
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    .line 186
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    .line 187
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    .line 188
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    .line 203
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 204
    iput p2, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 205
    iput p3, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 176
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 177
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 178
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 179
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 180
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    .line 181
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 182
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 183
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 184
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 185
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    .line 186
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    .line 187
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    .line 188
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    .line 209
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 210
    iput p2, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 211
    iput p3, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 212
    iput p4, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 176
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 177
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 178
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 179
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 180
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    .line 181
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 182
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 183
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 184
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 185
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    .line 186
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    .line 187
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    .line 188
    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    .line 216
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    .line 217
    iput p2, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    .line 218
    iput p3, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    .line 219
    iput p4, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    .line 220
    iput p5, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    return-void
.end method

.method static synthetic access$200(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->mappingSDKObject()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    move-result-object p0

    return-object p0
.end method

.method private mappingSDKObject()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 2

    .line 277
    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;-><init>()V

    .line 278
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 279
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 280
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 281
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 282
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 283
    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 284
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 285
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 286
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 287
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    iput v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 288
    iget p0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    iput p0, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    return-object v0
.end method


# virtual methods
.method public UpdateBgLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 262
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bgLightFactor:F

    return-object p0
.end method

.method public UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 224
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blurIntensity:F

    return-object p0
.end method

.method public UpdateBokehMaxRadiusFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 249
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    return-object p0
.end method

.method public UpdateColorValue(FFFF)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 254
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->red:F

    .line 255
    iput p2, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->green:F

    .line 256
    iput p3, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->blue:F

    .line 257
    iput p4, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->yellow:F

    return-object p0
.end method

.method public UpdateFaculaDensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 234
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->facula_density:F

    return-object p0
.end method

.method public UpdateLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 239
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->light_factor:F

    return-object p0
.end method

.method public UpdateMaxLightThreshold(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 267
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->max_light_threshold:F

    return-object p0
.end method

.method public UpdateMinLightThreshold(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 272
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->min_light_threshold:F

    return-object p0
.end method

.method public UpdateSaturation(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 229
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->saturation:F

    return-object p0
.end method

.method public UpdateSmoothAmount(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 244
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->smooth_amount:F

    return-object p0
.end method

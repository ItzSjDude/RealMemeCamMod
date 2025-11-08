.class public final enum Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;
.super Ljava/lang/Enum;
.source "HumanEffectFusionApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

.field public static final enum ANC_HUM_FEATURE_BOKEH:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

.field public static final enum ANC_HUM_FEATURE_NEON:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

.field public static final enum ANC_HUM_FEATURE_NONE:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 93
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    const/4 v1, 0x0

    const-string v2, "ANC_HUM_FEATURE_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_NONE:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    .line 94
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    const/4 v2, 0x1

    const-string v3, "ANC_HUM_FEATURE_BOKEH"

    invoke-direct {v0, v3, v2, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    .line 95
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    const/4 v3, 0x2

    const-string v4, "ANC_HUM_FEATURE_NEON"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v3, v5}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_NEON:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    sget-object v4, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_NONE:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_NEON:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->mappingSDKObject()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    move-result-object p0

    return-object p0
.end method

.method private mappingSDKObject()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;
    .locals 1

    .line 108
    iget p0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->value:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 114
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_NEON:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    return-object p0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not matching"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_1
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    return-object p0

    .line 110
    :cond_2
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_NONE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;
    .locals 1

    .line 92
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;
    .locals 1

    .line 92
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    invoke-virtual {v0}, [Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->value:I

    return p0
.end method

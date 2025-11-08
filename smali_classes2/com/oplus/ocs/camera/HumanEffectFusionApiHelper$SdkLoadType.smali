.class public final enum Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;
.super Ljava/lang/Enum;
.source "HumanEffectFusionApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 156
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    const/4 v1, 0x0

    const-string v2, "ANC_LOAD_TYPE_DLOEPN"

    invoke-direct {v0, v2, v1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    .line 157
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    const/4 v2, 0x1

    const-string v3, "ANC_LOAD_TYPE_ANDROID_DLOPEN"

    invoke-direct {v0, v3, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    const/4 v0, 0x2

    .line 155
    new-array v0, v0, [Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    sget-object v3, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getObject(I)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;
    .locals 3

    .line 164
    :try_start_0
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->values()[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 166
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sdk load type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;
    .locals 1

    .line 155
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;
    .locals 1

    .line 155
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    invoke-virtual {v0}, [Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ordinal()I

    move-result p0

    return p0
.end method

.class public final enum Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;
.super Ljava/lang/Enum;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 101
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    const/4 v1, 0x0

    const-string v2, "ANC_LOAD_TYPE_DLOEPN"

    invoke-direct {v0, v2, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    .line 102
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    const/4 v2, 0x1

    const-string v3, "ANC_LOAD_TYPE_ANDROID_DLOPEN"

    invoke-direct {v0, v3, v2}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    .line 103
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    const/4 v3, 0x2

    const-string v4, "ANC_LOAD_TYPE_VNDKSUPPORT"

    invoke-direct {v0, v4, v3}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    sget-object v4, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getObject(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;
    .locals 3

    .line 110
    :try_start_0
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->values()[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 112
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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;
    .locals 1

    .line 100
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;
    .locals 1

    .line 100
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-virtual {v0}, [Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ordinal()I

    move-result p0

    return p0
.end method

.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;
    .locals 1

    .line 121
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object p0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;

    return-object p0

    .line 123
    :cond_0
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object p0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;

    return-object p0

    .line 125
    :cond_1
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 126
    sget-object p0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;

    return-object p0

    .line 129
    :cond_2
    sget-object p0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$SdkLoadType;

    return-object p0
.end method

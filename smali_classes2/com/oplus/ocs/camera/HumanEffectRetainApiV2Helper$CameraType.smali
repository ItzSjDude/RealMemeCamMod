.class public final enum Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;
.super Ljava/lang/Enum;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

.field public static final enum CAMERA_TYPE_FRONT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

.field public static final enum CAMERA_TYPE_REAR:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 156
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    const/4 v1, 0x0

    const-string v2, "CAMERA_TYPE_REAR"

    invoke-direct {v0, v2, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_REAR:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    .line 157
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    const/4 v2, 0x1

    const-string v3, "CAMERA_TYPE_FRONT"

    invoke-direct {v0, v3, v2}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_FRONT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    const/4 v0, 0x2

    .line 155
    new-array v0, v0, [Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    sget-object v3, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_REAR:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_FRONT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;
    .locals 1

    .line 155
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;
    .locals 1

    .line 155
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->$VALUES:[Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    invoke-virtual {v0}, [Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    return-object v0
.end method


# virtual methods
.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;
    .locals 1

    .line 163
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_FRONT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 164
    sget-object p0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;->CAMERA_TYPE_FRONT:Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;

    return-object p0

    .line 166
    :cond_0
    sget-object p0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;->CAMERA_TYPE_REAR:Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;

    return-object p0
.end method

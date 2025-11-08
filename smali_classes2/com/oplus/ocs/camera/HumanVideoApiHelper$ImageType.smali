.class public final enum Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;
.super Ljava/lang/Enum;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_BGR:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_DEPTH:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_GREYSCALE:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_NV12:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_NV21:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_RGB:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

.field public static final enum ANC_HUM_IMG_RGBA:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 319
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v1, 0x0

    const-string v2, "ANC_HUM_IMG_NV21"

    invoke-direct {v0, v2, v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_NV21:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    .line 320
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v2, 0x1

    const-string v3, "ANC_HUM_IMG_BGR"

    invoke-direct {v0, v3, v2}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_BGR:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    .line 321
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v3, 0x2

    const-string v4, "ANC_HUM_IMG_RGB"

    invoke-direct {v0, v4, v3}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_RGB:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    .line 322
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v4, 0x3

    const-string v5, "ANC_HUM_IMG_RGBA"

    invoke-direct {v0, v5, v4}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_RGBA:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    .line 323
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v5, 0x4

    const-string v6, "ANC_HUM_IMG_DEPTH"

    invoke-direct {v0, v6, v5}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_DEPTH:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    .line 324
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v6, 0x5

    const-string v7, "ANC_HUM_IMG_GREYSCALE"

    invoke-direct {v0, v7, v6}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_GREYSCALE:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    .line 325
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v7, 0x6

    const-string v8, "ANC_HUM_IMG_NV12"

    invoke-direct {v0, v8, v7}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_NV12:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    const/4 v0, 0x7

    .line 318
    new-array v0, v0, [Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    sget-object v8, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_NV21:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_BGR:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_RGB:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_RGBA:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_DEPTH:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_GREYSCALE:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ANC_HUM_IMG_NV12:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->$VALUES:[Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;
    .locals 1

    .line 318
    const-class v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;
    .locals 1

    .line 318
    sget-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->$VALUES:[Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    invoke-virtual {v0}, [Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    return-object v0
.end method


# virtual methods
.method mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$ImageType;
    .locals 1

    .line 332
    sget-object v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$1;->$SwitchMap$com$oplus$ocs$camera$HumanVideoApiHelper$ImageType:[I

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 354
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, " not match"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :pswitch_0
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_NV12:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    .line 349
    :pswitch_1
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_GREYSCALE:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    .line 346
    :pswitch_2
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_DEPTH:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    .line 343
    :pswitch_3
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_RGBA:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    .line 340
    :pswitch_4
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_RGB:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    .line 337
    :pswitch_5
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_NV21:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    .line 334
    :pswitch_6
    sget-object p0, Lcom/anc/humanvideo/HumanVideoApi$ImageType;->ANC_HUM_IMG_BGR:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final enum Lcom/oplus/camera/a$a;
.super Ljava/lang/Enum;
.source "AEAFHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/a$a;

.field public static final enum CenterWeighted:Lcom/oplus/camera/a$a;

.field public static final enum CenterWeightedAdv:Lcom/oplus/camera/a$a;

.field public static final enum End:Lcom/oplus/camera/a$a;

.field public static final enum FrameAverage:Lcom/oplus/camera/a$a;

.field public static final enum SmartMetering:Lcom/oplus/camera/a$a;

.field public static final enum SpotMetering:Lcom/oplus/camera/a$a;

.field public static final enum SpotMeteringAdv:Lcom/oplus/camera/a$a;

.field public static final enum UserMetering:Lcom/oplus/camera/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 61
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v1, 0x0

    const-string v2, "FrameAverage"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->FrameAverage:Lcom/oplus/camera/a$a;

    .line 62
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v2, 0x1

    const-string v3, "CenterWeighted"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->CenterWeighted:Lcom/oplus/camera/a$a;

    .line 63
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v3, 0x2

    const-string v4, "SpotMetering"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->SpotMetering:Lcom/oplus/camera/a$a;

    .line 64
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v4, 0x3

    const-string v5, "SmartMetering"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->SmartMetering:Lcom/oplus/camera/a$a;

    .line 65
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v5, 0x4

    const-string v6, "UserMetering"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->UserMetering:Lcom/oplus/camera/a$a;

    .line 66
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v6, 0x5

    const-string v7, "SpotMeteringAdv"

    invoke-direct {v0, v7, v6}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->SpotMeteringAdv:Lcom/oplus/camera/a$a;

    .line 67
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v7, 0x6

    const-string v8, "CenterWeightedAdv"

    invoke-direct {v0, v8, v7}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->CenterWeightedAdv:Lcom/oplus/camera/a$a;

    .line 68
    new-instance v0, Lcom/oplus/camera/a$a;

    const/4 v8, 0x7

    const-string v9, "End"

    invoke-direct {v0, v9, v8}, Lcom/oplus/camera/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/a$a;->End:Lcom/oplus/camera/a$a;

    const/16 v0, 0x8

    .line 60
    new-array v0, v0, [Lcom/oplus/camera/a$a;

    sget-object v9, Lcom/oplus/camera/a$a;->FrameAverage:Lcom/oplus/camera/a$a;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oplus/camera/a$a;->CenterWeighted:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/a$a;->SpotMetering:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/a$a;->SmartMetering:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/a$a;->UserMetering:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/camera/a$a;->SpotMeteringAdv:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oplus/camera/a$a;->CenterWeightedAdv:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oplus/camera/a$a;->End:Lcom/oplus/camera/a$a;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oplus/camera/a$a;->$VALUES:[Lcom/oplus/camera/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/a$a;
    .locals 1

    .line 60
    const-class v0, Lcom/oplus/camera/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/a$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/a$a;
    .locals 1

    .line 60
    sget-object v0, Lcom/oplus/camera/a$a;->$VALUES:[Lcom/oplus/camera/a$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/a$a;

    return-object v0
.end method

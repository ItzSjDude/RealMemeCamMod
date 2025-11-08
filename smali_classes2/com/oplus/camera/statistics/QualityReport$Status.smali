.class public final enum Lcom/oplus/camera/statistics/QualityReport$Status;
.super Ljava/lang/Enum;
.source "QualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/statistics/QualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/statistics/QualityReport$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/statistics/QualityReport$Status;

.field public static final enum idle:Lcom/oplus/camera/statistics/QualityReport$Status;

.field public static final enum preview:Lcom/oplus/camera/statistics/QualityReport$Status;

.field public static final enum start:Lcom/oplus/camera/statistics/QualityReport$Status;

.field public static final enum switchCamera:Lcom/oplus/camera/statistics/QualityReport$Status;

.field public static final enum switchMode:Lcom/oplus/camera/statistics/QualityReport$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/oplus/camera/statistics/QualityReport$Status;

    const/4 v1, 0x0

    const-string v2, "idle"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/statistics/QualityReport$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->idle:Lcom/oplus/camera/statistics/QualityReport$Status;

    new-instance v0, Lcom/oplus/camera/statistics/QualityReport$Status;

    const/4 v2, 0x1

    const-string v3, "start"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/statistics/QualityReport$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->start:Lcom/oplus/camera/statistics/QualityReport$Status;

    new-instance v0, Lcom/oplus/camera/statistics/QualityReport$Status;

    const/4 v3, 0x2

    const-string v4, "switchMode"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/statistics/QualityReport$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->switchMode:Lcom/oplus/camera/statistics/QualityReport$Status;

    new-instance v0, Lcom/oplus/camera/statistics/QualityReport$Status;

    const/4 v4, 0x3

    const-string v5, "switchCamera"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/statistics/QualityReport$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->switchCamera:Lcom/oplus/camera/statistics/QualityReport$Status;

    new-instance v0, Lcom/oplus/camera/statistics/QualityReport$Status;

    const/4 v5, 0x4

    const-string v6, "preview"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/statistics/QualityReport$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->preview:Lcom/oplus/camera/statistics/QualityReport$Status;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oplus/camera/statistics/QualityReport$Status;

    sget-object v6, Lcom/oplus/camera/statistics/QualityReport$Status;->idle:Lcom/oplus/camera/statistics/QualityReport$Status;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->start:Lcom/oplus/camera/statistics/QualityReport$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->switchMode:Lcom/oplus/camera/statistics/QualityReport$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->switchCamera:Lcom/oplus/camera/statistics/QualityReport$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->preview:Lcom/oplus/camera/statistics/QualityReport$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->$VALUES:[Lcom/oplus/camera/statistics/QualityReport$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/statistics/QualityReport$Status;
    .locals 1

    .line 10
    const-class v0, Lcom/oplus/camera/statistics/QualityReport$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/QualityReport$Status;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/statistics/QualityReport$Status;
    .locals 1

    .line 10
    sget-object v0, Lcom/oplus/camera/statistics/QualityReport$Status;->$VALUES:[Lcom/oplus/camera/statistics/QualityReport$Status;

    invoke-virtual {v0}, [Lcom/oplus/camera/statistics/QualityReport$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/statistics/QualityReport$Status;

    return-object v0
.end method

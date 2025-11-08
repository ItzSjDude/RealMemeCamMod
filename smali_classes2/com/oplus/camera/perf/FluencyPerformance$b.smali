.class final enum Lcom/oplus/camera/perf/FluencyPerformance$b;
.super Ljava/lang/Enum;
.source "FluencyPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/FluencyPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/perf/FluencyPerformance$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/perf/FluencyPerformance$b;

.field public static final enum STATE_CAPTURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

.field public static final enum STATE_CONFIGURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

.field public static final enum STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

.field public static final enum STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

.field public static final enum STATE_RECORDING:Lcom/oplus/camera/perf/FluencyPerformance$b;

.field public static final enum STATE_ZOOMING:Lcom/oplus/camera/perf/FluencyPerformance$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v1, 0x0

    const-string v2, "STATE_LAUNCHING"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/perf/FluencyPerformance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 49
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v2, 0x1

    const-string v3, "STATE_CAPTURING"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/perf/FluencyPerformance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_CAPTURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 50
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v3, 0x2

    const-string v4, "STATE_RECORDING"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/perf/FluencyPerformance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_RECORDING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 51
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v4, 0x3

    const-string v5, "STATE_PREVIEW"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/perf/FluencyPerformance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 52
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v5, 0x4

    const-string v6, "STATE_ZOOMING"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/perf/FluencyPerformance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_ZOOMING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 53
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v6, 0x5

    const-string v7, "STATE_CONFIGURING"

    invoke-direct {v0, v7, v6}, Lcom/oplus/camera/perf/FluencyPerformance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_CONFIGURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    const/4 v0, 0x6

    .line 47
    new-array v0, v0, [Lcom/oplus/camera/perf/FluencyPerformance$b;

    sget-object v7, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_CAPTURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_RECORDING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_ZOOMING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_CONFIGURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->$VALUES:[Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/perf/FluencyPerformance$b;
    .locals 1

    .line 47
    const-class v0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/perf/FluencyPerformance$b;
    .locals 1

    .line 47
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->$VALUES:[Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-virtual {v0}, [Lcom/oplus/camera/perf/FluencyPerformance$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-object v0
.end method

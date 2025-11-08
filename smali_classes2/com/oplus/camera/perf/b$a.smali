.class final enum Lcom/oplus/camera/perf/b$a;
.super Ljava/lang/Enum;
.source "CameraPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/perf/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/perf/b$a;

.field public static final enum STATE_CLOSED:Lcom/oplus/camera/perf/b$a;

.field public static final enum STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

.field public static final enum STATE_PAUSE:Lcom/oplus/camera/perf/b$a;

.field public static final enum STATE_PREVIEW:Lcom/oplus/camera/perf/b$a;

.field public static final enum STATE_SWITCHING_CAMERA:Lcom/oplus/camera/perf/b$a;

.field public static final enum STATE_SWITCH_MODE:Lcom/oplus/camera/perf/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 50
    new-instance v0, Lcom/oplus/camera/perf/b$a;

    const/4 v1, 0x0

    const-string v2, "STATE_CLOSED"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/perf/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/b$a;->STATE_CLOSED:Lcom/oplus/camera/perf/b$a;

    .line 51
    new-instance v0, Lcom/oplus/camera/perf/b$a;

    const/4 v2, 0x1

    const-string v3, "STATE_LAUNCHING"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/perf/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    .line 52
    new-instance v0, Lcom/oplus/camera/perf/b$a;

    const/4 v3, 0x2

    const-string v4, "STATE_SWITCHING_CAMERA"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/perf/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/b$a;->STATE_SWITCHING_CAMERA:Lcom/oplus/camera/perf/b$a;

    .line 53
    new-instance v0, Lcom/oplus/camera/perf/b$a;

    const/4 v4, 0x3

    const-string v5, "STATE_SWITCH_MODE"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/perf/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/b$a;->STATE_SWITCH_MODE:Lcom/oplus/camera/perf/b$a;

    .line 54
    new-instance v0, Lcom/oplus/camera/perf/b$a;

    const/4 v5, 0x4

    const-string v6, "STATE_PAUSE"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/perf/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/b$a;->STATE_PAUSE:Lcom/oplus/camera/perf/b$a;

    .line 55
    new-instance v0, Lcom/oplus/camera/perf/b$a;

    const/4 v6, 0x5

    const-string v7, "STATE_PREVIEW"

    invoke-direct {v0, v7, v6}, Lcom/oplus/camera/perf/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/perf/b$a;->STATE_PREVIEW:Lcom/oplus/camera/perf/b$a;

    const/4 v0, 0x6

    .line 49
    new-array v0, v0, [Lcom/oplus/camera/perf/b$a;

    sget-object v7, Lcom/oplus/camera/perf/b$a;->STATE_CLOSED:Lcom/oplus/camera/perf/b$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/perf/b$a;->STATE_SWITCHING_CAMERA:Lcom/oplus/camera/perf/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/perf/b$a;->STATE_SWITCH_MODE:Lcom/oplus/camera/perf/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/perf/b$a;->STATE_PAUSE:Lcom/oplus/camera/perf/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/camera/perf/b$a;->STATE_PREVIEW:Lcom/oplus/camera/perf/b$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oplus/camera/perf/b$a;->$VALUES:[Lcom/oplus/camera/perf/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/perf/b$a;
    .locals 1

    .line 49
    const-class v0, Lcom/oplus/camera/perf/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/perf/b$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/perf/b$a;
    .locals 1

    .line 49
    sget-object v0, Lcom/oplus/camera/perf/b$a;->$VALUES:[Lcom/oplus/camera/perf/b$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/perf/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/perf/b$a;

    return-object v0
.end method

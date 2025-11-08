.class public final enum Landroidx/room/g$c;
.super Ljava/lang/Enum;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/room/g$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/room/g$c;

.field public static final enum AUTOMATIC:Landroidx/room/g$c;

.field public static final enum TRUNCATE:Landroidx/room/g$c;

.field public static final enum WRITE_AHEAD_LOGGING:Landroidx/room/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 493
    new-instance v0, Landroidx/room/g$c;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Landroidx/room/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/g$c;->AUTOMATIC:Landroidx/room/g$c;

    .line 498
    new-instance v0, Landroidx/room/g$c;

    const/4 v2, 0x1

    const-string v3, "TRUNCATE"

    invoke-direct {v0, v3, v2}, Landroidx/room/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/g$c;->TRUNCATE:Landroidx/room/g$c;

    .line 503
    new-instance v0, Landroidx/room/g$c;

    const/4 v3, 0x2

    const-string v4, "WRITE_AHEAD_LOGGING"

    invoke-direct {v0, v4, v3}, Landroidx/room/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/g$c;->WRITE_AHEAD_LOGGING:Landroidx/room/g$c;

    const/4 v0, 0x3

    .line 484
    new-array v0, v0, [Landroidx/room/g$c;

    sget-object v4, Landroidx/room/g$c;->AUTOMATIC:Landroidx/room/g$c;

    aput-object v4, v0, v1

    sget-object v1, Landroidx/room/g$c;->TRUNCATE:Landroidx/room/g$c;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/room/g$c;->WRITE_AHEAD_LOGGING:Landroidx/room/g$c;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/room/g$c;->$VALUES:[Landroidx/room/g$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 2

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/g$c;
    .locals 1

    .line 484
    const-class v0, Landroidx/room/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/g$c;

    return-object p0
.end method

.method public static values()[Landroidx/room/g$c;
    .locals 1

    .line 484
    sget-object v0, Landroidx/room/g$c;->$VALUES:[Landroidx/room/g$c;

    invoke-virtual {v0}, [Landroidx/room/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/g$c;

    return-object v0
.end method


# virtual methods
.method resolve(Landroid/content/Context;)Landroidx/room/g$c;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 512
    sget-object v0, Landroidx/room/g$c;->AUTOMATIC:Landroidx/room/g$c;

    if-eq p0, v0, :cond_0

    return-object p0

    .line 515
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p0, v0, :cond_1

    const-string p0, "activity"

    .line 517
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 518
    invoke-static {p0}, Landroidx/room/g$c;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 519
    sget-object p0, Landroidx/room/g$c;->WRITE_AHEAD_LOGGING:Landroidx/room/g$c;

    return-object p0

    .line 522
    :cond_1
    sget-object p0, Landroidx/room/g$c;->TRUNCATE:Landroidx/room/g$c;

    return-object p0
.end method

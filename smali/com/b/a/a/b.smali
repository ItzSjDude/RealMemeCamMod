.class public final enum Lcom/b/a/a/b;
.super Ljava/lang/Enum;
.source "AnimDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/b/a/a/b;

.field public static final enum ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

.field public static final enum ANIM_DIRECTION_DOLLYZOOM_BACKWARD:Lcom/b/a/a/b;

.field public static final enum ANIM_DIRECTION_DOLLYZOOM_FORWARD:Lcom/b/a/a/b;

.field public static final enum ANIM_DIRECTION_FIXEDGAZE_LEFT2RIGHT:Lcom/b/a/a/b;

.field public static final enum ANIM_DIRECTION_FIXEDGAZE_RIGHT2LEFT:Lcom/b/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/b/a/a/b;

    const/4 v1, 0x0

    const-string v2, "ANIM_DIRECTION_DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

    .line 5
    new-instance v0, Lcom/b/a/a/b;

    const/4 v2, 0x1

    const-string v3, "ANIM_DIRECTION_DOLLYZOOM_FORWARD"

    invoke-direct {v0, v3, v2}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_DOLLYZOOM_FORWARD:Lcom/b/a/a/b;

    .line 6
    new-instance v0, Lcom/b/a/a/b;

    const/4 v3, 0x2

    const-string v4, "ANIM_DIRECTION_DOLLYZOOM_BACKWARD"

    invoke-direct {v0, v4, v3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_DOLLYZOOM_BACKWARD:Lcom/b/a/a/b;

    .line 7
    new-instance v0, Lcom/b/a/a/b;

    const/4 v4, 0x3

    const-string v5, "ANIM_DIRECTION_FIXEDGAZE_LEFT2RIGHT"

    invoke-direct {v0, v5, v4}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_LEFT2RIGHT:Lcom/b/a/a/b;

    .line 8
    new-instance v0, Lcom/b/a/a/b;

    const/4 v5, 0x4

    const-string v6, "ANIM_DIRECTION_FIXEDGAZE_RIGHT2LEFT"

    invoke-direct {v0, v6, v5}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_RIGHT2LEFT:Lcom/b/a/a/b;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/b/a/a/b;

    sget-object v6, Lcom/b/a/a/b;->ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/b/a/a/b;->ANIM_DIRECTION_DOLLYZOOM_FORWARD:Lcom/b/a/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/b;->ANIM_DIRECTION_DOLLYZOOM_BACKWARD:Lcom/b/a/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_LEFT2RIGHT:Lcom/b/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_RIGHT2LEFT:Lcom/b/a/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/a/a/b;->$VALUES:[Lcom/b/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/b;
    .locals 1

    .line 3
    const-class v0, Lcom/b/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/b;

    return-object p0
.end method

.method public static values()[Lcom/b/a/a/b;
    .locals 1

    .line 3
    sget-object v0, Lcom/b/a/a/b;->$VALUES:[Lcom/b/a/a/b;

    invoke-virtual {v0}, [Lcom/b/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/b;

    return-object v0
.end method

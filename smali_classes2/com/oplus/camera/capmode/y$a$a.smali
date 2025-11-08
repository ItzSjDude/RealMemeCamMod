.class final enum Lcom/oplus/camera/capmode/y$a$a;
.super Ljava/lang/Enum;
.source "XPanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/capmode/y$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/capmode/y$a$a;

.field public static final enum ANIMATING_COMPLETED:Lcom/oplus/camera/capmode/y$a$a;

.field public static final enum ANIMATION_ANIMATING:Lcom/oplus/camera/capmode/y$a$a;

.field public static final enum ANIMATION_IDLE:Lcom/oplus/camera/capmode/y$a$a;

.field public static final enum ANIMATION_STARTED:Lcom/oplus/camera/capmode/y$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 981
    new-instance v0, Lcom/oplus/camera/capmode/y$a$a;

    const/4 v1, 0x0

    const-string v2, "ANIMATION_IDLE"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/capmode/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_IDLE:Lcom/oplus/camera/capmode/y$a$a;

    .line 982
    new-instance v0, Lcom/oplus/camera/capmode/y$a$a;

    const/4 v2, 0x1

    const-string v3, "ANIMATION_STARTED"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/capmode/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_STARTED:Lcom/oplus/camera/capmode/y$a$a;

    .line 983
    new-instance v0, Lcom/oplus/camera/capmode/y$a$a;

    const/4 v3, 0x2

    const-string v4, "ANIMATION_ANIMATING"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/capmode/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_ANIMATING:Lcom/oplus/camera/capmode/y$a$a;

    .line 984
    new-instance v0, Lcom/oplus/camera/capmode/y$a$a;

    const/4 v4, 0x3

    const-string v5, "ANIMATING_COMPLETED"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/capmode/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATING_COMPLETED:Lcom/oplus/camera/capmode/y$a$a;

    const/4 v0, 0x4

    .line 980
    new-array v0, v0, [Lcom/oplus/camera/capmode/y$a$a;

    sget-object v5, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_IDLE:Lcom/oplus/camera/capmode/y$a$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_STARTED:Lcom/oplus/camera/capmode/y$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_ANIMATING:Lcom/oplus/camera/capmode/y$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/capmode/y$a$a;->ANIMATING_COMPLETED:Lcom/oplus/camera/capmode/y$a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oplus/camera/capmode/y$a$a;->$VALUES:[Lcom/oplus/camera/capmode/y$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 980
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/capmode/y$a$a;
    .locals 1

    .line 980
    const-class v0, Lcom/oplus/camera/capmode/y$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/capmode/y$a$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/capmode/y$a$a;
    .locals 1

    .line 980
    sget-object v0, Lcom/oplus/camera/capmode/y$a$a;->$VALUES:[Lcom/oplus/camera/capmode/y$a$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/capmode/y$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/capmode/y$a$a;

    return-object v0
.end method

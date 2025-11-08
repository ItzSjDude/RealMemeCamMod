.class public final enum Lcom/oplus/c/a/d$a;
.super Ljava/lang/Enum;
.source "LightVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/c/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/c/a/d$a;

.field public static final enum MEDIA_PLAYER:Lcom/oplus/c/a/d$a;

.field public static final enum TBL:Lcom/oplus/c/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/c/a/d$a;

    new-instance v1, Lcom/oplus/c/a/d$a;

    const/4 v2, 0x0

    const-string v3, "TBL"

    invoke-direct {v1, v3, v2}, Lcom/oplus/c/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/c/a/d$a;->TBL:Lcom/oplus/c/a/d$a;

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/c/a/d$a;

    const/4 v2, 0x1

    const-string v3, "MEDIA_PLAYER"

    invoke-direct {v1, v3, v2}, Lcom/oplus/c/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/c/a/d$a;->MEDIA_PLAYER:Lcom/oplus/c/a/d$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/c/a/d$a;->$VALUES:[Lcom/oplus/c/a/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/c/a/d$a;
    .locals 1

    const-class v0, Lcom/oplus/c/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/d$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/c/a/d$a;
    .locals 1

    sget-object v0, Lcom/oplus/c/a/d$a;->$VALUES:[Lcom/oplus/c/a/d$a;

    invoke-virtual {v0}, [Lcom/oplus/c/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/c/a/d$a;

    return-object v0
.end method

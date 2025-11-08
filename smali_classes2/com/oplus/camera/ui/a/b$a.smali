.class public final enum Lcom/oplus/camera/ui/a/b$a;
.super Ljava/lang/Enum;
.source "HintModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/ui/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/ui/a/b$a;

.field public static final enum CONDITION:Lcom/oplus/camera/ui/a/b$a;

.field public static final enum SPECIAL:Lcom/oplus/camera/ui/a/b$a;

.field public static final enum TEMP:Lcom/oplus/camera/ui/a/b$a;

.field public static final enum TEMP_COMPATIBLE:Lcom/oplus/camera/ui/a/b$a;

.field public static final enum UNKNOWN:Lcom/oplus/camera/ui/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/oplus/camera/ui/a/b$a;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/a/b$a;->UNKNOWN:Lcom/oplus/camera/ui/a/b$a;

    .line 15
    new-instance v0, Lcom/oplus/camera/ui/a/b$a;

    const/4 v2, 0x1

    const-string v3, "SPECIAL"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    .line 16
    new-instance v0, Lcom/oplus/camera/ui/a/b$a;

    const/4 v3, 0x2

    const-string v4, "CONDITION"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/a/b$a;->CONDITION:Lcom/oplus/camera/ui/a/b$a;

    .line 17
    new-instance v0, Lcom/oplus/camera/ui/a/b$a;

    const/4 v4, 0x3

    const-string v5, "TEMP"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    .line 18
    new-instance v0, Lcom/oplus/camera/ui/a/b$a;

    const/4 v5, 0x4

    const-string v6, "TEMP_COMPATIBLE"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/ui/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/a/b$a;->TEMP_COMPATIBLE:Lcom/oplus/camera/ui/a/b$a;

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [Lcom/oplus/camera/ui/a/b$a;

    sget-object v6, Lcom/oplus/camera/ui/a/b$a;->UNKNOWN:Lcom/oplus/camera/ui/a/b$a;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->CONDITION:Lcom/oplus/camera/ui/a/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->TEMP_COMPATIBLE:Lcom/oplus/camera/ui/a/b$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/camera/ui/a/b$a;->$VALUES:[Lcom/oplus/camera/ui/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/ui/a/b$a;
    .locals 1

    .line 13
    const-class v0, Lcom/oplus/camera/ui/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/ui/a/b$a;
    .locals 1

    .line 13
    sget-object v0, Lcom/oplus/camera/ui/a/b$a;->$VALUES:[Lcom/oplus/camera/ui/a/b$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/ui/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/ui/a/b$a;

    return-object v0
.end method

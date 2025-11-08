.class public final enum Lcom/b/a/a/d;
.super Ljava/lang/Enum;
.source "AnimID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/b/a/a/d;

.field public static final enum Circle:Lcom/b/a/a/d;

.field public static final enum DollyZoom:Lcom/b/a/a/d;

.field public static final enum FixedGaze:Lcom/b/a/a/d;

.field public static final enum None:Lcom/b/a/a/d;

.field public static final enum Swing:Lcom/b/a/a/d;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/b/a/a/d;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v1}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/d;->None:Lcom/b/a/a/d;

    .line 5
    new-instance v0, Lcom/b/a/a/d;

    const/4 v2, 0x1

    const-string v3, "FixedGaze"

    invoke-direct {v0, v3, v2, v2}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/d;->FixedGaze:Lcom/b/a/a/d;

    .line 6
    new-instance v0, Lcom/b/a/a/d;

    const/4 v3, 0x2

    const-string v4, "DollyZoom"

    invoke-direct {v0, v4, v3, v3}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/d;->DollyZoom:Lcom/b/a/a/d;

    .line 7
    new-instance v0, Lcom/b/a/a/d;

    const/4 v4, 0x3

    const-string v5, "Circle"

    invoke-direct {v0, v5, v4, v4}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/d;->Circle:Lcom/b/a/a/d;

    .line 8
    new-instance v0, Lcom/b/a/a/d;

    const/4 v5, 0x4

    const-string v6, "Swing"

    invoke-direct {v0, v6, v5, v5}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/d;->Swing:Lcom/b/a/a/d;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/b/a/a/d;

    sget-object v6, Lcom/b/a/a/d;->None:Lcom/b/a/a/d;

    aput-object v6, v0, v1

    sget-object v1, Lcom/b/a/a/d;->FixedGaze:Lcom/b/a/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/d;->DollyZoom:Lcom/b/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/a/d;->Circle:Lcom/b/a/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/a/d;->Swing:Lcom/b/a/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/a/a/d;->$VALUES:[Lcom/b/a/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/b/a/a/d;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/d;
    .locals 1

    .line 3
    const-class v0, Lcom/b/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/d;

    return-object p0
.end method

.method public static values()[Lcom/b/a/a/d;
    .locals 1

    .line 3
    sget-object v0, Lcom/b/a/a/d;->$VALUES:[Lcom/b/a/a/d;

    invoke-virtual {v0}, [Lcom/b/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/d;

    return-object v0
.end method

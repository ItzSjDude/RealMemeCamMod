.class public final enum Lcom/coui/responsiveui/config/UIConfig$Status;
.super Ljava/lang/Enum;
.source "UIConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/responsiveui/config/UIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/responsiveui/config/UIConfig$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum UNFOLDING:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 96
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v1, 0x0

    const-string v2, "FOLD"

    const-string v3, "fd"

    invoke-direct {v0, v2, v1, v3}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    .line 97
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v2, 0x1

    const-string v3, "UNFOLDING"

    const-string v4, "fding"

    invoke-direct {v0, v3, v2, v4}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLDING:Lcom/coui/responsiveui/config/UIConfig$Status;

    .line 98
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v3, 0x2

    const-string v4, "UNFOLD"

    const-string v5, "ufd"

    invoke-direct {v0, v4, v3, v5}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    .line 99
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    const-string v6, "unknown"

    invoke-direct {v0, v5, v4, v6}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v0, 0x4

    .line 95
    new-array v0, v0, [Lcom/coui/responsiveui/config/UIConfig$Status;

    sget-object v5, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    aput-object v5, v0, v1

    sget-object v1, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLDING:Lcom/coui/responsiveui/config/UIConfig$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coui/responsiveui/config/UIConfig$Status;->UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->$VALUES:[Lcom/coui/responsiveui/config/UIConfig$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 101
    iput-object p1, p0, Lcom/coui/responsiveui/config/UIConfig$Status;->mName:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/coui/responsiveui/config/UIConfig$Status;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/responsiveui/config/UIConfig$Status;
    .locals 1

    .line 95
    const-class v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIConfig$Status;

    return-object p0
.end method

.method public static values()[Lcom/coui/responsiveui/config/UIConfig$Status;
    .locals 1

    .line 95
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->$VALUES:[Lcom/coui/responsiveui/config/UIConfig$Status;

    invoke-virtual {v0}, [Lcom/coui/responsiveui/config/UIConfig$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/responsiveui/config/UIConfig$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig$Status;->mName:Ljava/lang/String;

    return-object p0
.end method

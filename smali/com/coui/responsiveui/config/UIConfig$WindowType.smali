.class public final enum Lcom/coui/responsiveui/config/UIConfig$WindowType;
.super Ljava/lang/Enum;
.source "UIConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/responsiveui/config/UIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/responsiveui/config/UIConfig$WindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/responsiveui/config/UIConfig$WindowType;

.field public static final enum LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

.field public static final enum MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

.field public static final enum SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 113
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const/4 v1, 0x0

    const-string v2, "SMALL"

    invoke-direct {v0, v2, v1}, Lcom/coui/responsiveui/config/UIConfig$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    .line 114
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v2}, Lcom/coui/responsiveui/config/UIConfig$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    .line 115
    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const/4 v3, 0x2

    const-string v4, "LARGE"

    invoke-direct {v0, v4, v3}, Lcom/coui/responsiveui/config/UIConfig$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const/4 v0, 0x3

    .line 112
    new-array v0, v0, [Lcom/coui/responsiveui/config/UIConfig$WindowType;

    sget-object v4, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coui/responsiveui/config/UIConfig$WindowType;->MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coui/responsiveui/config/UIConfig$WindowType;->LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->$VALUES:[Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .locals 1

    .line 112
    const-class v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-object p0
.end method

.method public static values()[Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .locals 1

    .line 112
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->$VALUES:[Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-virtual {v0}, [Lcom/coui/responsiveui/config/UIConfig$WindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-object v0
.end method

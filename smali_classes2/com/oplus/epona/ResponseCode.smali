.class public final enum Lcom/oplus/epona/ResponseCode;
.super Ljava/lang/Enum;
.source "ResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/epona/ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/epona/ResponseCode;

.field public static final enum FAILED:Lcom/oplus/epona/ResponseCode;

.field public static final enum PERMISSION_DENY:Lcom/oplus/epona/ResponseCode;

.field public static final enum SUCCESS:Lcom/oplus/epona/ResponseCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/oplus/epona/ResponseCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/epona/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/epona/ResponseCode;->SUCCESS:Lcom/oplus/epona/ResponseCode;

    .line 5
    new-instance v0, Lcom/oplus/epona/ResponseCode;

    const-string v3, "FAILED"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lcom/oplus/epona/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/epona/ResponseCode;->FAILED:Lcom/oplus/epona/ResponseCode;

    .line 6
    new-instance v0, Lcom/oplus/epona/ResponseCode;

    const/4 v3, 0x2

    const-string v4, "PERMISSION_DENY"

    const/4 v5, -0x2

    invoke-direct {v0, v4, v3, v5}, Lcom/oplus/epona/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/epona/ResponseCode;->PERMISSION_DENY:Lcom/oplus/epona/ResponseCode;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/oplus/epona/ResponseCode;

    sget-object v4, Lcom/oplus/epona/ResponseCode;->SUCCESS:Lcom/oplus/epona/ResponseCode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oplus/epona/ResponseCode;->FAILED:Lcom/oplus/epona/ResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/epona/ResponseCode;->PERMISSION_DENY:Lcom/oplus/epona/ResponseCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oplus/epona/ResponseCode;->$VALUES:[Lcom/oplus/epona/ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/oplus/epona/ResponseCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/epona/ResponseCode;
    .locals 1

    .line 3
    const-class v0, Lcom/oplus/epona/ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/oplus/epona/ResponseCode;
    .locals 1

    .line 3
    sget-object v0, Lcom/oplus/epona/ResponseCode;->$VALUES:[Lcom/oplus/epona/ResponseCode;

    invoke-virtual {v0}, [Lcom/oplus/epona/ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/epona/ResponseCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/oplus/epona/ResponseCode;->code:I

    return p0
.end method

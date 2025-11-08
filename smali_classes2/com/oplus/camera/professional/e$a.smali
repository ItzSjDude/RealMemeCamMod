.class public final enum Lcom/oplus/camera/professional/e$a;
.super Ljava/lang/Enum;
.source "HSListProfessionalModeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/professional/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/professional/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/professional/e$a;

.field public static final enum AF_PRESSED:Lcom/oplus/camera/professional/e$a;

.field public static final enum EV_PRESSED:Lcom/oplus/camera/professional/e$a;

.field public static final enum ISO_PRESSED:Lcom/oplus/camera/professional/e$a;

.field public static final enum NO_PRESSED:Lcom/oplus/camera/professional/e$a;

.field public static final enum SHUTTER_PRESSED:Lcom/oplus/camera/professional/e$a;

.field public static final enum WB_PRESSED:Lcom/oplus/camera/professional/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 67
    new-instance v0, Lcom/oplus/camera/professional/e$a;

    const/4 v1, 0x0

    const-string v2, "NO_PRESSED"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/professional/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/professional/e$a;->NO_PRESSED:Lcom/oplus/camera/professional/e$a;

    .line 68
    new-instance v0, Lcom/oplus/camera/professional/e$a;

    const/4 v2, 0x1

    const-string v3, "ISO_PRESSED"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/professional/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/professional/e$a;->ISO_PRESSED:Lcom/oplus/camera/professional/e$a;

    .line 69
    new-instance v0, Lcom/oplus/camera/professional/e$a;

    const/4 v3, 0x2

    const-string v4, "SHUTTER_PRESSED"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/professional/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/professional/e$a;->SHUTTER_PRESSED:Lcom/oplus/camera/professional/e$a;

    .line 70
    new-instance v0, Lcom/oplus/camera/professional/e$a;

    const/4 v4, 0x3

    const-string v5, "WB_PRESSED"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/professional/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/professional/e$a;->WB_PRESSED:Lcom/oplus/camera/professional/e$a;

    .line 71
    new-instance v0, Lcom/oplus/camera/professional/e$a;

    const/4 v5, 0x4

    const-string v6, "AF_PRESSED"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/professional/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/professional/e$a;->AF_PRESSED:Lcom/oplus/camera/professional/e$a;

    .line 72
    new-instance v0, Lcom/oplus/camera/professional/e$a;

    const/4 v6, 0x5

    const-string v7, "EV_PRESSED"

    invoke-direct {v0, v7, v6}, Lcom/oplus/camera/professional/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/professional/e$a;->EV_PRESSED:Lcom/oplus/camera/professional/e$a;

    const/4 v0, 0x6

    .line 66
    new-array v0, v0, [Lcom/oplus/camera/professional/e$a;

    sget-object v7, Lcom/oplus/camera/professional/e$a;->NO_PRESSED:Lcom/oplus/camera/professional/e$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oplus/camera/professional/e$a;->ISO_PRESSED:Lcom/oplus/camera/professional/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/professional/e$a;->SHUTTER_PRESSED:Lcom/oplus/camera/professional/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/professional/e$a;->WB_PRESSED:Lcom/oplus/camera/professional/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/professional/e$a;->AF_PRESSED:Lcom/oplus/camera/professional/e$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/camera/professional/e$a;->EV_PRESSED:Lcom/oplus/camera/professional/e$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oplus/camera/professional/e$a;->$VALUES:[Lcom/oplus/camera/professional/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/professional/e$a;
    .locals 1

    .line 66
    const-class v0, Lcom/oplus/camera/professional/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/e$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/professional/e$a;
    .locals 1

    .line 66
    sget-object v0, Lcom/oplus/camera/professional/e$a;->$VALUES:[Lcom/oplus/camera/professional/e$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/professional/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/professional/e$a;

    return-object v0
.end method

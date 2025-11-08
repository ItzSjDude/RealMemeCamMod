.class public final enum Lcom/oplus/camera/o/b$a;
.super Ljava/lang/Enum;
.source "QrCodeResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/o/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/o/b$a;

.field public static final enum HTTP:Lcom/oplus/camera/o/b$a;

.field public static final enum INSTANT:Lcom/oplus/camera/o/b$a;

.field public static final enum NONE:Lcom/oplus/camera/o/b$a;

.field public static final enum WIFI:Lcom/oplus/camera/o/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/oplus/camera/o/b$a;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/o/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/o/b$a;->HTTP:Lcom/oplus/camera/o/b$a;

    .line 9
    new-instance v0, Lcom/oplus/camera/o/b$a;

    const/4 v2, 0x1

    const-string v3, "INSTANT"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/o/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/o/b$a;->INSTANT:Lcom/oplus/camera/o/b$a;

    .line 10
    new-instance v0, Lcom/oplus/camera/o/b$a;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/o/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/o/b$a;->WIFI:Lcom/oplus/camera/o/b$a;

    .line 11
    new-instance v0, Lcom/oplus/camera/o/b$a;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/o/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/o/b$a;->NONE:Lcom/oplus/camera/o/b$a;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lcom/oplus/camera/o/b$a;

    sget-object v5, Lcom/oplus/camera/o/b$a;->HTTP:Lcom/oplus/camera/o/b$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oplus/camera/o/b$a;->INSTANT:Lcom/oplus/camera/o/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/o/b$a;->WIFI:Lcom/oplus/camera/o/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/o/b$a;->NONE:Lcom/oplus/camera/o/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oplus/camera/o/b$a;->$VALUES:[Lcom/oplus/camera/o/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/o/b$a;
    .locals 1

    .line 7
    const-class v0, Lcom/oplus/camera/o/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/o/b$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/o/b$a;
    .locals 1

    .line 7
    sget-object v0, Lcom/oplus/camera/o/b$a;->$VALUES:[Lcom/oplus/camera/o/b$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/o/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/o/b$a;

    return-object v0
.end method

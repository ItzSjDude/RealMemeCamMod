.class public final enum Lcom/oplus/camera/ui/preview/ai$a;
.super Ljava/lang/Enum;
.source "ZoomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/ui/preview/ai$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/ui/preview/ai$a;

.field public static final enum ICON_ONLY:Lcom/oplus/camera/ui/preview/ai$a;

.field public static final enum NORMAL:Lcom/oplus/camera/ui/preview/ai$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 380
    new-instance v0, Lcom/oplus/camera/ui/preview/ai$a;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/preview/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$a;->NORMAL:Lcom/oplus/camera/ui/preview/ai$a;

    .line 381
    new-instance v0, Lcom/oplus/camera/ui/preview/ai$a;

    const/4 v2, 0x1

    const-string v3, "ICON_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/ui/preview/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$a;->ICON_ONLY:Lcom/oplus/camera/ui/preview/ai$a;

    const/4 v0, 0x2

    .line 379
    new-array v0, v0, [Lcom/oplus/camera/ui/preview/ai$a;

    sget-object v3, Lcom/oplus/camera/ui/preview/ai$a;->NORMAL:Lcom/oplus/camera/ui/preview/ai$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oplus/camera/ui/preview/ai$a;->ICON_ONLY:Lcom/oplus/camera/ui/preview/ai$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$a;->$VALUES:[Lcom/oplus/camera/ui/preview/ai$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/ui/preview/ai$a;
    .locals 1

    .line 379
    const-class v0, Lcom/oplus/camera/ui/preview/ai$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/ai$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/ui/preview/ai$a;
    .locals 1

    .line 379
    sget-object v0, Lcom/oplus/camera/ui/preview/ai$a;->$VALUES:[Lcom/oplus/camera/ui/preview/ai$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/ui/preview/ai$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/ui/preview/ai$a;

    return-object v0
.end method

.class public final enum Lcom/oplus/camera/ui/preview/ai$b;
.super Ljava/lang/Enum;
.source "ZoomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/ui/preview/ai$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/ui/preview/ai$b;

.field public static final enum TELE:Lcom/oplus/camera/ui/preview/ai$b;

.field public static final enum ULTRA_WIDE:Lcom/oplus/camera/ui/preview/ai$b;

.field public static final enum WIDE:Lcom/oplus/camera/ui/preview/ai$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 374
    new-instance v0, Lcom/oplus/camera/ui/preview/ai$b;

    const/4 v1, 0x0

    const-string v2, "ULTRA_WIDE"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/preview/ai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$b;->ULTRA_WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    .line 375
    new-instance v0, Lcom/oplus/camera/ui/preview/ai$b;

    const/4 v2, 0x1

    const-string v3, "WIDE"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/ui/preview/ai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$b;->WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    .line 376
    new-instance v0, Lcom/oplus/camera/ui/preview/ai$b;

    const/4 v3, 0x2

    const-string v4, "TELE"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/ui/preview/ai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$b;->TELE:Lcom/oplus/camera/ui/preview/ai$b;

    const/4 v0, 0x3

    .line 373
    new-array v0, v0, [Lcom/oplus/camera/ui/preview/ai$b;

    sget-object v4, Lcom/oplus/camera/ui/preview/ai$b;->ULTRA_WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oplus/camera/ui/preview/ai$b;->WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/ui/preview/ai$b;->TELE:Lcom/oplus/camera/ui/preview/ai$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oplus/camera/ui/preview/ai$b;->$VALUES:[Lcom/oplus/camera/ui/preview/ai$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/ui/preview/ai$b;
    .locals 1

    .line 373
    const-class v0, Lcom/oplus/camera/ui/preview/ai$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/ai$b;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/ui/preview/ai$b;
    .locals 1

    .line 373
    sget-object v0, Lcom/oplus/camera/ui/preview/ai$b;->$VALUES:[Lcom/oplus/camera/ui/preview/ai$b;

    invoke-virtual {v0}, [Lcom/oplus/camera/ui/preview/ai$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/ui/preview/ai$b;

    return-object v0
.end method

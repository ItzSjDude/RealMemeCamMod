.class final enum Lcom/oplus/camera/ui/preview/a/ab$a;
.super Ljava/lang/Enum;
.source "TiltShiftTexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/ui/preview/a/ab$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/ui/preview/a/ab$a;

.field public static final enum BLUR_LEVEL:Lcom/oplus/camera/ui/preview/a/ab$a;

.field public static final enum EROSION_VALUE:Lcom/oplus/camera/ui/preview/a/ab$a;

.field public static final enum HEIGHT_SCALE:Lcom/oplus/camera/ui/preview/a/ab$a;

.field public static final enum MIN_AREA_SIZE:Lcom/oplus/camera/ui/preview/a/ab$a;

.field public static final enum ROTATION_ANGLE:Lcom/oplus/camera/ui/preview/a/ab$a;

.field public static final enum WIDTH_SCALE:Lcom/oplus/camera/ui/preview/a/ab$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    new-instance v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v1, 0x0

    const-string v2, "BLUR_LEVEL"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/ab$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->BLUR_LEVEL:Lcom/oplus/camera/ui/preview/a/ab$a;

    .line 54
    new-instance v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v2, 0x1

    const-string v3, "WIDTH_SCALE"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/ui/preview/a/ab$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->WIDTH_SCALE:Lcom/oplus/camera/ui/preview/a/ab$a;

    .line 55
    new-instance v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v3, 0x2

    const-string v4, "HEIGHT_SCALE"

    invoke-direct {v0, v4, v3}, Lcom/oplus/camera/ui/preview/a/ab$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->HEIGHT_SCALE:Lcom/oplus/camera/ui/preview/a/ab$a;

    .line 56
    new-instance v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v4, 0x3

    const-string v5, "MIN_AREA_SIZE"

    invoke-direct {v0, v5, v4}, Lcom/oplus/camera/ui/preview/a/ab$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->MIN_AREA_SIZE:Lcom/oplus/camera/ui/preview/a/ab$a;

    .line 57
    new-instance v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v5, 0x4

    const-string v6, "EROSION_VALUE"

    invoke-direct {v0, v6, v5}, Lcom/oplus/camera/ui/preview/a/ab$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->EROSION_VALUE:Lcom/oplus/camera/ui/preview/a/ab$a;

    .line 58
    new-instance v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v6, 0x5

    const-string v7, "ROTATION_ANGLE"

    invoke-direct {v0, v7, v6}, Lcom/oplus/camera/ui/preview/a/ab$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->ROTATION_ANGLE:Lcom/oplus/camera/ui/preview/a/ab$a;

    const/4 v0, 0x6

    .line 52
    new-array v0, v0, [Lcom/oplus/camera/ui/preview/a/ab$a;

    sget-object v7, Lcom/oplus/camera/ui/preview/a/ab$a;->BLUR_LEVEL:Lcom/oplus/camera/ui/preview/a/ab$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oplus/camera/ui/preview/a/ab$a;->WIDTH_SCALE:Lcom/oplus/camera/ui/preview/a/ab$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/camera/ui/preview/a/ab$a;->HEIGHT_SCALE:Lcom/oplus/camera/ui/preview/a/ab$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/camera/ui/preview/a/ab$a;->MIN_AREA_SIZE:Lcom/oplus/camera/ui/preview/a/ab$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/camera/ui/preview/a/ab$a;->EROSION_VALUE:Lcom/oplus/camera/ui/preview/a/ab$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/camera/ui/preview/a/ab$a;->ROTATION_ANGLE:Lcom/oplus/camera/ui/preview/a/ab$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->$VALUES:[Lcom/oplus/camera/ui/preview/a/ab$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/ui/preview/a/ab$a;
    .locals 1

    .line 52
    const-class v0, Lcom/oplus/camera/ui/preview/a/ab$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/ab$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/ui/preview/a/ab$a;
    .locals 1

    .line 52
    sget-object v0, Lcom/oplus/camera/ui/preview/a/ab$a;->$VALUES:[Lcom/oplus/camera/ui/preview/a/ab$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/ui/preview/a/ab$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/ui/preview/a/ab$a;

    return-object v0
.end method

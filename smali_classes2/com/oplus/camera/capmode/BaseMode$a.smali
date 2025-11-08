.class public final enum Lcom/oplus/camera/capmode/BaseMode$a;
.super Ljava/lang/Enum;
.source "BaseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/BaseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/capmode/BaseMode$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/capmode/BaseMode$a;

.field public static final enum INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

.field public static final enum OUTPUT:Lcom/oplus/camera/capmode/BaseMode$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7859
    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$a;

    const/4 v1, 0x0

    const-string v2, "INPUT"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/capmode/BaseMode$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/capmode/BaseMode$a;->INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    .line 7860
    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$a;

    const/4 v2, 0x1

    const-string v3, "OUTPUT"

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/capmode/BaseMode$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/capmode/BaseMode$a;->OUTPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    const/4 v0, 0x2

    .line 7858
    new-array v0, v0, [Lcom/oplus/camera/capmode/BaseMode$a;

    sget-object v3, Lcom/oplus/camera/capmode/BaseMode$a;->INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oplus/camera/capmode/BaseMode$a;->OUTPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/camera/capmode/BaseMode$a;->$VALUES:[Lcom/oplus/camera/capmode/BaseMode$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7858
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/capmode/BaseMode$a;
    .locals 1

    .line 7858
    const-class v0, Lcom/oplus/camera/capmode/BaseMode$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/capmode/BaseMode$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/capmode/BaseMode$a;
    .locals 1

    .line 7858
    sget-object v0, Lcom/oplus/camera/capmode/BaseMode$a;->$VALUES:[Lcom/oplus/camera/capmode/BaseMode$a;

    invoke-virtual {v0}, [Lcom/oplus/camera/capmode/BaseMode$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/capmode/BaseMode$a;

    return-object v0
.end method

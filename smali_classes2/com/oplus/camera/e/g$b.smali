.class Lcom/oplus/camera/e/g$b;
.super Ljava/lang/Object;
.source "OneCameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

.field b:Lcom/oplus/camera/e/d$d;

.field c:I

.field final synthetic d:Lcom/oplus/camera/e/g;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/e/g;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/oplus/camera/e/g$b;->d:Lcom/oplus/camera/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 565
    iput-object p1, p0, Lcom/oplus/camera/e/g$b;->a:Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 566
    iput-object p1, p0, Lcom/oplus/camera/e/g$b;->b:Lcom/oplus/camera/e/d$d;

    const/4 p1, 0x0

    .line 567
    iput p1, p0, Lcom/oplus/camera/e/g$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/e/g;Lcom/oplus/camera/e/g$1;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lcom/oplus/camera/e/g$b;-><init>(Lcom/oplus/camera/e/g;)V

    return-void
.end method

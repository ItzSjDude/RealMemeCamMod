.class public final Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
.super Ljava/lang/Object;
.source "CameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureResultKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mKeyName:Ljava/lang/String;

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1628
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mKeyName:Ljava/lang/String;

    .line 1629
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mType:Ljava/lang/Class;

    .line 1630
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mDefault:Ljava/lang/Object;

    .line 1633
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mKeyName:Ljava/lang/String;

    .line 1634
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mType:Ljava/lang/Class;

    .line 1635
    iput-object p3, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mDefault:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V
    .locals 0

    .line 1627
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDefault()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1652
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mDefault:Ljava/lang/Object;

    return-object p0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 0

    .line 1644
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mKeyName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1648
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mType:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

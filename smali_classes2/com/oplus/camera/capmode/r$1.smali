.class Lcom/oplus/camera/capmode/r$1;
.super Ljava/lang/Object;
.source "NightMode.java"

# interfaces
.implements Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/r;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/capmode/r$1;->a:Lcom/oplus/camera/capmode/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/capmode/r$1;->a:Lcom/oplus/camera/capmode/r;

    iget-object p1, p1, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/r$1;->a:Lcom/oplus/camera/capmode/r;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$1;->a:Lcom/oplus/camera/capmode/r;

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10032a

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method

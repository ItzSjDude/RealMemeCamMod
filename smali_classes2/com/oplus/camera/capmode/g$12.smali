.class Lcom/oplus/camera/capmode/g$12;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$12;->a:Lcom/oplus/camera/capmode/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$12;->a:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g$12;->a:Lcom/oplus/camera/capmode/g;

    .line 995
    invoke-static {v1}, Lcom/oplus/camera/capmode/g;->i(Lcom/oplus/camera/capmode/g;)Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g$12;->a:Lcom/oplus/camera/capmode/g;

    .line 996
    invoke-static {v1}, Lcom/oplus/camera/capmode/g;->j(Lcom/oplus/camera/capmode/g;)Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 997
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$12;->a:Lcom/oplus/camera/capmode/g;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    :cond_1
    return-void
.end method

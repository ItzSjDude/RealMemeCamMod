.class Lcom/oplus/camera/ui/preview/p$9;
.super Ljava/lang/Object;
.source "GradienterAssistView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/p;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/p;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$9;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDrawGradienter, run mbSensorRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p$9;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p;->s(Lcom/oplus/camera/ui/preview/p;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradienterAssistView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$9;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p;->s(Lcom/oplus/camera/ui/preview/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$9;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p$9;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p;->r(Lcom/oplus/camera/ui/preview/p;)Landroid/hardware/SensorEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 828
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p$9;->a:Lcom/oplus/camera/ui/preview/p;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;Z)Z

    :cond_1
    return-void
.end method

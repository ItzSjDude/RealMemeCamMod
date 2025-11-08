.class Lcom/oplus/camera/ui/preview/p$8;
.super Ljava/lang/Object;
.source "GradienterAssistView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/p;->a()V
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

    .line 765
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$8;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "GradienterAssistView"

    const-string v1, "startDrawGradienter, run register gravitySensor"

    .line 768
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$8;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 773
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 774
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$8;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->r(Lcom/oplus/camera/ui/preview/p;)Landroid/hardware/SensorEventCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 775
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$8;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v0, v3}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;Z)Z

    .line 776
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p$8;->a:Lcom/oplus/camera/ui/preview/p;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p;I)I

    :cond_0
    return-void
.end method

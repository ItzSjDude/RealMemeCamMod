.class Lcom/oplus/camera/capmode/s$1;
.super Landroid/hardware/SensorEventCallback;
.source "SensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/s;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/capmode/s$1;->a:Lcom/oplus/camera/capmode/s;

    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 33
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/s$1;->a:Lcom/oplus/camera/capmode/s;

    .line 34
    invoke-static {v0}, Lcom/oplus/camera/capmode/s;->a(Lcom/oplus/camera/capmode/s;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/s$1;->a:Lcom/oplus/camera/capmode/s;

    invoke-static {v2}, Lcom/oplus/camera/capmode/s;->b(Lcom/oplus/camera/capmode/s;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 36
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 40
    iget-object p1, p0, Lcom/oplus/camera/capmode/s$1;->a:Lcom/oplus/camera/capmode/s;

    invoke-static {p1}, Lcom/oplus/camera/capmode/s;->a(Lcom/oplus/camera/capmode/s;)Lcom/oplus/camera/capmode/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aJ()V

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/capmode/s$1;->a:Lcom/oplus/camera/capmode/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/capmode/s;->a(Lcom/oplus/camera/capmode/s;J)J

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

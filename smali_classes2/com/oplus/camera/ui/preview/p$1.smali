.class Lcom/oplus/camera/ui/preview/p$1;
.super Landroid/hardware/SensorEventCallback;
.source "GradienterAssistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/p;
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

    .line 122
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 125
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;[F)[F

    .line 129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v2

    const/4 v10, 0x1

    aget v5, v2, v10

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    .line 131
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v2

    const/4 v6, 0x2

    aget v6, v2, v6

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v7

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->c(Lcom/oplus/camera/ui/preview/p;)[I

    move-result-object v8

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->d(Lcom/oplus/camera/ui/preview/p;)[I

    move-result-object v9

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/oplusos/gradientereffects/GradienterNative;->processGravity(FFF[F[I[I)V

    .line 133
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->e(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p;[F)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    .line 135
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v2

    aget v2, v2, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/p;->e(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v4

    aget v4, v4, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    .line 137
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v2

    aget v2, v2, v10

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/p;->e(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v5

    aget v5, v5, v10

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->f(Lcom/oplus/camera/ui/preview/p;)I

    goto :goto_0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;I)I

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p;)[F

    move-result-object v3

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/preview/p;->c(Lcom/oplus/camera/ui/preview/p;[F)[F

    const/16 v2, 0xa

    .line 145
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/p;->g(Lcom/oplus/camera/ui/preview/p;)I

    move-result v3

    if-gt v2, v3, :cond_2

    return-void

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$1;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2, v0, v1}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p;J)V

    .line 157
    invoke-super {p0, p1}, Landroid/hardware/SensorEventCallback;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.class Lcom/oplus/camera/ac$a;
.super Ljava/lang/Object;
.source "SensorManagerClient.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ac;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ac;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 268
    iput p1, p0, Lcom/oplus/camera/ac$a;->b:I

    .line 269
    iput p1, p0, Lcom/oplus/camera/ac$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ac;Lcom/oplus/camera/ac$1;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lcom/oplus/camera/ac$a;-><init>(Lcom/oplus/camera/ac;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 278
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 279
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v0}, Lcom/oplus/camera/ac;->c(Lcom/oplus/camera/ac;)[F

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v4}, Lcom/oplus/camera/ac;->c(Lcom/oplus/camera/ac;)[F

    move-result-object v4

    array-length v4, v4

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 281
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v0}, Lcom/oplus/camera/ac;->d(Lcom/oplus/camera/ac;)[F

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v4}, Lcom/oplus/camera/ac;->d(Lcom/oplus/camera/ac;)[F

    move-result-object v4

    array-length v4, v4

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 288
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->e(Lcom/oplus/camera/ac;)[F

    move-result-object p1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v4}, Lcom/oplus/camera/ac;->c(Lcom/oplus/camera/ac;)[F

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v5}, Lcom/oplus/camera/ac;->d(Lcom/oplus/camera/ac;)[F

    move-result-object v5

    invoke-static {p1, v0, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 289
    iget-object p1, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->e(Lcom/oplus/camera/ac;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v0}, Lcom/oplus/camera/ac;->f(Lcom/oplus/camera/ac;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 290
    iget-object p1, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->f(Lcom/oplus/camera/ac;)[F

    move-result-object p1

    aget p1, p1, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v0}, Lcom/oplus/camera/ac;->f(Lcom/oplus/camera/ac;)[F

    move-result-object v0

    aget v0, v0, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 292
    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->b(II)I

    move-result v4

    .line 293
    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(II)V

    .line 295
    iget-object v5, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v5}, Lcom/oplus/camera/ac;->g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    .line 300
    :cond_3
    iget v5, p0, Lcom/oplus/camera/ac$a;->b:I

    if-ne p1, v5, :cond_5

    iget v5, p0, Lcom/oplus/camera/ac$a;->c:I

    if-eq v0, v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_6

    .line 303
    new-array v1, v1, [I

    aput p1, v1, v3

    aput v0, v1, v2

    .line 304
    iget-object v2, p0, Lcom/oplus/camera/ac$a;->a:Lcom/oplus/camera/ac;

    invoke-static {v2}, Lcom/oplus/camera/ac;->g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/oplus/camera/ac$e;->a([I)V

    .line 305
    iput p1, p0, Lcom/oplus/camera/ac$a;->b:I

    .line 306
    iput v0, p0, Lcom/oplus/camera/ac$a;->c:I

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged, orientationAngles: ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], orientation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorManagerClient"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

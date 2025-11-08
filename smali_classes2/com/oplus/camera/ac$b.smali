.class Lcom/oplus/camera/ac$b;
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
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:F

.field final synthetic c:Lcom/oplus/camera/ac;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ac;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/oplus/camera/ac$b;->c:Lcom/oplus/camera/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 319
    iput p1, p0, Lcom/oplus/camera/ac$b;->a:I

    const/4 p1, 0x0

    .line 320
    iput p1, p0, Lcom/oplus/camera/ac$b;->b:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ac;Lcom/oplus/camera/ac$1;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/oplus/camera/ac$b;-><init>(Lcom/oplus/camera/ac;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/oplus/camera/ac$b;->c:Lcom/oplus/camera/ac;

    invoke-static {v0}, Lcom/oplus/camera/ac;->g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/ac$b;->c:Lcom/oplus/camera/ac;

    invoke-static {p0}, Lcom/oplus/camera/ac;->g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ac$e;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/ac$b;->c:Lcom/oplus/camera/ac;

    invoke-static {v0}, Lcom/oplus/camera/ac;->g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object p0, p0, Lcom/oplus/camera/ac$b;->c:Lcom/oplus/camera/ac;

    invoke-static {p0}, Lcom/oplus/camera/ac;->g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ac$e;->b()V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 329
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    .line 331
    iget p1, p0, Lcom/oplus/camera/ac$b;->a:I

    rem-int/lit8 v2, p1, 0x5

    if-nez v2, :cond_0

    .line 332
    iput v0, p0, Lcom/oplus/camera/ac$b;->b:F

    .line 333
    iput v3, p0, Lcom/oplus/camera/ac$b;->a:I

    goto :goto_0

    .line 335
    :cond_0
    iget v2, p0, Lcom/oplus/camera/ac$b;->b:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/oplus/camera/ac$b;->b:F

    add-int/2addr p1, v3

    .line 336
    iput p1, p0, Lcom/oplus/camera/ac$b;->a:I

    :goto_0
    const p1, 0x3fcccccd    # 1.6f

    .line 339
    iget v0, p0, Lcom/oplus/camera/ac$b;->b:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/oplus/camera/ac$b;->a()V

    goto :goto_1

    :cond_1
    const-string p1, "com.oplus.touch.focus.weak.motion"

    .line 342
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x3e4ccccd    # 0.2f

    .line 343
    iget v0, p0, Lcom/oplus/camera/ac$b;->b:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 344
    invoke-virtual {p0}, Lcom/oplus/camera/ac$b;->a()V

    goto :goto_1

    :cond_2
    const p1, 0x3f4ccccd    # 0.8f

    .line 346
    iget v0, p0, Lcom/oplus/camera/ac$b;->b:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/ac$b;->b()V

    .line 351
    :cond_3
    :goto_1
    iget p0, p0, Lcom/oplus/camera/ac$b;->b:F

    invoke-static {}, Lcom/oplus/camera/y;->a()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_4

    move v1, v3

    :cond_4
    invoke-static {v1}, Lcom/oplus/camera/y;->a(Z)V

    return-void
.end method

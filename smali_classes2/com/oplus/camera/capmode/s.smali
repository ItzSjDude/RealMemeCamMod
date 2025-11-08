.class Lcom/oplus/camera/capmode/s;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "s"


# instance fields
.field private b:Landroid/hardware/SensorEventListener;

.field private c:J

.field private d:Lcom/oplus/camera/capmode/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/oplus/camera/capmode/s;->c:J

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/capmode/s;->d:Lcom/oplus/camera/capmode/a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/s;J)J
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/oplus/camera/capmode/s;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/s;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/capmode/s;->d:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/s;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/oplus/camera/capmode/s;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 55
    sget-object p0, Lcom/oplus/camera/capmode/s;->a:Ljava/lang/String;

    const-string p1, "unInitSensor mSensorEventListener is null"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "sensor"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 61
    iget-object v0, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/capmode/s;->d:Lcom/oplus/camera/capmode/a;

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Lcom/oplus/camera/capmode/s;->a:Ljava/lang/String;

    const-string p1, "initSensor mSensorEventListener already exist"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_0
    iput-object p2, p0, Lcom/oplus/camera/capmode/s;->d:Lcom/oplus/camera/capmode/a;

    const-string p2, "sensor"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 30
    new-instance p2, Lcom/oplus/camera/capmode/s$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/s$1;-><init>(Lcom/oplus/camera/capmode/s;)V

    iput-object p2, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/capmode/s;->b:Landroid/hardware/SensorEventListener;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p1, p0, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.class Lcom/oplus/camera/ac$c;
.super Landroid/hardware/SensorEventCallback;
.source "SensorManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ac;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ac;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->b:Z

    .line 76
    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->c:Z

    .line 77
    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ac;Lcom/oplus/camera/ac$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/oplus/camera/ac$c;-><init>(Lcom/oplus/camera/ac;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ac$c;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ac$c;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->c:Z

    return p1
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 81
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10061

    if-ne v1, v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-static {v0, p1}, Lcom/oplus/camera/ac;->a(Lcom/oplus/camera/ac;[F)[F

    .line 84
    iget-object p1, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->a(Lcom/oplus/camera/ac;)[F

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->a(Lcom/oplus/camera/ac;)[F

    move-result-object p1

    aget p1, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->b:Z

    .line 93
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ac$c;->b:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->b(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ac$c;->c:Z

    if-nez p1, :cond_2

    .line 94
    iput-boolean v2, p0, Lcom/oplus/camera/ac$c;->d:Z

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->b(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ac$d;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ac$c;->c:Z

    goto :goto_1

    .line 96
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ac$c;->b:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-static {p1}, Lcom/oplus/camera/ac;->b(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$d;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/ac$c;->d:Z

    if-nez p1, :cond_3

    .line 97
    iput-boolean v2, p0, Lcom/oplus/camera/ac$c;->c:Z

    .line 98
    iput-boolean v0, p0, Lcom/oplus/camera/ac$c;->d:Z

    .line 99
    iget-object p0, p0, Lcom/oplus/camera/ac$c;->a:Lcom/oplus/camera/ac;

    invoke-static {p0}, Lcom/oplus/camera/ac;->b(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$d;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ac$d;->b()Z

    :cond_3
    :goto_1
    return-void
.end method

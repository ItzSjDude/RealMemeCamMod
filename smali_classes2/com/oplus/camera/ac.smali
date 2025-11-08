.class public Lcom/oplus/camera/ac;
.super Ljava/lang/Object;
.source "SensorManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ac$b;,
        Lcom/oplus/camera/ac$a;,
        Lcom/oplus/camera/ac$c;,
        Lcom/oplus/camera/ac$d;,
        Lcom/oplus/camera/ac$e;
    }
.end annotation


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:[F

.field private d:[F

.field private e:[F

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/hardware/SensorManager;

.field private i:Landroid/hardware/Sensor;

.field private j:Landroid/hardware/Sensor;

.field private k:Landroid/hardware/Sensor;

.field private l:Landroid/hardware/SensorEventListener;

.field private m:Landroid/hardware/SensorEventListener;

.field private n:Landroid/hardware/SensorEventCallback;

.field private o:Lcom/oplus/camera/ac$e;

.field private p:Lcom/oplus/camera/ac$d;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 37
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/oplus/camera/ac;->a:[F

    const/16 v1, 0x9

    .line 38
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oplus/camera/ac;->b:[F

    .line 39
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/oplus/camera/ac;->c:[F

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ac;->d:[F

    const/4 v0, 0x6

    .line 42
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ac;->e:[F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/oplus/camera/ac;->f:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/ac;->g:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ac;->i:Landroid/hardware/Sensor;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ac;->j:Landroid/hardware/Sensor;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ac;->k:Landroid/hardware/Sensor;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ac;->l:Landroid/hardware/SensorEventListener;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ac;->o:Lcom/oplus/camera/ac$e;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ac;->p:Lcom/oplus/camera/ac$d;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/oplus/camera/ac;->q:I

    .line 118
    iput-object p1, p0, Lcom/oplus/camera/ac;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ac;)[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->e:[F

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ac;[F)[F
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/ac;->e:[F

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->p:Lcom/oplus/camera/ac$d;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ac;)[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->d:[F

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ac;->g:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/oplus/camera/ac$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ac$c;-><init>(Lcom/oplus/camera/ac;Lcom/oplus/camera/ac$1;)V

    iput-object v0, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/ac;->f:Z

    if-nez v1, :cond_2

    const v1, 0x10061

    .line 143
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/oplus/camera/ac;->f:Z

    const-string p0, "SensorManagerClient"

    const-string v0, "registerModeDependentSensor, registered."

    .line 147
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ac;)[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->a:[F

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ac;->g:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/camera/ac;->f:Z

    if-eqz v1, :cond_1

    const v1, 0x10061

    .line 157
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/oplus/camera/ac;->f:Z

    const-string p0, "SensorManagerClient"

    const-string v0, "unregisterModeDependentSensor, unregistered."

    .line 161
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ac;)[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->b:[F

    return-object p0
.end method

.method private f()V
    .locals 4

    const-string v0, "SensorManagerClient"

    const-string v1, "registerGyroSensor"

    .line 194
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/oplus/camera/ac;->l:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_2

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/oplus/camera/ac;->g:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ac;->i:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ac;->i:Landroid/hardware/Sensor;

    .line 206
    :cond_1
    new-instance v1, Lcom/oplus/camera/ac$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ac$b;-><init>(Lcom/oplus/camera/ac;Lcom/oplus/camera/ac$1;)V

    iput-object v1, p0, Lcom/oplus/camera/ac;->l:Landroid/hardware/SensorEventListener;

    .line 207
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oplus/camera/ac;->l:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oplus/camera/ac;->i:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerGproSensor, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ac;)[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->c:[F

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac$e;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ac;->o:Lcom/oplus/camera/ac$e;

    return-object p0
.end method

.method private g()V
    .locals 5

    const-string v0, "SensorManagerClient"

    const-string v1, "registerAccelerometerListener"

    .line 215
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_3

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/oplus/camera/ac;->g:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ac;->j:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ac;->j:Landroid/hardware/Sensor;

    .line 227
    :cond_1
    new-instance v1, Lcom/oplus/camera/ac$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ac$a;-><init>(Lcom/oplus/camera/ac;Lcom/oplus/camera/ac$1;)V

    iput-object v1, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    .line 228
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/oplus/camera/ac;->j:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 231
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/oplus/camera/ac;->k:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    if-nez v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ac;->k:Landroid/hardware/Sensor;

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oplus/camera/ac;->k:Landroid/hardware/Sensor;

    invoke-virtual {v1, v3, p0, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAccelerometerListener, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "SensorManagerClient"

    const-string v1, "unregisterAccelerometerListener"

    .line 246
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 250
    iput-object v1, p0, Lcom/oplus/camera/ac;->m:Landroid/hardware/SensorEventListener;

    .line 253
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ac;->j:Landroid/hardware/Sensor;

    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "SensorManagerClient"

    const-string v1, "unregisterGyroSensor"

    .line 257
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/ac;->l:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 261
    iput-object v1, p0, Lcom/oplus/camera/ac;->l:Landroid/hardware/SensorEventListener;

    .line 264
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ac;->i:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/ac;->n:Landroid/hardware/SensorEventCallback;

    if-eqz p0, :cond_0

    .line 111
    check-cast p0, Lcom/oplus/camera/ac$c;

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/oplus/camera/ac$c;->a(Lcom/oplus/camera/ac$c;Z)Z

    .line 113
    invoke-static {p0, v0}, Lcom/oplus/camera/ac$c;->b(Lcom/oplus/camera/ac$c;Z)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/oplus/camera/ac;->f()V

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/oplus/camera/ac;->g()V

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/oplus/camera/ac;->d()V

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/ac$d;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/oplus/camera/ac;->p:Lcom/oplus/camera/ac$d;

    return-void
.end method

.method public a(Lcom/oplus/camera/ac$e;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oplus/camera/ac;->o:Lcom/oplus/camera/ac$e;

    return-void
.end method

.method public b(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/oplus/camera/ac;->i()V

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/oplus/camera/ac;->h()V

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/oplus/camera/ac;->e()V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oplus/camera/ac;->i:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/oplus/camera/ac;->h:Landroid/hardware/SensorManager;

    return-void
.end method

.class public Lcom/oplus/camera/perf/a;
.super Ljava/lang/Object;
.source "CPURunningInfo.java"


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Z

.field private static j:Z

.field private static k:Z


# instance fields
.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 6

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string v3, "CPURunningInfo"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string p1, "trimNParse, empty"

    .line 135
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput-boolean v4, p0, Lcom/oplus/camera/perf/a;->s:Z

    return-wide v1

    :cond_0
    const-string v0, "\n"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 143
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trimNParse, number read error: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-boolean v4, p0, Lcom/oplus/camera/perf/a;->s:Z

    return-wide v1

    .line 150
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    .line 152
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trimNParse, number read error:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iput-boolean v4, p0, Lcom/oplus/camera/perf/a;->s:Z

    return-wide v1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->l:J

    .line 38
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->m:J

    .line 39
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->n:J

    .line 40
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->o:J

    .line 41
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->p:J

    .line 42
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->q:J

    .line 43
    iput-wide v0, p0, Lcom/oplus/camera/perf/a;->r:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/oplus/camera/perf/a;->s:Z

    return-void
.end method

.method public a(Lcom/oplus/camera/perf/a;)V
    .locals 6

    .line 161
    iget-boolean v0, p0, Lcom/oplus/camera/perf/a;->s:Z

    const-string v1, "CPURunningInfo"

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/oplus/camera/perf/a;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->l:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->l:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->l:J

    .line 168
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->m:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->m:J

    .line 169
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->n:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->n:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->n:J

    .line 170
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->o:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->o:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->o:J

    .line 171
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->p:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->p:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->p:J

    .line 172
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->q:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->q:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->q:J

    .line 173
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->r:J

    iget-wide v4, p1, Lcom/oplus/camera/perf/a;->r:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->r:J

    .line 175
    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->l:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->o:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->n:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->m:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->p:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->q:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/a;->r:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minusOp, invalid res: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lcom/oplus/camera/perf/a;->s:Z

    :cond_2
    return-void

    .line 162
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minusOp, invalid value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    const-string v0, "CPURunningInfo"

    .line 83
    sget-boolean v1, Lcom/oplus/camera/perf/a;->i:Z

    if-eq p1, v1, :cond_4

    sget-boolean v1, Lcom/oplus/camera/perf/a;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 88
    :try_start_0
    sget-object v2, Lcom/oplus/camera/perf/a;->c:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v6, "1"

    goto :goto_0

    :cond_1
    const-string v6, "0"

    :goto_0
    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_2

    const-string p0, "openMonitor, return false"

    .line 91
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_2
    sput-boolean p1, Lcom/oplus/camera/perf/a;->i:Z

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMonitor, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->a()V

    :cond_3
    return-void

    :catch_0
    move-exception p0

    const-string p1, "openMonitor fail"

    .line 100
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    sput-boolean v1, Lcom/oplus/camera/perf/a;->i:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 7

    .line 48
    sget-boolean v0, Lcom/oplus/camera/perf/a;->j:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oplus/camera/perf/a;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "vendor.oplus.hardware.performance.V1_0.IPerformance"

    .line 53
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    .line 54
    sget-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v3, "getService"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    sget-object v3, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v4, "writeMonitorStatus"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/oplus/camera/perf/a;->c:Ljava/lang/reflect/Method;

    .line 56
    sget-object v3, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    .line 57
    sget-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v3, "readRealTime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->d:Ljava/lang/reflect/Method;

    .line 58
    sget-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v3, "readNormalizeRealTime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->e:Ljava/lang/reflect/Method;

    .line 59
    sget-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v3, "readRunningTime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->f:Ljava/lang/reflect/Method;

    .line 60
    sget-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v3, "readNormalizeRunningTime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->g:Ljava/lang/reflect/Method;

    .line 61
    sget-object v2, Lcom/oplus/camera/perf/a;->a:Ljava/lang/Class;

    const-string v3, "readTargetProcess"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/perf/a;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    sput-boolean v0, Lcom/oplus/camera/perf/a;->j:Z

    return-void

    :catch_0
    move-exception v2

    const-string v3, "CPURunningInfo"

    const-string v4, "getPerfMgrFunc, class or function not found"

    .line 63
    invoke-static {v3, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sput-boolean v1, Lcom/oplus/camera/perf/a;->j:Z

    .line 66
    iput-boolean v1, p0, Lcom/oplus/camera/perf/a;->s:Z

    .line 67
    sput-boolean v0, Lcom/oplus/camera/perf/a;->k:Z

    .line 68
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 6

    .line 113
    sget-boolean v0, Lcom/oplus/camera/perf/a;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oplus/camera/perf/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    :try_start_0
    sget-object v2, Lcom/oplus/camera/perf/a;->d:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->l:J

    .line 116
    sget-object v2, Lcom/oplus/camera/perf/a;->e:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->m:J

    .line 117
    sget-object v2, Lcom/oplus/camera/perf/a;->f:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->n:J

    .line 118
    sget-object v2, Lcom/oplus/camera/perf/a;->g:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->o:J

    .line 119
    sget-object v2, Lcom/oplus/camera/perf/a;->h:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "0"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->p:J

    .line 120
    sget-object v2, Lcom/oplus/camera/perf/a;->h:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "1"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->q:J

    .line 121
    sget-object v2, Lcom/oplus/camera/perf/a;->h:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/oplus/camera/perf/a;->b:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "2"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/perf/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/a;->r:J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 123
    iput-boolean v1, p0, Lcom/oplus/camera/perf/a;->s:Z

    .line 124
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/perf/a;->s:Z

    goto :goto_1

    :cond_0
    const-string p0, "CPURunningInfo"

    const-string v0, "getCpuInfo, monitor closed"

    .line 129
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public d()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/oplus/camera/perf/a;->s:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "realTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", normalizeRealTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", runningTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", normalizeRunningTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cameraTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cameraserverTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", providerTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/perf/a;->r:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

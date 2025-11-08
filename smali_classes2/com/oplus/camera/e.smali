.class public Lcom/oplus/camera/e;
.super Ljava/lang/Object;
.source "CameraLog.java"


# static fields
.field private static final a:Ljava/lang/Long;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/e;->a:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/oplus/camera/e;->b:Z

    .line 35
    sput-boolean v0, Lcom/oplus/camera/e;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1}, Lcom/oplus/compat/os/SystemPropertiesNative;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/camera/e;->b:Z
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/oplus/camera/sticker/c/d;->e(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/camera/e;->c:Z

    .line 46
    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->initLog(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 119
    sget-boolean v0, Lcom/oplus/camera/e;->c:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceBeginSection, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera_TRACE"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_0
    sget-object v0, Lcom/oplus/camera/e;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/oplus/compat/os/TraceNative;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OplusCamera"

    const-string v0, "reflect error"

    .line 127
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 125
    invoke-virtual {p0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 189
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 191
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dumpHandlerMsg, handler is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    new-instance p0, Landroid/util/LogPrinter;

    const/4 v0, 0x6

    const-string v1, "handler info"

    invoke-direct {p0, v0, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 197
    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/oplus/camera/e;->c:Z

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceBeginSection, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera_TRACE"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "O_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 138
    sget-object p1, Lcom/oplus/camera/e;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, p0}, Lcom/oplus/compat/os/TraceNative;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "OplusCamera"

    const-string p1, "reflect error"

    .line 142
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 140
    invoke-virtual {p0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 222
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 160
    sget-boolean v0, Lcom/oplus/camera/e;->c:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceEndSection, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusCamera_TRACE"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    sget-object p0, Lcom/oplus/camera/e;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/compat/os/TraceNative;->traceEnd(J)V
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OplusCamera"

    const-string v0, "reflect error"

    .line 168
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 166
    invoke-virtual {p0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "OplusCamera"

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    sget-boolean v0, Lcom/oplus/camera/e;->b:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 174
    sget-boolean v0, Lcom/oplus/camera/e;->c:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceEndSection, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusCamera_TRACE"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "O_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/oplus/camera/d;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 179
    sget-object p0, Lcom/oplus/camera/e;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oplus/compat/os/TraceNative;->traceEnd(J)V
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OplusCamera"

    const-string p1, "reflect error"

    .line 183
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 181
    invoke-virtual {p0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 218
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 202
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 214
    invoke-static {p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

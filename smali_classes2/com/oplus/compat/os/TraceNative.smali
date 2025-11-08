.class public Lcom/oplus/compat/os/TraceNative;
.super Ljava/lang/Object;
.source "TraceNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncTraceBegin(JLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void

    .line 44
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public static asyncTraceEnd(JLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    .line 54
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public static traceBegin(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void

    .line 24
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static traceEnd(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 34
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

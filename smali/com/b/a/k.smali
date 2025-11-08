.class public interface abstract Lcom/b/a/k;
.super Ljava/lang/Object;
.source "SurfaceListener.java"


# static fields
.field public static final a:Ljava/lang/String; = "k"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/Surface;)V
.end method

.method public abstract a(Lcom/b/a/a/e;)V
.end method

.method public a(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const-wide/16 p0, 0x21

    cmp-long p2, v2, p0

    if-gez p2, :cond_0

    sub-long/2addr p0, v2

    .line 24
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/b/a/k;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFrameRenderFinished InterruptedException e : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract b(Landroid/view/Surface;)V
.end method

.method public abstract b(Lcom/b/a/a/e;)V
.end method

.method public abstract c(Lcom/b/a/a/e;)V
.end method

.class Lcom/oplus/camera/timelapsepro/h$1;
.super Ljava/lang/Object;
.source "TimeLapseProMode.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6b

    .line 265
    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 269
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x21

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(J)V
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v0, p1, p2}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;J)J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    const-wide/32 v1, 0xdbba00

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/timelapsepro/h;->b(Lcom/oplus/camera/timelapsepro/h;J)J

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/h;->b(Lcom/oplus/camera/timelapsepro/h;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v3}, Lcom/oplus/camera/timelapsepro/h;->c(Lcom/oplus/camera/timelapsepro/h;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v5}, Lcom/oplus/camera/timelapsepro/h;->d(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/timelapsepro/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v3, v5

    mul-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/timelapsepro/h;->b(Lcom/oplus/camera/timelapsepro/h;J)J

    .line 292
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDurationValueChanged, frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mDurationTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->e(Lcom/oplus/camera/timelapsepro/h;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeLapseProMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedValueChanged, speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$1;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

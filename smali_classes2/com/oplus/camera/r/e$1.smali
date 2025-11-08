.class Lcom/oplus/camera/r/e$1;
.super Ljava/lang/Object;
.source "SLVFps960Mode.java"

# interfaces
.implements Lcom/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/e;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/e;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/oplus/camera/r/e$1;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SLVFps960Mode"

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p1}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;)Lcom/c/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p1}, Lcom/oplus/camera/r/e;->b(Lcom/oplus/camera/r/e;)Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/r/e$1;->b:Z

    .line 91
    iget-object p0, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    iget-object p0, p0, Lcom/oplus/camera/r/e;->c:Lcom/oplus/camera/r/a$a;

    invoke-interface {p0, v3}, Lcom/oplus/camera/r/a$a;->b(Ljava/lang/String;)V

    const-string p0, "onCompileStatusChange, compile failed!"

    .line 93
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 63
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/r/e$1;->b:Z

    if-nez p1, :cond_5

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p1}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;)Lcom/c/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p1}, Lcom/oplus/camera/r/e;->b(Lcom/oplus/camera/r/e;)Ljava/lang/String;

    move-result-object v3

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompileStatusChange mbStopped: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {v1}, Lcom/oplus/camera/r/e;->c(Lcom/oplus/camera/r/e;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p1}, Lcom/oplus/camera/r/e;->c(Lcom/oplus/camera/r/e;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p1, v0}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;Z)Z

    .line 74
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    iget-object p1, p1, Lcom/oplus/camera/r/e;->c:Lcom/oplus/camera/r/a$a;

    invoke-interface {p1, v3}, Lcom/oplus/camera/r/a$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    iget-object p1, p1, Lcom/oplus/camera/r/e;->c:Lcom/oplus/camera/r/a$a;

    invoke-interface {p1, v3}, Lcom/oplus/camera/r/a$a;->a(Ljava/lang/String;)V

    .line 79
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompileStatusChange, STATUS_COMPILE_FINISHED CostTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/camera/r/e$1;->a:Lcom/oplus/camera/r/e;

    invoke-static {p0}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;)Lcom/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/c/a;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p0, "onCompileStatusChange, compile finished, but already failed!"

    .line 83
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_6
    iput-boolean v0, p0, Lcom/oplus/camera/r/e$1;->b:Z

    :goto_1
    return-void
.end method

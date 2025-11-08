.class Lcom/oplus/camera/p$b;
.super Landroid/os/Handler;
.source "HistogramProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/p;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/p;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/p;Lcom/oplus/camera/p$1;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/oplus/camera/p$b;-><init>(Lcom/oplus/camera/p;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 412
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v0}, Lcom/oplus/camera/p;->c(Lcom/oplus/camera/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v1}, Lcom/oplus/camera/p;->d(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;

    move-result-object v1
    :try_end_0
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 417
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 420
    :cond_1
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 422
    iget-object v1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v1}, Lcom/oplus/camera/p;->d(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 423
    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->e(Lcom/oplus/camera/p;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v1}, Lcom/oplus/camera/p;->d(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 424
    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->e(Lcom/oplus/camera/p;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v1}, Lcom/oplus/camera/p;->f(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 425
    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->f(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v1}, Lcom/oplus/camera/p;->g(Lcom/oplus/camera/p;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 426
    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->n(Lcom/oplus/camera/p;)Lcom/oplus/camera/jni/FormatConverter;

    move-result-object v1

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->g(Lcom/oplus/camera/p;)[B

    move-result-object v2

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->h(Lcom/oplus/camera/p;)[F

    move-result-object v3

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->i(Lcom/oplus/camera/p;)I

    move-result v4

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->j(Lcom/oplus/camera/p;)I

    move-result v5

    const/16 v6, 0x8

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    .line 427
    invoke-static {p1}, Lcom/oplus/camera/p;->k(Lcom/oplus/camera/p;)[F

    move-result-object v7

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->l(Lcom/oplus/camera/p;)[F

    move-result-object v8

    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->m(Lcom/oplus/camera/p;)[F

    move-result-object v9

    .line 426
    invoke-virtual/range {v1 .. v9}, Lcom/oplus/camera/jni/FormatConverter;->statisticsHistogramRGB([B[FIII[F[F[F)V

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->p(Lcom/oplus/camera/p;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/oplus/camera/p$b$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/p$b$1;-><init>(Lcom/oplus/camera/p$b;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 437
    :try_start_3
    invoke-virtual {p0}, Landroid/renderscript/RSIllegalArgumentException;->printStackTrace()V

    const-string p0, "HistogramProcessorManager"

    const-string p1, "Array too small for allocation type."

    .line 438
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

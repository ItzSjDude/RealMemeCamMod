.class Lcom/oplus/camera/capmode/b$5;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/b;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$5;->a:Lcom/oplus/camera/capmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "start, initAudioCodec end"

    const-string v1, "CameraMediaCodec"

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/b$5;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v2}, Lcom/oplus/camera/capmode/b;->D(Lcom/oplus/camera/capmode/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/oplus/camera/capmode/b$5;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v2}, Lcom/oplus/camera/capmode/b;->E(Lcom/oplus/camera/capmode/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$5;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->C(Lcom/oplus/camera/capmode/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 739
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    .line 737
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$5;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->C(Lcom/oplus/camera/capmode/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 739
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    throw v2
.end method

.class Lcom/oplus/camera/capmode/b$2;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/b;->h()V
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

    .line 1840
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$2;->a:Lcom/oplus/camera/capmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1844
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$2;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->e(Lcom/oplus/camera/capmode/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$2;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->N(Lcom/oplus/camera/capmode/b;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/camera/capmode/b$2;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->N(Lcom/oplus/camera/capmode/b;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1847
    throw v0
.end method

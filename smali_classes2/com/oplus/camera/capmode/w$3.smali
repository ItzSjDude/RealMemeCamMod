.class Lcom/oplus/camera/capmode/w$3;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w;->getAfterStoreRunnable()Lcom/oplus/camera/ui/control/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$3;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$3;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {v0}, Lcom/oplus/camera/capmode/w;->access$600(Lcom/oplus/camera/capmode/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w$3;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {v0}, Lcom/oplus/camera/capmode/w;->access$700(Lcom/oplus/camera/capmode/w;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$3;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oplus/camera/capmode/w$3$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/w$3$1;-><init>(Lcom/oplus/camera/capmode/w$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

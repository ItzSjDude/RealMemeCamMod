.class Lcom/oplus/camera/p$b$1;
.super Ljava/lang/Object;
.source "HistogramProcessorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/p$b;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/p$b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/p$b;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    iget-object v0, v0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v0}, Lcom/oplus/camera/p;->o(Lcom/oplus/camera/p;)Lcom/oplus/camera/ui/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    iget-object v0, v0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v0}, Lcom/oplus/camera/p;->o(Lcom/oplus/camera/p;)Lcom/oplus/camera/ui/m;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    iget-object v1, v1, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v1}, Lcom/oplus/camera/p;->k(Lcom/oplus/camera/p;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    iget-object v2, v2, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v2}, Lcom/oplus/camera/p;->l(Lcom/oplus/camera/p;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    iget-object v3, v3, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {v3}, Lcom/oplus/camera/p;->m(Lcom/oplus/camera/p;)[F

    move-result-object v3

    iget-object p0, p0, Lcom/oplus/camera/p$b$1;->a:Lcom/oplus/camera/p$b;

    iget-object p0, p0, Lcom/oplus/camera/p$b;->a:Lcom/oplus/camera/p;

    invoke-static {p0}, Lcom/oplus/camera/p;->h(Lcom/oplus/camera/p;)[F

    move-result-object p0

    const/4 v4, 0x0

    aget p0, p0, v4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/oplus/camera/ui/m;->a([F[F[FF)V

    :cond_0
    return-void
.end method

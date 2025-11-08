.class public Lcom/oplus/camera/ui/inverse/e$b;
.super Landroid/os/Handler;
.source "InverseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/inverse/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/inverse/e;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/inverse/e;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e$b;->a:Lcom/oplus/camera/ui/inverse/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 518
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 520
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/e$b;->a:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {v1}, Lcom/oplus/camera/ui/inverse/e;->access$400(Lcom/oplus/camera/ui/inverse/e;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/e$b;->a:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {v1}, Lcom/oplus/camera/ui/inverse/e;->access$500(Lcom/oplus/camera/ui/inverse/e;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v4, v1, :cond_1

    .line 525
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 526
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e$b;->a:Lcom/oplus/camera/ui/inverse/e;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->setInverseColor(IZZ)V

    .line 527
    aget-object p0, p1, v3

    check-cast p0, Lcom/oplus/camera/ui/inverse/e$a;

    if-eqz p0, :cond_2

    .line 530
    invoke-interface {p0}, Lcom/oplus/camera/ui/inverse/e$a;->call()V

    goto :goto_0

    .line 532
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    .line 533
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 534
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e$b;->a:Lcom/oplus/camera/ui/inverse/e;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setInverseColor(IZZ)V

    :cond_2
    :goto_0
    return-void
.end method

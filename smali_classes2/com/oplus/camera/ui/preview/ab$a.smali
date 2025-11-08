.class Lcom/oplus/camera/ui/preview/ab$a;
.super Landroid/os/Handler;
.source "TeleSmallPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ab;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/ab;Landroid/os/Looper;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    .line 614
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeleSmallPreviewManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->e(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 632
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/ab;->b(Lcom/oplus/camera/ui/preview/ab;Z)Z

    .line 633
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->c(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ab;->d(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;ZZZ)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->b(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 624
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/ab;->b(Lcom/oplus/camera/ui/preview/ab;Z)Z

    .line 625
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->c(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$a;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ab;->d(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

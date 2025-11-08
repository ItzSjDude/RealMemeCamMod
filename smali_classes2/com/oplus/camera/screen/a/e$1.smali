.class Lcom/oplus/camera/screen/a/e$1;
.super Ljava/lang/Object;
.source "ScreenSwitchController.java"

# interfaces
.implements Lcom/oplus/camera/screen/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/screen/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/a/e;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oplus/camera/screen/a/e$1;->a:Lcom/oplus/camera/screen/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenSwitchController"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e$1;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v0}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e$1;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v0}, Lcom/oplus/camera/screen/a/e;->b(Lcom/oplus/camera/screen/a/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;I)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$1;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1, p1}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;I)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 51
    invoke-static {}, Lcom/oplus/camera/util/Util;->J()V

    .line 52
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e$1;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x64

    .line 54
    iput v0, p1, Landroid/os/Message;->what:I

    .line 55
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e$1;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p0}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

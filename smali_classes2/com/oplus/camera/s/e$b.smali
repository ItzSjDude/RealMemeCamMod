.class Lcom/oplus/camera/s/e$b;
.super Landroid/os/Handler;
.source "StarryUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/s/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/s/e;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/s/e;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/s/e;Lcom/oplus/camera/s/e$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/oplus/camera/s/e$b;-><init>(Lcom/oplus/camera/s/e;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/camera/ui/control/b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/s/e;->a(Lcom/oplus/camera/s/e;Lcom/oplus/camera/ui/control/b;Z)V

    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    invoke-static {p1}, Lcom/oplus/camera/s/e;->c(Lcom/oplus/camera/s/e;)V

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    invoke-static {p1}, Lcom/oplus/camera/s/e;->d(Lcom/oplus/camera/s/e;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/s/e;->a(Lcom/oplus/camera/s/e;J)V

    .line 71
    iget-object p0, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    invoke-static {p0}, Lcom/oplus/camera/s/e;->e(Lcom/oplus/camera/s/e;)V

    goto :goto_1

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    invoke-static {p0}, Lcom/oplus/camera/s/e;->b(Lcom/oplus/camera/s/e;)V

    goto :goto_1

    .line 61
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/s/e$b;->a:Lcom/oplus/camera/s/e;

    invoke-static {p0}, Lcom/oplus/camera/s/e;->a(Lcom/oplus/camera/s/e;)V

    :goto_1
    return-void
.end method

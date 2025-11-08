.class Lcom/oplus/camera/ui/a/a$1;
.super Landroid/os/Handler;
.source "HintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/a/a;-><init>(Landroid/content/res/Resources;Lcom/oplus/camera/ui/CameraUIInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/a/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/a/a;Landroid/os/Looper;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/a/a;->d(Lcom/oplus/camera/ui/a/a;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/a/a;->c(Lcom/oplus/camera/ui/a/a;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/a/a;->b(Z)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-static {v0, p1, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a;IZ)V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/a/a;->b(Lcom/oplus/camera/ui/a/a;)Lcom/oplus/camera/ui/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 136
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a$1;->a:Lcom/oplus/camera/ui/a/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/a/a;->b(Lcom/oplus/camera/ui/a/a;)Lcom/oplus/camera/ui/a/a$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/a/a$b;->a(I)V

    :cond_4
    :goto_0
    return-void
.end method

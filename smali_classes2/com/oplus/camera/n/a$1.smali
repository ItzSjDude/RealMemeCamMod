.class Lcom/oplus/camera/n/a$1;
.super Landroid/os/Handler;
.source "PortraitCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/n/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n/a;Landroid/os/Looper;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/n/a$1;->a:Lcom/oplus/camera/n/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 112
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/n/a$1;->a:Lcom/oplus/camera/n/a;

    invoke-static {p1}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/oplus/camera/n/a$1;->a:Lcom/oplus/camera/n/a;

    invoke-static {p1, v0}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Z)Z

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/n/a$1;->a:Lcom/oplus/camera/n/a;

    invoke-static {p0}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

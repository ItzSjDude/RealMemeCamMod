.class Lcom/oplus/camera/ui/preview/ab$b;
.super Landroid/os/Handler;
.source "TeleSmallPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ab;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/ab;Landroid/os/Looper;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab$b;->a:Lcom/oplus/camera/ui/preview/ab;

    .line 592
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 597
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$b;->a:Lcom/oplus/camera/ui/preview/ab;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;Z)Z

    goto :goto_0

    .line 599
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$b;->a:Lcom/oplus/camera/ui/preview/ab;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;Z)Z

    :goto_0
    return-void
.end method

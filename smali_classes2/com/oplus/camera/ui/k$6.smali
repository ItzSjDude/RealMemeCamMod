.class Lcom/oplus/camera/ui/k$6;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/oplus/camera/ui/k$6;->a:Lcom/oplus/camera/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 458
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 459
    iput v1, v0, Landroid/os/Message;->what:I

    .line 460
    iget-object v2, p0, Lcom/oplus/camera/ui/k$6;->a:Lcom/oplus/camera/ui/k;

    invoke-static {v2}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 461
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 462
    iget-object p0, p0, Lcom/oplus/camera/ui/k$6;->a:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

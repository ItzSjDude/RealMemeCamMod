.class Lcom/oplus/camera/ui/d$60;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->Y()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 11371
    iput-object p1, p0, Lcom/oplus/camera/ui/d$60;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11374
    iget-object v0, p0, Lcom/oplus/camera/ui/d$60;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ak(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$60;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ak(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11375
    iget-object v0, p0, Lcom/oplus/camera/ui/d$60;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ak(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->dismiss()V

    .line 11376
    iget-object v0, p0, Lcom/oplus/camera/ui/d$60;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/widget/c;)Lcom/oplus/camera/ui/widget/c;

    .line 11377
    iget-object p0, p0, Lcom/oplus/camera/ui/d$60;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dh()V

    :cond_0
    return-void
.end method

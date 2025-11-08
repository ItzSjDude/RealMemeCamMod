.class Lcom/oplus/camera/capmode/d$1;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$1;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "updateCountDownTime"

    .line 227
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$1;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$1;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/p;->e()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$1;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->onTimerCountDownEnd()V

    return-void
.end method

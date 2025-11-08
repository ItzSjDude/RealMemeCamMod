.class Lcom/oplus/camera/capmode/i$1;
.super Ljava/lang/Object;
.source "GroupShotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/i;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/i;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/i;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/oplus/camera/capmode/i$1;->a:Lcom/oplus/camera/capmode/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/capmode/i$1;->a:Lcom/oplus/camera/capmode/i;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/i;->mbPaused:Z

    if-eqz v0, :cond_0

    const-string p0, "GroupShotMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 157
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 163
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 164
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 165
    iget-object p0, p0, Lcom/oplus/camera/capmode/i$1;->a:Lcom/oplus/camera/capmode/i;

    iget-object p0, p0, Lcom/oplus/camera/capmode/i;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

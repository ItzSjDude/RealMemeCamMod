.class Lcom/oplus/camera/n/a$3;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/n/a;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/n/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n/a;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/oplus/camera/n/a$3;->a:Lcom/oplus/camera/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/oplus/camera/n/a$3;->a:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->c(Lcom/oplus/camera/n/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PortraitCapMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 911
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 916
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 917
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 918
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 919
    iget-object p0, p0, Lcom/oplus/camera/n/a$3;->a:Lcom/oplus/camera/n/a;

    invoke-static {p0}, Lcom/oplus/camera/n/a;->d(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

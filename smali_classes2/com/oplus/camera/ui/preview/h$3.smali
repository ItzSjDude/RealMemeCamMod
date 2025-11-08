.class Lcom/oplus/camera/ui/preview/h$3;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/h;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h$3;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "onBlurAnimationEnd"

    .line 615
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$3;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->j(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$3;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->j(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/h$a;->a()V

    .line 619
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h$3;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/h;->k(Lcom/oplus/camera/ui/preview/h;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/h;->i(Z)V

    :cond_0
    return-void
.end method

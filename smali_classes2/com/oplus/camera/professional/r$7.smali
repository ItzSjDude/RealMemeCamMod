.class Lcom/oplus/camera/professional/r$7;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1108
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1111
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 1112
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 1113
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 1114
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2, v4, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    const-wide/16 v4, 0x12c

    invoke-static {v0, v3, v2, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1119
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 1122
    iget-object v2, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object v2, v2, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 1126
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/r$7;->a:Lcom/oplus/camera/professional/r;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    return-void
.end method

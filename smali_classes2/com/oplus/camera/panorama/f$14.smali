.class Lcom/oplus/camera/panorama/f$14;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1075
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->ai(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PanoramaCapMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 1076
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->aj(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v0, :cond_2

    .line 1082
    invoke-static {}, Lcom/oplus/camera/panorama/f;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1083
    :try_start_0
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->ag(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/g;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1084
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->O(Lcom/oplus/camera/panorama/f;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1085
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1086
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4, v1}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;I)I

    .line 1087
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    iget-object v5, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v5}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->getDirection()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oplus/camera/panorama/f;->g(Lcom/oplus/camera/panorama/f;I)I

    .line 1088
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->ag(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/g;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v5}, Lcom/oplus/camera/panorama/f;->N(Lcom/oplus/camera/panorama/f;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/panorama/g;->a(I)V

    .line 1089
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4, v2}, Lcom/oplus/camera/panorama/f;->c(Lcom/oplus/camera/panorama/f;Z)Z

    .line 1090
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->ak(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 1092
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0, v2}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;Z)Z

    .line 1096
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->o(Lcom/oplus/camera/panorama/f;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/panorama/f;->setOrientation(I)V

    .line 1097
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/f;->b(I)V

    .line 1098
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->al(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1092
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1101
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->am(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1102
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->an(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 1103
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->ao(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 1105
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->ap(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 1106
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->aq(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_1

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->ar(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 1111
    :goto_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x5

    const/4 v3, 0x3

    const-string v4, "button_color_inside_hasselblad"

    const-string v5, "button_shape_ring_none"

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 1112
    :cond_4
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/16 v2, 0xa

    const-string v3, "button_color_inside_none"

    invoke-direct {v0, v2, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 1114
    :goto_2
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 1115
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$14;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->as(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

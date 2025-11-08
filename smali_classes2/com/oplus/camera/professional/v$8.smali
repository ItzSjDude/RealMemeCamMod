.class Lcom/oplus/camera/professional/v$8;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onAfterSnapping()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 2367
    iput-object p1, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2370
    iget-object v0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->am(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2374
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "button_color_inside_none"

    if-eqz v0, :cond_3

    .line 2375
    iget-object v0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2377
    iget-object v6, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v6}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2378
    iget-object v6, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v6}, Lcom/oplus/camera/professional/v;->an(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2379
    iget-object v3, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v3}, Lcom/oplus/camera/professional/v;->ap(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    .line 2380
    invoke-static {v4}, Lcom/oplus/camera/professional/v;->ao(Lcom/oplus/camera/professional/v;)Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0708d5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 2379
    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->i(I)V

    .line 2381
    iget-object v3, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v3}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/h;->d()V

    .line 2382
    iget-object v3, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v3}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/h;->e()V

    .line 2384
    iget-object v3, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v3}, Lcom/oplus/camera/professional/v;->aq(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2385
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2386
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    .line 2388
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2389
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 2392
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2393
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2396
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->ar(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    goto :goto_3

    .line 2397
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2398
    iget-object v0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->as(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2399
    iget-object v0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2401
    iget-object v3, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v3}, Lcom/oplus/camera/professional/v;->at(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 2402
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2403
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2405
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1b

    goto :goto_1

    :cond_5
    const/4 v1, 0x7

    .line 2406
    :goto_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2407
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2410
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/professional/v$8;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->au(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_6
    :goto_3
    return-void
.end method

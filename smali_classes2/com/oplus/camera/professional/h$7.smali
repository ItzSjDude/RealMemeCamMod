.class Lcom/oplus/camera/professional/h$7;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onAfterSnapping()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 2223
    iput-object p1, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2226
    iget-object v0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ae(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2230
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "button_color_inside_none"

    if-eqz v0, :cond_3

    .line 2231
    iget-object v0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2233
    iget-object v6, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v6}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2234
    iget-object v6, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v6}, Lcom/oplus/camera/professional/h;->af(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2235
    iget-object v3, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v3}, Lcom/oplus/camera/professional/h;->ah(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    .line 2236
    invoke-static {v4}, Lcom/oplus/camera/professional/h;->ag(Lcom/oplus/camera/professional/h;)Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0708d5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 2235
    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->i(I)V

    .line 2237
    iget-object v3, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v3}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/h;->d()V

    .line 2238
    iget-object v3, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v3}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/h;->e()V

    .line 2240
    iget-object v3, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v3}, Lcom/oplus/camera/professional/h;->ai(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2241
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2242
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    .line 2244
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2245
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 2248
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2249
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2252
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->aj(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    goto :goto_3

    .line 2253
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2254
    iget-object v0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ak(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2255
    iget-object v0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2257
    iget-object v3, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v3}, Lcom/oplus/camera/professional/h;->al(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 2258
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2259
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2261
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1b

    goto :goto_1

    :cond_5
    const/4 v1, 0x7

    .line 2262
    :goto_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2263
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2266
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/professional/h$7;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->am(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_6
    :goto_3
    return-void
.end method

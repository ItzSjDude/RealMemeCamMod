.class Lcom/oplus/camera/professional/v$7;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
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

    .line 2225
    iput-object p1, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 2228
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->R(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ProfessionalCapMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 2229
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    const-wide/32 v1, 0xf4240

    const-wide/16 v3, 0x12c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 2235
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/camera/professional/v;->c(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2236
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->S(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2237
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->T(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v9

    const v10, 0x7f100314

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2243
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v9, v1

    long-to-int v0, v9

    .line 2245
    iget-object v1, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3

    int-to-long v9, v0

    invoke-virtual {v1, v9, v10}, Lcom/oplus/camera/ui/h;->a(J)V

    .line 2247
    iget-object v1, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->U(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2248
    iget-object v1, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->V(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 2253
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->W(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2254
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->X(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2255
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->Y(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 2256
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v7, v5}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;IZ)V

    .line 2257
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->Z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f100322

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2258
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aa(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v6, v5, v8}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 2261
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;Z)Z

    .line 2262
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/v;->c(Lcom/oplus/camera/professional/v;Z)V

    .line 2263
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v8, v8}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;ZZ)V

    .line 2265
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->P(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/v$a;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2266
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->F(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto/16 :goto_0

    .line 2267
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2268
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ab(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2269
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ac(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2270
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ad(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 2271
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ae(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    .line 2272
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v7, v5}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;IZ)V

    .line 2273
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->af(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v6, v5, v8}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 2276
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;Z)Z

    .line 2277
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/v;->c(Lcom/oplus/camera/professional/v;Z)V

    .line 2278
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v8, v8, v5}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;ZZZ)V

    .line 2280
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->P(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/v$a;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2281
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->F(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2283
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ag(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2284
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v0, v3

    .line 2286
    iget-object v1, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->ah(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 2290
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->P(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/v$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    .line 2292
    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ai(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    .line 2293
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aj(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    .line 2294
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ak(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 2295
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const-string v1, "button_color_inside_none"

    invoke-direct {v0, v7, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 2297
    iget-object p0, p0, Lcom/oplus/camera/professional/v$7;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->al(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_7
    return-void
.end method

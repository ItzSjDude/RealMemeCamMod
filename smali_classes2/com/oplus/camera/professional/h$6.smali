.class Lcom/oplus/camera/professional/h$6;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
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

    .line 2088
    iput-object p1, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 2091
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->L(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "HSProfessionalCapMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 2092
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    const-wide/32 v1, 0xf4240

    const-wide/16 v3, 0x12c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 2098
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/camera/professional/h;->c(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->M(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->N(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v9

    const v10, 0x7f100314

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2105
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2106
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v9, v1

    long-to-int v0, v9

    .line 2108
    iget-object v1, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3

    int-to-long v9, v0

    invoke-virtual {v1, v9, v10}, Lcom/oplus/camera/ui/h;->a(J)V

    .line 2110
    iget-object v1, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->O(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2111
    iget-object v1, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->P(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 2116
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->Q(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2117
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->R(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2118
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->S(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 2119
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v7, v5}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;IZ)V

    .line 2120
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->T(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v6, v5, v8}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 2123
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;Z)Z

    .line 2124
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/h;->c(Lcom/oplus/camera/professional/h;Z)V

    .line 2125
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v8, v8}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;ZZ)V

    .line 2127
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->J(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/h$a;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2128
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->B(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 2129
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2130
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->U(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2131
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->V(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2132
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->W(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 2133
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v7, v5}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;IZ)V

    .line 2134
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->X(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v6, v5, v8}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 2137
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;Z)Z

    .line 2138
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v8}, Lcom/oplus/camera/professional/h;->c(Lcom/oplus/camera/professional/h;Z)V

    .line 2139
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v8, v8, v5}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;ZZZ)V

    .line 2141
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->J(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/h$a;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2142
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->B(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v6, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2144
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->Y(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2145
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v0, v3

    .line 2147
    iget-object v1, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->Z(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 2151
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->J(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/h$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    .line 2153
    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aa(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    .line 2154
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ab(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    .line 2155
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ac(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 2156
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const-string v1, "button_color_inside_none"

    invoke-direct {v0, v7, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 2158
    iget-object p0, p0, Lcom/oplus/camera/professional/h$6;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->ad(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_7
    return-void
.end method

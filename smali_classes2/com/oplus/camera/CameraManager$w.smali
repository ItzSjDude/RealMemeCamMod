.class public Lcom/oplus/camera/CameraManager$w;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "w"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 13065
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 13213
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->o(I)I

    move-result p0

    .line 13215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSwitchAnimTime, switchTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public a()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "onSwitchAnimStart"

    .line 13068
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13070
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13071
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bW()V

    .line 13073
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13074
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->q(Z)V

    .line 13075
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dQ()V

    .line 13078
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 13079
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 13082
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->B(Z)V

    .line 13084
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13085
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/oplus/camera/ui/d;->b(ZZZZ)V

    .line 13088
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->at()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 13089
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const v3, 0x7f1003eb

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 13090
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cQ()V

    .line 13091
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->da()V

    .line 13093
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v3, "pref_zoom_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    .line 13094
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v3, "pref_expand_popbar_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13095
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 13098
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bu()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13099
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->p(ZZ)V

    .line 13100
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->r(ZZ)V

    .line 13103
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13104
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13105
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;Z)Z

    .line 13107
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->al()V

    :cond_6
    return-void
.end method

.method public b()V
    .locals 4

    .line 13113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimMiddle, mAfterSwitchPrvSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13115
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bT(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->di()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13116
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/ui/d;->a(Landroid/util/Size;Landroid/util/Size;Z)V

    .line 13117
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 13120
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13121
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/oplus/camera/ui/d;->a(Landroid/util/Size;Landroid/util/Size;Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 8

    const-string v0, "CameraManager"

    const-string v1, "onSwitchAnimEnd"

    .line 13128
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13130
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13134
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/s;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13135
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    .line 13138
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bT(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 13139
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13140
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    .line 13141
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 13140
    invoke-virtual {v0, v2, v3, v1}, Lcom/oplus/camera/ui/d;->a(Landroid/util/Size;Landroid/util/Size;Z)V

    .line 13142
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->W(Z)V

    .line 13143
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->f(ZZ)V

    .line 13144
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->I()V

    .line 13145
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 13147
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13148
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 13151
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->as()V

    .line 13153
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13154
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 13157
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v3, "pref_filter_process_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13159
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v3, "key_support_grand_tour_fitlers"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13160
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_recommended_menu_filter_icon_clicked_key"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const/4 v0, 0x0

    .line 13166
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    const-string v4, "pref_portrait_new_style_menu"

    invoke-virtual {v3, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "pref_night_filter_menu"

    const-string v6, "pref_video_filter_menu"

    const-string v7, "pref_filter_menu"

    if-eqz v3, :cond_5

    move-object v0, v4

    goto :goto_0

    .line 13168
    :cond_5
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v7

    goto :goto_0

    .line 13170
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v6

    goto :goto_0

    .line 13172
    :cond_7
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v5

    :cond_8
    :goto_0
    if-eqz v0, :cond_9

    .line 13177
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/camera/ui/d;->g(Ljava/lang/String;)V

    .line 13180
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aa()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13181
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->l(ZZ)V

    goto :goto_1

    .line 13183
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->j(ZZ)V

    .line 13186
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bt()Z

    move-result v0

    if-nez v0, :cond_b

    .line 13187
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->h(ZZ)V

    goto :goto_2

    .line 13188
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bt()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    .line 13189
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    .line 13190
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-nez v0, :cond_c

    .line 13191
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->i(ZZ)V

    .line 13194
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aT(Lcom/oplus/camera/CameraManager;)V

    .line 13196
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->d(Z)V

    .line 13197
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 13198
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 13199
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 13201
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13203
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->di()Z

    move-result v0

    if-nez v0, :cond_d

    .line 13204
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 13208
    :cond_d
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, v1, v1}, Lcom/oplus/camera/ui/inverse/e;->setMaskAlpha(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onSwitchAnimCancel"

    .line 13222
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13224
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 13225
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->d(Z)V

    .line 13226
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$w;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v1}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

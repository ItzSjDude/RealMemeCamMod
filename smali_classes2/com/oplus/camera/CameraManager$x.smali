.class Lcom/oplus/camera/CameraManager$x;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "x"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 14077
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 14077
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$x;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 14102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeUpdated, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ce(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14104
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ce(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 14105
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 14080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeOut, getCurrentModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14082
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;ZZZ)V

    return-void
.end method

.method public b(Z)V
    .locals 5

    .line 14087
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->dp()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;Z)Z

    .line 14088
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14089
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Landroid/util/Size;)Z

    move-result v1

    .line 14088
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->al(Z)V

    .line 14090
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->Z()V

    .line 14091
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 14092
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 14093
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 14095
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 14096
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p0

    invoke-interface {p0, v3, v1}, Lcom/oplus/camera/watch/b$b;->a(ILandroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 6

    .line 14111
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 14112
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/watch/b$b;->a(ILandroid/graphics/Bitmap;)V

    .line 14115
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 14116
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 14118
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14119
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14120
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->ao()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14121
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->ap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14122
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/d;->f(I)V

    .line 14123
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/d;->g(I)V

    .line 14124
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/d;->e(F)V

    .line 14125
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 14126
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oplus/camera/capmode/ModeManager;->i(Z)V

    .line 14127
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->q()V

    .line 14128
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/camera/ui/d;->c(Z)V

    .line 14129
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/camera/ui/d;->v(Z)V

    .line 14130
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/camera/ui/d;->r(Z)V

    .line 14131
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/ui/d;->l(ZZ)V

    .line 14132
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->bU()V

    .line 14134
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bt()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14135
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/ui/d;->i(ZZ)V

    .line 14138
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 14140
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    const-string v4, "pref_expand_popbar_key"

    invoke-virtual {v3, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14141
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/CameraManager;->e(ZZ)V

    .line 14142
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 14146
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/entry/b;->J()I

    move-result v3

    if-eq v3, v0, :cond_8

    if-eqz p1, :cond_4

    .line 14147
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14148
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14149
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->ao()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    .line 14150
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->ap()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 14151
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result p1

    const-string v0, "pref_headline_control_by_mode"

    if-eqz p1, :cond_5

    .line 14152
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 14153
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cf(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    .line 14155
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/oplus/camera/ui/d;->b(ZI)V

    goto :goto_0

    .line 14158
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 14159
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ui/d;->a(II)V

    .line 14163
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14164
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/d;->d(I)V

    goto :goto_1

    .line 14166
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->d(I)V

    .line 14172
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 14173
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/preview/ab;->c(Z)V

    .line 14176
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cf(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 14177
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_a
    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 14182
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14183
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$x;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ab;->c(Z)V

    :cond_0
    return-void
.end method

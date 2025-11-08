.class public Lcom/oplus/camera/professional/o;
.super Lcom/oplus/camera/professional/r;
.source "NightProMenuManager.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/professional/r;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V

    return-void
.end method

.method private y()Lcom/oplus/camera/professional/p$a;
    .locals 2

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getConfigData()Lcom/oplus/camera/professional/p$a;

    move-result-object p0

    const-wide/32 v0, 0xee6b28

    .line 50
    iput-wide v0, p0, Lcom/oplus/camera/professional/p$a;->b:J

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pref_professional_iso_key"

    const-string v1, "100"

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_exposure_time_key"

    const-string v1, "1/50s"

    .line 34
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_whitebalance_key"

    const-string v1, "2000"

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_focus_mode_key"

    const-string v1, "0.00"

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/professional/r$b;->a(J)V

    return-void
.end method

.method public a([BZZ)V
    .locals 4

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAfterPictureTaken isInNightProProcess: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbNeedShowMenuAfterTakePicture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/professional/o;->a:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NightProMenuManager"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x12c

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 137
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/o;->c(I)V

    .line 138
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    .line 140
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p3}, Lcom/oplus/camera/professional/r$b;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 141
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    invoke-static {p3, v2, v0, p1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 142
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/professional/o;->a(IZ)V

    .line 145
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 146
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p3}, Lcom/oplus/camera/professional/r$b;->h()Lcom/oplus/camera/ui/control/b;

    move-result-object p3

    .line 147
    iget-object v3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, p3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 149
    invoke-virtual {p0}, Lcom/oplus/camera/professional/o;->i()Z

    move-result p3

    if-nez p3, :cond_2

    .line 150
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3}, Lcom/oplus/camera/ui/CameraUIInterface;->d()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p3}, Lcom/oplus/camera/professional/r$b;->i()Z

    move-result p3

    if-nez p3, :cond_1

    .line 151
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 154
    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 155
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {p3, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 159
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 161
    iget-boolean p3, p0, Lcom/oplus/camera/professional/o;->a:Z

    if-eqz p3, :cond_4

    .line 162
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p3}, Lcom/oplus/camera/professional/r$b;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 163
    iget-object p3, p0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    invoke-static {p3, v2, v0, p1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 166
    :cond_3
    iput-boolean v2, p0, Lcom/oplus/camera/professional/o;->a:Z

    .line 169
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NightProMenuManager"

    const-string p1, "onBeforeSnapping, levelPanelScrolling"

    .line 98
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 103
    iget-object v2, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    .line 105
    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    const/4 v3, 0x2

    .line 106
    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return v1

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/o;->c:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/o$1;

    invoke-direct {v2, p0, p1}, Lcom/oplus/camera/professional/o$1;-><init>(Lcom/oplus/camera/professional/o;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public c()Z
    .locals 9

    const-string v0, "NightProMenuManager"

    const-string v1, "onBackPressed"

    .line 67
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 75
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->e:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f100319

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->g()V

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0, v2}, Lcom/oplus/camera/professional/r$b;->b(Z)V

    return v2

    :cond_2
    return v1
.end method

.method public d()V
    .locals 3

    .line 43
    new-instance v0, Lcom/oplus/camera/professional/m;

    iget-object v1, p0, Lcom/oplus/camera/professional/o;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/o;->e:Lcom/oplus/camera/capmode/a;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/professional/m;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->g:Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/o;->k:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/professional/o;->b:I

    .line 45
    invoke-static {v1, v2}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/o;->f:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/camera/professional/o;->y()Lcom/oplus/camera/professional/p$a;

    move-result-object p0

    .line 44
    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/p$a;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r$a;->setVisibility(I)V

    .line 60
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/o;->b(I)V

    .line 61
    iget-object v0, p0, Lcom/oplus/camera/professional/o;->e:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/oplus/camera/professional/o;->k()V

    return-void
.end method

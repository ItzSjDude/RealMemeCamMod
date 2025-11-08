.class Lcom/oplus/camera/CameraManager$e;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/e/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 11124
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 11124
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$e;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 11127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onCameraOpened, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    .line 11128
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 11127
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11130
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 11137
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bK(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11138
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bm(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$e;)V

    .line 11140
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11141
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bm(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->setStateObserver(Lcom/oplus/camera/e/d$e;)V

    .line 11143
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11145
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    goto/16 :goto_1

    .line 11162
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cQ()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/f;

    invoke-virtual {v0}, Lcom/oplus/camera/e/f;->D()Lcom/oplus/camera/capmode/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11163
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/f;

    invoke-virtual {v0}, Lcom/oplus/camera/e/f;->D()Lcom/oplus/camera/capmode/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/a/a;->d()V

    .line 11170
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;Z)Z

    .line 11171
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/util/Size;)Landroid/util/Size;

    .line 11172
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11175
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/util/Size;)Landroid/util/Size;

    .line 11178
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11179
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->t(Z)V

    .line 11182
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/o;->b(Z)V

    .line 11183
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->X(Z)V

    .line 11184
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/d;)V

    .line 11185
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->d(I)V

    .line 11187
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11188
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$n;->e()V

    .line 11191
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->k(I)V

    .line 11192
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/CameraManager;->c(ZZ)V

    .line 11193
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$e$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$e$1;-><init>(Lcom/oplus/camera/CameraManager$e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    .line 11207
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->b(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    .line 11208
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 11212
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->n(I)V

    goto :goto_1

    :cond_8
    :goto_0
    return-void

    .line 11149
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;Z)Z

    .line 11150
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;I)I

    .line 11151
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    const/16 v1, 0x60

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IZ)V

    .line 11152
    invoke-static {}, Lcom/oplus/camera/util/Util;->q()V

    .line 11153
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager;->m(I)V

    .line 11155
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 11156
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/ModeManager;->t(Z)V

    :cond_a
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 11143
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11131
    :cond_b
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraOpenCallback onCameraOpened, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mOneCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", CameraManager: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", CameraActivity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    .line 11132
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraManager"

    .line 11131
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 11282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onError, cameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mOpenCameraType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    .line 11283
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    .line 11282
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p1, p2, :cond_0

    .line 11286
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/e/f;

    invoke-virtual {p1}, Lcom/oplus/camera/e/f;->F()V

    .line 11289
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11290
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager$n;->j()V

    .line 11293
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bK(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 11294
    :try_start_0
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 11295
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$e;)V

    .line 11298
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 11299
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/oplus/camera/aps/service/ApsService;->setStateObserver(Lcom/oplus/camera/e/d$e;)V

    .line 11301
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11303
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bO(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11304
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11305
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cq()V

    goto :goto_0

    .line 11310
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 11301
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(ZI)V
    .locals 2

    .line 11222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onFailure, cameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    .line 11223
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bN(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 11222
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 11227
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/e/f;

    invoke-virtual {p2}, Lcom/oplus/camera/e/f;->F()V

    .line 11230
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11231
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/CameraManager$n;->j()V

    .line 11234
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->bK(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 11235
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11236
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$e;)V

    .line 11239
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11240
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/aps/service/ApsService;->setStateObserver(Lcom/oplus/camera/e/d$e;)V

    .line 11242
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11244
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 11249
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 11251
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/CameraManager$e$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/CameraManager$e$2;-><init>(Lcom/oplus/camera/CameraManager$e;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11262
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/CameraManager$e$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/CameraManager$e$3;-><init>(Lcom/oplus/camera/CameraManager$e;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 11242
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(I)V
    .locals 2

    .line 11316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onCameraClosed, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    .line 11317
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 11316
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 11320
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/e/d;->s()V

    .line 11321
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;I)V

    .line 11323
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/CameraManager$e$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/CameraManager$e$4;-><init>(Lcom/oplus/camera/CameraManager$e;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 11330
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;I)V

    .line 11331
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/e/f;

    invoke-virtual {p0}, Lcom/oplus/camera/e/f;->F()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 11337
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/camera/e/f;

    if-eqz v0, :cond_0

    .line 11338
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/e/f;

    invoke-virtual {p0}, Lcom/oplus/camera/e/f;->D()Lcom/oplus/camera/capmode/a/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11341
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/a/a;->e(I)V

    .line 11343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openCamera mMultiCameraDecision: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

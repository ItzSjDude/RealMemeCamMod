.class final Lcom/oplus/camera/CameraManager$v;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/e/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "v"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 9811
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 9811
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$v;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onSessionConfigureFailed"

    .line 9969
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9971
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$v$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$v$2;-><init>(Lcom/oplus/camera/CameraManager$v;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    .line 9978
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9979
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dC()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/e/c;I)V
    .locals 1

    .line 9985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSessionClosed, role: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9987
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.oplus.multi.video.mode.support"

    .line 9988
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9989
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9990
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/h;->f(I)V

    :cond_0
    const/4 p1, 0x2

    if-ne p1, p2, :cond_1

    return-void

    .line 9999
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/CameraManager$v$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/CameraManager$v$3;-><init>(Lcom/oplus/camera/CameraManager$v;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    .line 10007
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10008
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager$n;->d()V

    .line 10011
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 10012
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 10013
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "oplus.software.motor_support"

    .line 10014
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10015
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p1

    .line 10016
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/camera/g;->b(I)V

    .line 10019
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bp(Lcom/oplus/camera/CameraManager;)V

    .line 10020
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->Z(Lcom/oplus/camera/CameraManager;)V

    .line 10021
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 1

    .line 9832
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9833
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/t;->a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 9836
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9837
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bb()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/oplus/camera/watch/b$b;->a(Z)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/LinkedHashMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;I)V"
        }
    .end annotation

    .line 9814
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p0

    const-string p2, "type_multi_main_preview_frame"

    invoke-virtual {p0, p2}, Lcom/oplus/camera/t;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string p2, "rear_main"

    .line 9821
    invoke-virtual {p1, p2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9823
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "front_wide"

    .line 9824
    invoke-virtual {p1, p2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "front_main"

    .line 9826
    invoke-virtual {p1, p2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    .line 9843
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const-string v1, "CameraManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 9849
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;Z)Z

    .line 9850
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;Z)Z

    .line 9851
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->Z(Lcom/oplus/camera/CameraManager;)V

    .line 9853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigured, cameraRole: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9855
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->a()Lcom/oplus/camera/gl/GLRootView;

    move-result-object v0

    .line 9857
    new-instance v3, Lcom/oplus/camera/CameraManager$v$1;

    invoke-direct {v3, p0, p1}, Lcom/oplus/camera/CameraManager$v$1;-><init>(Lcom/oplus/camera/CameraManager$v;I)V

    invoke-virtual {v0, v3}, Lcom/oplus/camera/gl/GLRootView;->post(Ljava/lang/Runnable;)Z

    .line 9917
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "pref_face_detection_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9918
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->k()V

    goto :goto_0

    .line 9920
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9923
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/t;->a()V

    .line 9925
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "key_support_time_lapse_pro"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 9926
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bg(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    .line 9928
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/oplus/camera/CameraManager;->a(FZZ)V

    :cond_3
    const-string v0, "setRepeatingRequest"

    .line 9935
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 9937
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4, v2}, Lcom/oplus/camera/CameraManager;->p(Lcom/oplus/camera/CameraManager;Z)Z

    .line 9938
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4, v2}, Lcom/oplus/camera/CameraManager;->q(Lcom/oplus/camera/CameraManager;Z)Z

    .line 9939
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bi(Lcom/oplus/camera/CameraManager;)V

    .line 9940
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bj(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$c;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 9942
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 9944
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/t;->e()V

    .line 9946
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->i()V

    .line 9948
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bk(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 9950
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9951
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bm(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/aps/service/ApsService;->setStateObserver(Lcom/oplus/camera/e/d$e;)V

    :cond_4
    const-string v0, "onSessionConfigured, unlock"

    .line 9954
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9956
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9957
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager$n;->b(I)V

    .line 9960
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bn(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9961
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bo(Lcom/oplus/camera/CameraManager;)V

    :cond_6
    return v3

    :cond_7
    :goto_1
    const-string p0, "onSessionConfigured, Camera closed, aborting"

    .line 9844
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b(I)V
    .locals 0

    .line 10026
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10027
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 10030
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->l(Z)V

    .line 10031
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->m(Z)V

    const/4 p1, 0x1

    .line 10032
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->f(I)V

    const/4 p1, 0x2

    .line 10033
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->f(I)V

    :cond_0
    return-void
.end method

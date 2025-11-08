.class Lcom/oplus/camera/CameraManager$73;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->aX()Lcom/oplus/camera/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 23358
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 23370
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23371
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aI()V

    .line 23374
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dM(Lcom/oplus/camera/CameraManager;)V

    .line 23379
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->g()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 23380
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->e()I

    move-result v0

    const-string v3, "on"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 23404
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_camera_hdr_mode_key"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23405
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move v3, v1

    move v0, v2

    goto :goto_1

    :pswitch_2
    move v0, v1

    move v3, v2

    goto :goto_1

    .line 23388
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dk()V

    goto :goto_0

    .line 23383
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "key_ai_enhancement_video"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23384
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v0, v2

    move v3, v0

    .line 23414
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    const-string v5, "func_face_beauty_process"

    invoke-virtual {v4, v5}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    .line 23415
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/entry/b;->i()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-eqz v4, :cond_c

    .line 23418
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v4}, Lcom/oplus/camera/CameraManager;->aY()Z

    move-result v4

    if-nez v4, :cond_c

    .line 23419
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    if-eqz v0, :cond_5

    const-string v5, "beauty"

    goto :goto_3

    :cond_5
    const-string v5, "filter"

    :goto_3
    invoke-virtual {v4, v5}, Lcom/oplus/camera/capmode/ModeManager;->f(Ljava/lang/String;)V

    .line 23422
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->by()I

    move-result v4

    .line 23423
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oplus/camera/capmode/ModeManager;->p(I)V

    .line 23424
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oplus/camera/ui/d;->j(I)V

    .line 23426
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->bx()Z

    move-result v4

    if-nez v4, :cond_8

    .line 23427
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    const/4 v0, 0x3

    :goto_4
    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/d;->H(I)V

    .line 23430
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23431
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v2}, Lcom/oplus/camera/ag;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 23434
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->u(Z)V

    .line 23437
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    .line 23438
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    if-ne v1, v0, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    const-string v0, "com.oplus.feature.face.beauty.custom.menu.support"

    .line 23440
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_b

    .line 23442
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->z(I)V

    :cond_b
    if-eqz v3, :cond_c

    .line 23446
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dN(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-static {p0, v0, v2, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IZZ)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 1

    .line 23361
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;Z)Z

    .line 23363
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23364
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->aq(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 23453
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dM(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 23458
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$73;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

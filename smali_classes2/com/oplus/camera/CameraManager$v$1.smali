.class Lcom/oplus/camera/CameraManager$v$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$v;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/CameraManager$v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$v;I)V
    .locals 0

    .line 9857
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iput p2, p0, Lcom/oplus/camera/CameraManager$v$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 9860
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 9864
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "onCaptureSessionOk"

    .line 9868
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 9870
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    iget v2, p0, Lcom/oplus/camera/CameraManager$v$1;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/CameraManager;->a(ZI)V

    .line 9872
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    const-string v2, "key_support_decrease_brightness"

    invoke-virtual {v1, v2}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9873
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ba(Lcom/oplus/camera/CameraManager;)V

    .line 9876
    :cond_2
    sget-boolean v1, Lcom/oplus/camera/Camera;->m:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/oplus/camera/Camera;->o:Z

    if-eqz v1, :cond_3

    .line 9877
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bb(Lcom/oplus/camera/CameraManager;)V

    goto :goto_0

    .line 9878
    :cond_3
    sget-boolean v1, Lcom/oplus/camera/Camera;->l:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/oplus/camera/Camera;->n:Z

    if-eqz v1, :cond_4

    .line 9879
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bc(Lcom/oplus/camera/CameraManager;)V

    .line 9882
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->l()Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_9

    .line 9883
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v4, v4, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 9884
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f1001cc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_gesture_shutter_key"

    .line 9883
    invoke-virtual {v1, v5, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9886
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v4, v4, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 9887
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 9888
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bd(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 9889
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->be(Lcom/oplus/camera/CameraManager;)B

    move-result v1

    if-eq v1, v5, :cond_5

    .line 9890
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;B)B

    .line 9893
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v4, v4, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->be(Lcom/oplus/camera/CameraManager;)B

    move-result v4

    if-ne v4, v6, :cond_6

    move v4, v6

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    iget-object v7, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v7, v7, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 9894
    invoke-static {v7}, Lcom/oplus/camera/CameraManager;->be(Lcom/oplus/camera/CameraManager;)B

    move-result v7

    if-eq v7, v6, :cond_8

    iget-object v7, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v7, v7, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v7}, Lcom/oplus/camera/CameraManager;->bf(Lcom/oplus/camera/CameraManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    move v6, v3

    .line 9893
    :cond_8
    :goto_2
    invoke-virtual {v1, v4, v6}, Lcom/oplus/camera/CameraManager;->a(ZZ)V

    .line 9896
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;B)B

    goto :goto_3

    .line 9897
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/o;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/o;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9898
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->o()V

    .line 9901
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v3}, Lcom/oplus/camera/CameraManager;->o(Lcom/oplus/camera/CameraManager;Z)Z

    const-string v1, "com.oplus.gesture.detect.in.aps"

    .line 9903
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    .line 9904
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 9905
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v3, v3, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->l()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    const-string v2, "off"

    :goto_4
    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->g(Ljava/lang/String;)V

    .line 9906
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 9909
    :cond_c
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->n()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9910
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v$1;->b:Lcom/oplus/camera/CameraManager$v;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->m()V

    .line 9913
    :cond_d
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.class Lcom/oplus/camera/CameraManager$70;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->b(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;F)V
    .locals 0

    .line 21911
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    iput p2, p0, Lcom/oplus/camera/CameraManager$70;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 21914
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21920
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.oplus.feature.capture.flash.only_main.zoom.support"

    .line 21921
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "pref_camera_videoflashmode_key"

    goto :goto_0

    :cond_2
    const-string v0, "pref_camera_flashmode_key"

    .line 21928
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v1

    .line 21930
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    iget v3, p0, Lcom/oplus/camera/CameraManager$70;->a:F

    invoke-static {v2, v3}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;F)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "com.oplus.feature.flash.full.zoom.support"

    const-string v5, "auto"

    const-string v6, "on"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "off"

    if-eqz v2, :cond_5

    .line 21931
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/oplus/camera/capmode/ModeManager;->v(Z)V

    .line 21933
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21934
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 21938
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21940
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v2

    .line 21942
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 21943
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 21946
    :cond_5
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21947
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 21948
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "torch"

    .line 21952
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    .line 21953
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21954
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oplus/camera/capmode/ModeManager;->v(Z)V

    .line 21955
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Z)V

    .line 21956
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 21949
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/oplus/camera/capmode/ModeManager;->v(Z)V

    .line 21950
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v9, v8}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Z)V

    .line 21951
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21959
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 21962
    :cond_9
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 21963
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/oplus/camera/capmode/ModeManager;->v(Z)V

    .line 21964
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v9, v8}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Z)V

    .line 21967
    :cond_a
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21969
    :goto_3
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oplus/camera/ui/d;->A(Z)V

    .line 21972
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$70;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    return-void
.end method

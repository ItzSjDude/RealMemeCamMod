.class Lcom/oplus/camera/CameraManager$62;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->c(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;ZZZ)V
    .locals 0

    .line 19855
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    iput-boolean p2, p0, Lcom/oplus/camera/CameraManager$62;->a:Z

    iput-boolean p3, p0, Lcom/oplus/camera/CameraManager$62;->b:Z

    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$62;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 19858
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$62;->a:Z

    iget-boolean v2, p0, Lcom/oplus/camera/CameraManager$62;->b:Z

    iget-boolean v3, p0, Lcom/oplus/camera/CameraManager$62;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;ZZZ)Z

    move-result v0

    const-string v1, "normal"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 19859
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19860
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "view_enable"

    .line 19861
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "view_ashed"

    .line 19862
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19863
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 19864
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/oplus/camera/w/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 19865
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19866
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 19869
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 19871
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19872
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$62$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$62$1;-><init>(Lcom/oplus/camera/CameraManager$62;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19882
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->N(Lcom/oplus/camera/CameraManager;Z)Z

    .line 19883
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->a(Z)V

    .line 19884
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dO()V

    return-void

    .line 19888
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;I)I

    .line 19889
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->v(Z)V

    .line 19891
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19892
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Lcom/oplus/camera/CameraManager$62$2;

    invoke-direct {v4, p0}, Lcom/oplus/camera/CameraManager$62$2;-><init>(Lcom/oplus/camera/CameraManager$62;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19902
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19903
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oplus/camera/u/d;->a(Z)V

    .line 19906
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 19907
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->bZ()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Lcom/oplus/camera/aps/service/ApsService;->setHeicCodecOpen(Z)V

    .line 19908
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->bN()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/aps/service/ApsService;->setHighPictureSize(Z)V

    .line 19911
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->K()Z

    move-result v0

    const-string v4, "capture"

    const-string v5, "CameraTest Shutter Respond Start"

    const-string v6, "CameraManager"

    if-eqz v0, :cond_a

    .line 19912
    invoke-static {v6, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 19916
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19917
    invoke-static {v4}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;)V

    .line 19919
    invoke-static {v5, v6}, Lcom/oplus/camera/perf/ComprehensivePerformance;->c(J)V

    .line 19920
    invoke-static {v5, v6}, Lcom/oplus/camera/perf/FluencyPerformance;->b(J)V

    goto :goto_1

    .line 19922
    :cond_7
    invoke-static {v5, v6, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->b(JZ)V

    .line 19925
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-boolean v4, p0, Lcom/oplus/camera/CameraManager$62;->c:Z

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->d(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 19926
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 19927
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Lcom/oplus/camera/CameraManager$62$3;

    invoke-direct {v4, p0}, Lcom/oplus/camera/CameraManager$62$3;-><init>(Lcom/oplus/camera/CameraManager$62;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19937
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 19938
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->a(Z)V

    .line 19941
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 19942
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->N(Lcom/oplus/camera/CameraManager;Z)Z

    .line 19943
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dO()V

    return-void

    .line 19948
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dC(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dD(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v7

    cmp-long v0, v7, v9

    if-nez v0, :cond_b

    .line 19949
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v11, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v11}, Lcom/oplus/camera/CameraManager;->dC(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    invoke-static {v0, v7, v8}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;J)J

    goto :goto_2

    .line 19951
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    const-wide/16 v7, -0x1

    invoke-static {v0, v7, v8}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;J)J

    .line 19954
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dE(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v7

    cmp-long v0, v7, v9

    if-lez v0, :cond_c

    .line 19955
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->dE(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v0, v7, v8}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;J)J

    .line 19958
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;J)J

    .line 19960
    invoke-static {v6, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 19964
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    const-string v5, "panorama"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    .line 19965
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-nez v0, :cond_d

    .line 19966
    invoke-static {v4}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;)V

    .line 19968
    invoke-static {v7, v8}, Lcom/oplus/camera/perf/ComprehensivePerformance;->c(J)V

    .line 19969
    invoke-static {v7, v8}, Lcom/oplus/camera/perf/FluencyPerformance;->b(J)V

    goto :goto_3

    .line 19971
    :cond_d
    invoke-static {v7, v8, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->b(JZ)V

    .line 19974
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 19975
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    .line 19976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 19975
    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/u/d;->a(J)Lcom/oplus/camera/u/a;

    move-result-object v0

    .line 19977
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/u/a;)V

    if-eqz v0, :cond_e

    .line 19979
    invoke-virtual {v0}, Lcom/oplus/camera/u/a;->c()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v4}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result v4

    if-nez v4, :cond_e

    .line 19980
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/u/a;)V

    .line 19981
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/oplus/camera/ui/CameraUIListener;->b(Lcom/oplus/camera/u/a;)V

    goto :goto_4

    .line 19983
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/u/a;)V

    :cond_f
    :goto_4
    const-string v0, "CameraCapturePerformance.capture"

    .line 19987
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 19989
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oplus/camera/CameraManager$62;->c:Z

    invoke-virtual {v4, v5}, Lcom/oplus/camera/capmode/ModeManager;->d(Z)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "doCapture, capture failed for some reason!"

    .line 19990
    invoke-static {v6, v4}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19992
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 19993
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/oplus/camera/CameraManager$62$4;

    invoke-direct {v5, p0}, Lcom/oplus/camera/CameraManager$62$4;-><init>(Lcom/oplus/camera/CameraManager$62;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20011
    :cond_10
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v4, v3}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 20012
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v4, v3}, Lcom/oplus/camera/CameraManager;->a(Z)V

    .line 20015
    :cond_11
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 20017
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 20018
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->N(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

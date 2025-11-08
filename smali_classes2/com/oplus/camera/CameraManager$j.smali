.class public Lcom/oplus/camera/CameraManager$j;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/util/Size;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 1

    .line 12818
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12819
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    .line 12820
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$j;->c:Z

    .line 12821
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$j;->d:Z

    const/4 v0, 0x0

    .line 12822
    iput-object v0, p0, Lcom/oplus/camera/CameraManager$j;->e:Landroid/util/Size;

    .line 12823
    iput p1, p0, Lcom/oplus/camera/CameraManager$j;->f:I

    .line 12824
    iput p1, p0, Lcom/oplus/camera/CameraManager$j;->g:I

    return-void
.end method

.method private e()Z
    .locals 3

    .line 12829
    iget v0, p0, Lcom/oplus/camera/CameraManager$j;->f:I

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12831
    :cond_0
    iget v0, p0, Lcom/oplus/camera/CameraManager$j;->f:I

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12832
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/CameraManager$j;->f:I

    iget v2, p0, Lcom/oplus/camera/CameraManager$j;->g:I

    .line 12833
    invoke-static {v0, v2}, Lcom/oplus/camera/util/Util;->e(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/oplus/camera/CameraManager$j;->g:I

    .line 12834
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->c(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 12985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch camera mode, onAnimationEnd, mbCancle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$j;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12987
    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$j;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 12991
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 12992
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/z;->b(Z)V

    .line 12995
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$j;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12996
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$j;->e:Landroid/util/Size;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 12999
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 13000
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dY()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 13001
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 13002
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->dI()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 13003
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->e(F)V

    .line 13006
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->c(Z)V

    .line 13007
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 13008
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 13010
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 13012
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13013
    iput-boolean v2, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    return-void

    .line 13017
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dS()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13018
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 13019
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->i(Z)V

    goto :goto_0

    .line 13021
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 13022
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 13025
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->R()Z

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/oplus/camera/ui/d;->b(IZZ)V

    .line 13027
    iput-boolean v2, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    .line 13029
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13030
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13032
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aT(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 8

    const-string p1, "CameraManager"

    const-string v0, "switch camera mode, onAnimationStart"

    .line 12843
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 12845
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    .line 12846
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$j;->c:Z

    const/4 v0, 0x0

    .line 12847
    iput-boolean v0, p0, Lcom/oplus/camera/CameraManager$j;->d:Z

    .line 12849
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->bW()V

    .line 12850
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 12851
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/entry/b;->J()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->b(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_mode_key"

    .line 12850
    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12852
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;)Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v2

    const-string v3, "pref_filter_process_key"

    .line 12854
    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12855
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oplus/camera/ui/d;->q(Z)V

    .line 12858
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12859
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v3

    .line 12860
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4, v3, p1, p1, p1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 12863
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12864
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->cx()V

    .line 12867
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->ex()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12868
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->eM()V

    .line 12871
    :cond_4
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/camera/ui/d;->B(Z)V

    .line 12873
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->aJ()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12874
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 12875
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->resetTiltShiftParams()V

    :cond_5
    const-string v3, "pref_video_super_eis_key"

    .line 12879
    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 12880
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->N()V

    .line 12883
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v4}, Lcom/oplus/camera/CameraManager;->at()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12884
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    const v4, 0x7f1003eb

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12885
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->cQ()V

    const-string v3, "pref_zoom_key"

    .line 12887
    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "pref_expand_popbar_key"

    if-eqz v4, :cond_8

    .line 12888
    invoke-virtual {v2, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 12890
    :cond_7
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ag;->j()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 12891
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v4}, Lcom/oplus/camera/CameraManager;->aw()Z

    goto :goto_2

    .line 12889
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, p1, v0}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 12894
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const-string v6, "pref_macro_switch"

    invoke-virtual {v4, v6}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 12895
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/d;->aj(Z)V

    .line 12896
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    const v6, 0x7f1000a3

    invoke-virtual {v4, v6}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12897
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    const v6, 0x7f100258

    invoke-virtual {v4, v6}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12900
    :cond_a
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/camera/capmode/ModeManager;->cp()I

    move-result v6

    invoke-static {v4, v6}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;I)V

    .line 12902
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    const/16 v6, 0x12

    invoke-virtual {v4, v6, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12903
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, p1}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Z)V

    .line 12904
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4, p1, v0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZZ)V

    .line 12905
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12907
    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->showBeautyButton()Z

    move-result v4

    if-nez v4, :cond_b

    .line 12908
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/oplus/camera/ui/d;->j(ZZ)V

    goto :goto_4

    .line 12910
    :cond_b
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 12911
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->P()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->Q()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v4, p1

    goto :goto_3

    :cond_d
    move v4, v0

    .line 12912
    :goto_3
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/oplus/camera/ui/d;->l(ZZ)V

    .line 12915
    :goto_4
    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->showMenuLeftButton()Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "night"

    .line 12916
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "com.oplus.night.pro.support"

    .line 12917
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 12918
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4, v0, v0}, Lcom/oplus/camera/ui/d;->h(ZZ)V

    goto :goto_6

    .line 12920
    :cond_e
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/oplus/camera/ui/d;->h(ZZ)V

    goto :goto_6

    .line 12923
    :cond_f
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 12924
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->P()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->Q()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    move v4, p1

    goto :goto_5

    :cond_11
    move v4, v0

    .line 12925
    :goto_5
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/oplus/camera/ui/d;->i(ZZ)V

    .line 12928
    :goto_6
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 12929
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 12930
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/af;->K()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 12931
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bR()Z

    move-result v3

    if-nez v3, :cond_12

    .line 12932
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aR()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/CameraManager;->b(F)V

    goto :goto_7

    :cond_12
    const-string v3, "professional"

    .line 12934
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 12935
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aR()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/CameraManager;->b(F)V

    .line 12936
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/d;->z(Z)V

    .line 12941
    :cond_13
    :goto_7
    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->canShowTimeLapseProButtons()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 12942
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/d;->o(ZZ)V

    .line 12943
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/d;->q(ZZ)V

    goto :goto_8

    .line 12945
    :cond_14
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/d;->p(ZZ)V

    .line 12946
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/d;->r(ZZ)V

    .line 12949
    :goto_8
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "key_support_time_lapse_pro"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12950
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->N(Z)V

    goto :goto_9

    .line 12952
    :cond_15
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->O(Z)V

    .line 12955
    :goto_9
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->eA()V

    .line 12956
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->g()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    .line 12957
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bS(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    .line 12956
    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;Lcom/oplus/camera/ui/control/b;Z)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 12962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch camera mode, onAnimationMiddle, mbCancle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$j;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 12963
    invoke-virtual {p1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 12964
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 12962
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12966
    iput-boolean v0, p0, Lcom/oplus/camera/CameraManager$j;->c:Z

    .line 12967
    iput-object p2, p0, Lcom/oplus/camera/CameraManager$j;->e:Landroid/util/Size;

    if-eqz p2, :cond_2

    .line 12970
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {v0, p2}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/CameraManager$j;->g:I

    :cond_2
    if-eqz p1, :cond_3

    .line 12974
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/CameraManager$j;->f:I

    :cond_3
    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "switch camera mode, cancleAnimation"

    .line 13036
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13038
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 13039
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 13040
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$j;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->t()V

    const/4 v0, 0x1

    .line 13041
    iput-boolean v0, p0, Lcom/oplus/camera/CameraManager$j;->d:Z

    .line 13042
    iput-boolean v1, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    .line 13043
    iput-boolean v1, p0, Lcom/oplus/camera/CameraManager$j;->c:Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 13047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch camera mode, isAnimationRunning, mbRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13049
    iget-boolean p0, p0, Lcom/oplus/camera/CameraManager$j;->b:Z

    return p0
.end method

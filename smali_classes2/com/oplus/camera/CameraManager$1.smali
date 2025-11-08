.class Lcom/oplus/camera/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Z

.field private c:Landroid/renderscript/RenderScript;

.field private d:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private e:Landroid/renderscript/Type$Builder;

.field private f:Landroid/renderscript/Type$Builder;

.field private g:Landroid/renderscript/Allocation;

.field private h:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 745
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$1;->b:Z

    const/4 p1, 0x0

    .line 746
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->c:Landroid/renderscript/RenderScript;

    .line 747
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->d:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 748
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->e:Landroid/renderscript/Type$Builder;

    .line 749
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->f:Landroid/renderscript/Type$Builder;

    .line 750
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->g:Landroid/renderscript/Allocation;

    .line 751
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1;->h:Landroid/renderscript/Allocation;

    return-void
.end method

.method private b(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 4

    .line 891
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, "CameraManager"

    if-lez v0, :cond_1

    .line 896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processInThirdApp, mThirdPartyPauseTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mThirdPartyCaptureTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    .line 897
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 896
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    iget-object v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;[B)[B

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processInThirdApp, size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;)[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "KB, width x height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->o(Lcom/oplus/camera/CameraManager;)V

    goto :goto_0

    :cond_2
    const-string v0, "processInThirdApp, mWriteThirdImageLock blocked, can\'t save new Image"

    .line 910
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$1;->b:Z

    if-eqz v0, :cond_4

    .line 914
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 915
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 917
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->p(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 918
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/e/d;->g()V

    .line 921
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/CameraManager$1$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/CameraManager$1$3;-><init>(Lcom/oplus/camera/CameraManager$1;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/w/b;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->q(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    neg-int v0, v0

    .line 933
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oplus/camera/CameraManager$1$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/oplus/camera/CameraManager$1$4;-><init>(Lcom/oplus/camera/CameraManager$1;Lcom/oplus/camera/Storage$CameraPicture;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 967
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 755
    iput-boolean v0, p0, Lcom/oplus/camera/CameraManager$1;->b:Z

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;[B)[B

    .line 757
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;J)J

    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$1$1;-><init>(Lcom/oplus/camera/CameraManager$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraPictureBuilt, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->s()V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cG()Lcom/oplus/camera/ui/control/e$c;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->U:Lcom/oplus/camera/ui/control/e$c;

    .line 870
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onCameraPictureBuilt, needUpdateGalleryPreview"

    .line 871
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    new-instance v0, Lcom/oplus/camera/CameraManager$1$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/CameraManager$1$2;-><init>(Lcom/oplus/camera/CameraManager$1;)V

    iput-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->O:Lcom/oplus/camera/screen/a;

    .line 883
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/f;

    move-result-object p0

    iput-object p0, p1, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    .line 884
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/m/b;->c(Lcom/oplus/camera/Storage$CameraPicture;)V

    goto :goto_0

    .line 886
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$1;->b(Lcom/oplus/camera/Storage$CameraPicture;)V

    :goto_0
    return-void
.end method

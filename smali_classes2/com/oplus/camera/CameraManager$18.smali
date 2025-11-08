.class Lcom/oplus/camera/CameraManager$18;
.super Landroid/os/AsyncTask;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->bG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 3533
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "checkStorage, doInBackground"

    .line 3562
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3565
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ao(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/Storage;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .line 3573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkStorage, onPostExecute, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3575
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 3576
    sget p1, Lcom/oplus/camera/Storage;->v:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3593
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3594
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3595
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/f;->m()V

    goto :goto_0

    .line 3581
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3582
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->m(Z)V

    .line 3584
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string v1, "key_quick_video"

    invoke-virtual {p1, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3585
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->w()V

    .line 3586
    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    .line 3605
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    .line 3606
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f100411

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_storage_key"

    .line 3605
    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3607
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->t()V

    .line 3610
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3533
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager$18;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3533
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager$18;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "onPreExecute"

    .line 3536
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const-string v1, "pref_camera_storage_key"

    if-nez v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3542
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ao(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ap(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3547
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aq(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3548
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ao(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3549
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "off"

    .line 3550
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3551
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3553
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3556
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$18;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_2
    return-void
.end method

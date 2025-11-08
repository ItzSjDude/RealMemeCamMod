.class Lcom/oplus/camera/h$3;
.super Ljava/lang/Object;
.source "CameraPermission.java"

# interfaces
.implements Lcom/oplus/camera/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/h;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/h;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {p0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/h$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object p0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {p0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/h$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatementAlertClick, isAgree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPermission"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->d(Lcom/oplus/camera/h;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->d(Lcom/oplus/camera/h;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_allow_network_access"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 438
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->d(Lcom/oplus/camera/h;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "show_arrow_animation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->d(Lcom/oplus/camera/h;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_statement_agree"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->d(Lcom/oplus/camera/h;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_statement_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-nez p1, :cond_1

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->b(Lcom/oplus/camera/h;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->e(Lcom/oplus/camera/h;)V

    .line 449
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->f(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->f(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/h$b;->a()V

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/h$a;->a(Z)V

    if-nez p1, :cond_3

    .line 457
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/h$a;->a()V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {v0}, Lcom/oplus/camera/h;->c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/h$a;->b()V

    .line 463
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/h$3;->a:Lcom/oplus/camera/h;

    invoke-static {p0}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p1, :cond_5

    const-string p1, "agree"

    goto :goto_1

    :cond_5
    const-string p1, "cancel"

    :goto_1
    const-string v0, "privacy"

    invoke-static {p0, v0, p1}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/oplus/camera/ui/d$b;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/widget/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 12010
    iput-object p1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/d$1;)V
    .locals 0

    .line 12010
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/d$b;-><init>(Lcom/oplus/camera/ui/d;)V

    return-void
.end method

.method private a(I)Z
    .locals 0

    const/16 p0, 0x1e0

    if-eq p0, p1, :cond_1

    const/16 p0, 0x3c0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onSlowVideoFrameChange(I)V
    .locals 5

    .line 12013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrameChange, frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12015
    iget-object v0, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12016
    iget-object v0, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->p(I)V

    .line 12019
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->j(I)V

    .line 12021
    iget-object v0, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    .line 12022
    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100208

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_intelligent_high_frame_selected_key"

    .line 12021
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12023
    iget-object v1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    const-string v3, "pref_temp_intelligent_high_frame_selected_key"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12025
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/d$b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12026
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12027
    iget-object p1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12029
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v2, v0}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12030
    iget-object p1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 12033
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "off"

    if-nez p1, :cond_3

    .line 12034
    iget-object p1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12037
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v2, v0}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12040
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$b;->a:Lcom/oplus/camera/ui/d;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->a(Z)V

    return-void
.end method

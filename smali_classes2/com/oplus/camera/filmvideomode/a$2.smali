.class Lcom/oplus/camera/filmvideomode/a$2;
.super Ljava/lang/Object;
.source "BaseFilmUIControl.java"

# interfaces
.implements Lcom/oplus/camera/ui/SwitchCameraBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/a;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/filmvideomode/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/a;->b(Z)V

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_switch_camera_bar_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    const-string v1, "39"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-static {v0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/filmvideomode/a;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-static {p1}, Lcom/oplus/camera/filmvideomode/a;->b(Lcom/oplus/camera/filmvideomode/a;)V

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->v()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    .line 320
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    .line 321
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    .line 322
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    .line 323
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-boolean v0, v0, Lcom/oplus/camera/filmvideomode/a;->o:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$2;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 326
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->a()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

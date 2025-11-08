.class Lcom/oplus/camera/capmode/m$5;
.super Ljava/lang/Object;
.source "LongExposureMode.java"

# interfaces
.implements Lcom/oplus/camera/longexposure/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1151
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->f(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result v0

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneMenuStateClick, type\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LongExposureMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;ZZ)V

    .line 1156
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->g(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/k;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/longexposure/k;->a(Z)V

    .line 1157
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->g(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/k;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/oplus/camera/longexposure/k;->a(IZ)V

    .line 1158
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0, v2}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;Z)V

    .line 1159
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 1160
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_scene_menu_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1161
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 1162
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p0}, Lcom/oplus/camera/capmode/m;->d(Lcom/oplus/camera/capmode/m;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/longexposure/j;)V
    .locals 3

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSceneMenuItemClick, type\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/j;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->g(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/j;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/k;->b(I)V

    .line 1136
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->g(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/j;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/longexposure/k;->a(IZ)V

    .line 1138
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1139
    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/j;->a()I

    move-result v1

    const-string v2, "pref_long_exposure_effect_type"

    .line 1138
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1141
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/j;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->m(I)V

    .line 1143
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 1146
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$5;->a:Lcom/oplus/camera/capmode/m;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/j;->a()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/m;->c(Lcom/oplus/camera/capmode/m;I)V

    return-void
.end method

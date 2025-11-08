.class Lcom/oplus/camera/capmode/y$1;
.super Ljava/lang/Object;
.source "XPanMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/SwitchCameraBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/y;->a(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/y;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/y;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oplus/camera/capmode/y$1;->a:Lcom/oplus/camera/capmode/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/capmode/y$1;->a:Lcom/oplus/camera/capmode/y;

    invoke-static {v0}, Lcom/oplus/camera/capmode/y;->a(Lcom/oplus/camera/capmode/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/capmode/y$1;->a:Lcom/oplus/camera/capmode/y;

    invoke-static {v0}, Lcom/oplus/camera/capmode/y;->b(Lcom/oplus/camera/capmode/y;)V

    .line 179
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$1;->a:Lcom/oplus/camera/capmode/y;

    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_hasselblad_xpan_switch_camera_bar_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$1;->a:Lcom/oplus/camera/capmode/y;

    invoke-static {p0}, Lcom/oplus/camera/capmode/y;->c(Lcom/oplus/camera/capmode/y;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

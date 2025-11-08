.class Lcom/oplus/camera/ui/preview/g$29;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Lcom/oplus/camera/doubleexposure/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->an()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 3829
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$29;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/doubleexposure/f;)V
    .locals 1

    .line 3832
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$29;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3833
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$29;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/g$b;->a(Lcom/oplus/camera/doubleexposure/f;)V

    if-eqz p1, :cond_0

    .line 3836
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$29;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3837
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/f;->a()I

    move-result p1

    const-string v0, "pref_double_exposure_effect_type"

    .line 3836
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3837
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

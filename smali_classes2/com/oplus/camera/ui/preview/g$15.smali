.class Lcom/oplus/camera/ui/preview/g$15;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->S()V
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

    .line 2640
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$15;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2644
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$15;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g$15;->a:Lcom/oplus/camera/ui/preview/g;

    .line 2645
    invoke-static {p2}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f100411

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_storage_key"

    .line 2644
    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    .line 2647
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2648
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$15;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "off"

    .line 2649
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2650
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2651
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$15;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->cq()V

    :cond_0
    return-void
.end method

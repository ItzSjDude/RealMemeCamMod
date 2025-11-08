.class Lcom/oplus/camera/ui/d$29;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/coui/appcompat/widget/popupwindow/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->eZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 6907
    iput-object p1, p0, Lcom/oplus/camera/ui/d$29;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6910
    iget-object v0, p0, Lcom/oplus/camera/ui/d$29;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$29;->a:Lcom/oplus/camera/ui/d;

    .line 6911
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_video_hyper_lapse_focus_first_hints"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$29;->a:Lcom/oplus/camera/ui/d;

    .line 6912
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->cg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6913
    iget-object p0, p0, Lcom/oplus/camera/ui/d$29;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/preview/g;->b(ZZ)V

    :cond_0
    return-void
.end method

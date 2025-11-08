.class Lcom/oplus/camera/capmode/t$19;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 736
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    const-string v2, "pref_camera_assistant_line_key"

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->i(Z)V

    .line 741
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    .line 742
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_filter_menu"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object v1, v1, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/SharedPreferences;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    .line 745
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$19;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->m(ZZ)V

    :cond_1
    return-void
.end method

.class Lcom/oplus/camera/capmode/p$3;
.super Ljava/lang/Object;
.source "MicroscopeVideoMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/p;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/p;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v0}, Lcom/oplus/camera/capmode/p;->e(Lcom/oplus/camera/capmode/p;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/p;->a(Lcom/oplus/camera/capmode/p;I)I

    .line 446
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/p;->a(Lcom/oplus/camera/capmode/p;Z)Z

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "key_microscope_guide_show_need"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v2}, Lcom/oplus/camera/capmode/p;->b(Lcom/oplus/camera/capmode/p;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v3}, Lcom/oplus/camera/capmode/p;->c(Lcom/oplus/camera/capmode/p;)I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v2}, Lcom/oplus/camera/capmode/p;->d(Lcom/oplus/camera/capmode/p;)Landroid/view/View$OnClickListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$3;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v0}, Lcom/oplus/camera/capmode/p;->e(Lcom/oplus/camera/capmode/p;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

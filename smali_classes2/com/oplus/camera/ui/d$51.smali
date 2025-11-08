.class Lcom/oplus/camera/ui/d$51;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->fw()V
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

    .line 9930
    iput-object p1, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9933
    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9934
    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 9937
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->Q(Lcom/oplus/camera/ui/d;)V

    .line 9939
    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9940
    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->onFaceBeautyItemChange(I)V

    .line 9943
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ag(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9944
    iget-object p0, p0, Lcom/oplus/camera/ui/d$51;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

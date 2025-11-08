.class Lcom/oplus/camera/ui/menu/shareedit/a$5;
.super Ljava/lang/Object;
.source "ShareEditThumbMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 1422
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1425
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->l(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/Camera;

    move-result-object v0

    const-string v1, "com.oplus.videoeditor"

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    .line 1426
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->l(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    .line 1427
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->O(Lcom/oplus/camera/ui/menu/shareedit/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->l(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/menu/shareedit/a$5$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$5$1;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a$5;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->P(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    .line 1440
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/a;->q(I)V

    .line 1441
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->f(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z

    :goto_0
    return-void
.end method

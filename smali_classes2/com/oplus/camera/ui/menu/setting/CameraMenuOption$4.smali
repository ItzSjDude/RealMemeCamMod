.class Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;
.super Lcom/a/a/e;
.source "CameraMenuOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 8

    .line 1492
    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v6

    .line 1493
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->a:Landroid/view/View;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;FFFFD)V

    goto :goto_0

    .line 1497
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;->a:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;)V

    :goto_0
    return-void
.end method

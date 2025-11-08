.class Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;
.super Lcom/a/a/e;
.source "CameraMenuOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Landroid/view/View;)V
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

    .line 1470
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 8

    .line 1473
    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v6

    .line 1474
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;->b:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;->a:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;FFFFD)V

    return-void
.end method

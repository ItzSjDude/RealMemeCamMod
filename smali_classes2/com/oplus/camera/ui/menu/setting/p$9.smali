.class Lcom/oplus/camera/ui/menu/setting/p$9;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUIEditText;

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0

    .line 1609
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$9;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p$9;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x4

    if-ne p1, p2, :cond_1

    .line 1612
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    const-string p1, "CameraSubSettingFragment"

    const-string p3, "onKey, back key action up"

    .line 1613
    invoke-static {p1, p3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$9;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/p$9;->a:Lcom/coui/appcompat/widget/COUIEditText;

    const v0, 0x7f1003e1

    const-string v1, "4"

    invoke-static {p1, p3, v0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$9;->b:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/p;->e(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->b()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

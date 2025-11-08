.class Lcom/oplus/camera/ui/menu/setting/p$10;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 1627
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$10;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p$10;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1630
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    const-string p1, "CameraSubSettingFragment"

    const-string v0, "onTouch, outside touch"

    .line 1631
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$10;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$10;->a:Lcom/coui/appcompat/widget/COUIEditText;

    const v1, 0x7f1003e2

    const-string v2, "2"

    invoke-static {p1, v0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1635
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$10;->b:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/p;->e(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->b()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

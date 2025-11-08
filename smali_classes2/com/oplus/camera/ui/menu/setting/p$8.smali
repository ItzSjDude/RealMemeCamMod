.class Lcom/oplus/camera/ui/menu/setting/p$8;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/e;


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

    .line 1598
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$8;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p$8;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    const-string v0, "CameraSubSettingFragment"

    const-string v1, "onDragWhileEditing"

    .line 1601
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$8;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$8;->a:Lcom/coui/appcompat/widget/COUIEditText;

    const v1, 0x7f1003e3

    const-string v2, "3"

    invoke-static {v0, p0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

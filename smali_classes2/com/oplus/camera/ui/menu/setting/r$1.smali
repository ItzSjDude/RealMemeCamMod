.class Lcom/oplus/camera/ui/menu/setting/r$1;
.super Ljava/lang/Object;
.source "VideoSoundSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/r;->a(Landroidx/appcompat/app/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/s;

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/r;Lcom/oplus/camera/ui/menu/levelcontrol/s;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/r$1;->b:Lcom/oplus/camera/ui/menu/setting/r;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/r$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/r$1;->b:Lcom/oplus/camera/ui/menu/setting/r;

    invoke-static {v0, p2}, Lcom/oplus/camera/ui/menu/setting/r;->a(Lcom/oplus/camera/ui/menu/setting/r;I)I

    .line 105
    invoke-static {}, Lcom/oplus/camera/util/Util;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/r$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/s;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/s;->a(I)V

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/r$1;->b:Lcom/oplus/camera/ui/menu/setting/r;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/r;->a(I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/r$1;->b:Lcom/oplus/camera/ui/menu/setting/r;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/r;->onClick(Landroid/content/DialogInterface;I)V

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method

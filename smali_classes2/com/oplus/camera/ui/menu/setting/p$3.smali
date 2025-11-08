.class Lcom/oplus/camera/ui/menu/setting/p$3;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/p;)V
    .locals 0

    .line 1727
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$3;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1730
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p$3;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/setting/p;->g(Lcom/oplus/camera/ui/menu/setting/p;)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/location/Location;Z)Landroid/location/Address;

    move-result-object v0

    const-string v1, "CameraSubSettingFragment"

    if-nez v0, :cond_0

    const-string p0, "getAddressRunnable, address is null, return"

    .line 1733
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "getAddressRunnable"

    .line 1738
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-static {v0}, Lcom/oplus/camera/util/h;->a(Landroid/location/Address;)Lcom/oplus/camera/q$a;

    move-result-object v0

    .line 1741
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p$3;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oplus/camera/util/h;->a(Landroid/content/Context;Lcom/oplus/camera/q$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;)Ljava/lang/String;

    .line 1742
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$3;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Landroid/app/Activity;)V

    return-void
.end method

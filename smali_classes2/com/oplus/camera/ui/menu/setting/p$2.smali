.class Lcom/oplus/camera/ui/menu/setting/p$2;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Lcom/oplus/camera/q$f;


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

    .line 1686
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1689
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CameraSubSettingFragment"

    const-string v1, "onLocationUpdated"

    .line 1693
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/setting/p;->b(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "onLocationUpdated watermark of location is closed"

    .line 1696
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Landroid/location/Location;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1703
    invoke-static {}, Lcom/oplus/camera/util/Util;->ax()Ljava/lang/String;

    move-result-object p2

    const-string v1, "zh-CN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1704
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/oplus/camera/util/h;->a(Landroid/content/Context;Landroid/location/Location;)Lcom/oplus/camera/q$a;

    move-result-object p2

    const-string v1, "onLocationUpdated, isLastKnownLocation"

    .line 1707
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1710
    iput-object p1, p2, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    .line 1711
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/oplus/camera/util/h;->a(Landroid/content/Context;Lcom/oplus/camera/q$a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;)Ljava/lang/String;

    .line 1712
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Landroid/app/Activity;)V

    return-void

    .line 1717
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$2;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Landroid/location/Location;)V

    :cond_3
    :goto_0
    return-void
.end method

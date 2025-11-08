.class Lcom/oplus/camera/ui/menu/setting/b$9;
.super Ljava/lang/Object;
.source "BaseLocationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/b;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v0, -0x2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    .line 531
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    const/4 v3, 0x2

    invoke-virtual {v0, p2, v3}, Lcom/oplus/camera/ui/menu/setting/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 534
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->l()I

    move-result p0

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 535
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "setting"

    .line 534
    invoke-static {p1, p0, p2, v0}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;ILjava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$9;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->l()I

    move-result p0

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 541
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "cancel"

    .line 540
    invoke-static {p1, p0, p2, v0}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;ILjava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class Lcom/oplus/camera/ui/menu/setting/p$4;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Lcom/android/ui/menu/a$a;


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

    .line 1486
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1510
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/p;->c(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v0

    .line 1511
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "["

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    .line 1512
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "|"

    .line 1513
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    const-string v1, "pref_watermark_display_info_key"

    invoke-static {p0, v1, v0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)Z
    .locals 1

    if-nez p2, :cond_0

    .line 1500
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    const v0, 0x7f1003a9

    .line 1501
    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1502
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->h()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    const v1, 0x7f1003a9

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Location"

    .line 1491
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/p;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$4;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/p;->b(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1495
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

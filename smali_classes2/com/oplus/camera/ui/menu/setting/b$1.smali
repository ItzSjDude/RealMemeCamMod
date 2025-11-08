.class Lcom/oplus/camera/ui/menu/setting/b$1;
.super Ljava/lang/Object;
.source "BaseLocationPreferenceFragment.java"

# interfaces
.implements Lcom/oplus/camera/util/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Z
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

    .line 232
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$1;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$1;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->a(Lcom/oplus/camera/ui/menu/setting/b;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/f;

    return-void
.end method

.method public a(Landroidx/appcompat/app/f;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroidx/appcompat/app/f;->dismiss()V

    :cond_0
    if-eqz p2, :cond_1

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$1;->a:Lcom/oplus/camera/ui/menu/setting/b;

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/b;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

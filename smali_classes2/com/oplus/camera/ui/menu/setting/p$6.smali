.class Lcom/oplus/camera/ui/menu/setting/p$6;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/os/Parcelable;)V
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

    .line 1568
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$6;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "CameraSubSettingFragment"

    const-string v0, "onClick, mWatermarkAuthorEditDialog cancel"

    .line 1571
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$6;->a:Lcom/oplus/camera/ui/menu/setting/p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Z)V

    .line 1574
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$6;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/p;->b(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    const-string v1, "pref_watermark_author_key"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1576
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$6;->a:Lcom/oplus/camera/ui/menu/setting/p;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1577
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "1"

    .line 1576
    invoke-static {p0, v1, p1, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

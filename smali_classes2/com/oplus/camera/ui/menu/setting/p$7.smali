.class Lcom/oplus/camera/ui/menu/setting/p$7;
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
.field final synthetic a:Lcom/coui/appcompat/widget/COUIEditText;

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0

    .line 1581
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$7;->b:Lcom/oplus/camera/ui/menu/setting/p;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p$7;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "CameraSubSettingFragment"

    const-string v0, "onClick, mWatermarkAuthorEditDialog save"

    .line 1584
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$7;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1587
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1588
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$7;->b:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/p;->d(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/preference/COUIPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->b(Ljava/lang/Object;)Z

    .line 1589
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p$7;->b:Lcom/oplus/camera/ui/menu/setting/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Z)V

    .line 1590
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p$7;->b:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pref_watermark_author_key"

    const-string v1, "0"

    invoke-static {p0, v0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

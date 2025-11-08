.class Lcom/oplus/camera/ui/menu/setting/k$6;
.super Ljava/lang/Object;
.source "CameraSettingActivityFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/k;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/k;)V
    .locals 0

    .line 1594
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$6;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1597
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/k$6;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/setting/k;->g(Lcom/oplus/camera/ui/menu/setting/k;)V

    .line 1598
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$6;->a:Lcom/oplus/camera/ui/menu/setting/k;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "pref_restore_key"

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1599
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

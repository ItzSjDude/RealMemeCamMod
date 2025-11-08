.class Lcom/oplus/camera/ui/menu/setting/k$5;
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

    .line 1602
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$5;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1605
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$5;->a:Lcom/oplus/camera/ui/menu/setting/k;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "pref_restore_key"

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1606
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity$1;
.super Ljava/lang/Object;
.source "CameraOpenSourceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity$1;->a:Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity$1;->a:Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->onBackPressed()V

    return-void
.end method

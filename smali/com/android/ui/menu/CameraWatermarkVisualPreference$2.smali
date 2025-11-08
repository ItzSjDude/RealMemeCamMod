.class Lcom/android/ui/menu/CameraWatermarkVisualPreference$2;
.super Ljava/lang/Object;
.source "CameraWatermarkVisualPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(ZLcom/oplus/camera/ComboPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ui/menu/CameraWatermarkVisualPreference;


# direct methods
.method constructor <init>(Lcom/android/ui/menu/CameraWatermarkVisualPreference;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference$2;->a:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference$2;->a:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-static {v0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(Lcom/android/ui/menu/CameraWatermarkVisualPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference$2;->a:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-static {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b(Lcom/android/ui/menu/CameraWatermarkVisualPreference;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

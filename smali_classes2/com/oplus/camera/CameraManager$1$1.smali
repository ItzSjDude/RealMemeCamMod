.class Lcom/oplus/camera/CameraManager$1$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$1;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/oplus/camera/CameraManager$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v2, v2, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto/16 :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 839
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->b(Landroid/graphics/Bitmap;)V

    .line 841
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->O()V

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "pref_camera_gradienter_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    .line 844
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bp()V

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 850
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;I)I

    .line 851
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 852
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1$1;->b:Lcom/oplus/camera/CameraManager$1;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

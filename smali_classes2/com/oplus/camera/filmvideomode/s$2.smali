.class Lcom/oplus/camera/filmvideomode/s$2;
.super Ljava/lang/Object;
.source "MovieMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/s;->onAfterStartPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/s;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/s$2;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s$2;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/s;->b(Lcom/oplus/camera/filmvideomode/s;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s$2;->a:Lcom/oplus/camera/filmvideomode/s;

    .line 436
    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/s;->c(Lcom/oplus/camera/filmvideomode/s;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_film_video_guide_line"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 438
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s$2;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/s;->d(Lcom/oplus/camera/filmvideomode/s;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k(Z)V

    return-void
.end method

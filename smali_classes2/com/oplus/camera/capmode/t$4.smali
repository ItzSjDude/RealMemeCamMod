.class Lcom/oplus/camera/capmode/t$4;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$4;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$4;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/capmode/t$4;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_photo_ratio_key"

    const-string v2, "standard"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/sticker/ui/h;->c(Ljava/lang/String;)V

    return-void
.end method

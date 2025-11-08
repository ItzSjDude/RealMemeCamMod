.class Lcom/oplus/camera/panorama/f$16;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->onStopTakePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/b;

.field final synthetic b:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;Lcom/oplus/camera/ui/control/b;)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$16;->b:Lcom/oplus/camera/panorama/f;

    iput-object p2, p0, Lcom/oplus/camera/panorama/f$16;->a:Lcom/oplus/camera/ui/control/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$16;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->az(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/panorama/f$16;->a:Lcom/oplus/camera/ui/control/b;

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

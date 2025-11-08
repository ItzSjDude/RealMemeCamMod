.class Lcom/oplus/camera/panorama/f$3;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$3;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1501
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$3;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->aC(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return-void
.end method

.class Lcom/oplus/camera/panorama/f$2;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->cameraIdChanged(I)V
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

    .line 1460
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$2;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$2;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->aA(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$2;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->aB(Lcom/oplus/camera/panorama/f;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/panorama/f;->h(Lcom/oplus/camera/panorama/f;I)V

    :cond_0
    return-void
.end method

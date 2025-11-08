.class Lcom/oplus/camera/panorama/f$5;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->showLowMemory()V
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

    .line 1652
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$5;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1655
    new-instance v0, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/panorama/f$5;->a:Lcom/oplus/camera/panorama/f;

    .line 1656
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->aD(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100474

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1657
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 1658
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1659
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object v0

    .line 1660
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$5;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    return-void
.end method

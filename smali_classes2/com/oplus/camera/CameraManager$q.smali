.class Lcom/oplus/camera/CameraManager$q;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12694
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 12694
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$q;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 12713
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12714
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/z;->b(Z)V

    .line 12716
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12717
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12718
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 1

    .line 12697
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ar()V

    .line 12699
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->M()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 12700
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->n(I)V

    goto :goto_0

    .line 12702
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$q;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->l(I)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

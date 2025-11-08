.class Lcom/oplus/camera/CameraManager$54;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 19066
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 19069
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19070
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 p1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 19083
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19084
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 19076
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19077
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 p1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 19090
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19091
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$54;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 p1, 0x9

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    :cond_0
    return-void
.end method

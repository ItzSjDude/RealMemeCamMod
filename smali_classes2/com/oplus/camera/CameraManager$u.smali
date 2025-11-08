.class Lcom/oplus/camera/CameraManager$u;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "u"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 14062
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$u;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 14062
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$u;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onTimeOut, stop video recording because of the high temperature"

    .line 14065
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14067
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$u;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14068
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$u;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->m(Z)V

    .line 14070
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$u;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14071
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$u;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/d;->c()V

    :cond_0
    return-void
.end method

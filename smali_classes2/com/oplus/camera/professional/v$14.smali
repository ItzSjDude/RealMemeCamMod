.class Lcom/oplus/camera/professional/v$14;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 3845
    iput-object p1, p0, Lcom/oplus/camera/professional/v$14;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3848
    iget-object v0, p0, Lcom/oplus/camera/professional/v$14;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aI(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3852
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v$14;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->aJ(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const-string v0, "pref_camera_flashmode_key"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/oplus/camera/professional/h$13;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 3640
    iput-object p1, p0, Lcom/oplus/camera/professional/h$13;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3643
    iget-object v0, p0, Lcom/oplus/camera/professional/h$13;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aA(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3647
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h$13;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->aB(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const-string v0, "pref_camera_flashmode_key"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

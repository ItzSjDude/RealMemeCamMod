.class Lcom/oplus/camera/professional/v$17;
.super Landroid/os/Handler;
.source "ProfessionalCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onInitCameraMode()V
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

    .line 513
    iput-object p1, p0, Lcom/oplus/camera/professional/v$17;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 516
    iget-object p0, p0, Lcom/oplus/camera/professional/v$17;->a:Lcom/oplus/camera/professional/v;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/professional/v;->a(ILandroid/os/Message;)V

    return-void
.end method

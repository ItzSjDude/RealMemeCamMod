.class Lcom/oplus/camera/professional/h$16;
.super Landroid/os/Handler;
.source "HSProfessionalCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onInitCameraMode()V
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

    .line 501
    iput-object p1, p0, Lcom/oplus/camera/professional/h$16;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 504
    iget-object p0, p0, Lcom/oplus/camera/professional/h$16;->a:Lcom/oplus/camera/professional/h;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/professional/h;->a(ILandroid/os/Message;)V

    return-void
.end method

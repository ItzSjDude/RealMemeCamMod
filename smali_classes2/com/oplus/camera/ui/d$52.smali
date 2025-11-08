.class Lcom/oplus/camera/ui/d$52;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->fx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;I)V
    .locals 0

    .line 9965
    iput-object p1, p0, Lcom/oplus/camera/ui/d$52;->b:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$52;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 9968
    iget-object v0, p0, Lcom/oplus/camera/ui/d$52;->b:Lcom/oplus/camera/ui/d;

    iget v1, p0, Lcom/oplus/camera/ui/d$52;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->i(IZ)V

    .line 9970
    iget-object v0, p0, Lcom/oplus/camera/ui/d$52;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9971
    iget-object v0, p0, Lcom/oplus/camera/ui/d$52;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/d$52;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/oplus/camera/ui/CameraUIListener;->onFaceBeautyItemValueChange(IIZ)V

    .line 9973
    iget v0, p0, Lcom/oplus/camera/ui/d$52;->a:I

    if-eqz v0, :cond_0

    .line 9974
    iget-object p0, p0, Lcom/oplus/camera/ui/d$52;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/16 v0, 0x66

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->onFaceBeautyItemChange(I)V

    :cond_0
    return-void
.end method

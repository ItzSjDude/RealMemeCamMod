.class Lcom/oplus/camera/ui/d$48;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->fs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 9820
    iput-object p1, p0, Lcom/oplus/camera/ui/d$48;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9823
    iget-object v0, p0, Lcom/oplus/camera/ui/d$48;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9824
    iget-object v0, p0, Lcom/oplus/camera/ui/d$48;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->i(IZ)V

    .line 9825
    iget-object p0, p0, Lcom/oplus/camera/ui/d$48;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->onFaceBeautyItemChange(I)V

    :cond_0
    return-void
.end method

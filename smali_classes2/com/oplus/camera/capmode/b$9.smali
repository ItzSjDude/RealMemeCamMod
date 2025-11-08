.class Lcom/oplus/camera/capmode/b$9;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/b;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 1465
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$9;->a:Lcom/oplus/camera/capmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$9;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->e(Lcom/oplus/camera/capmode/b;)V

    .line 1469
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$9;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->f(Lcom/oplus/camera/capmode/b;)V

    .line 1471
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$9;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->g(Lcom/oplus/camera/capmode/b;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$9;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->g(Lcom/oplus/camera/capmode/b;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

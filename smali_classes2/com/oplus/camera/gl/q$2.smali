.class Lcom/oplus/camera/gl/q$2;
.super Ljava/lang/Object;
.source "OplusGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/gl/q;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/gl/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/gl/q;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "GLSurfaceView"

    const-string v1, "destroyWatchOutputSurface"

    .line 1960
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->l(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$i;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-static {v1}, Lcom/oplus/camera/gl/q;->l(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$i;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/gl/q$h;->e(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/gl/q$h;->b(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1963
    iget-object v0, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->l(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$i;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/gl/q$h;->c(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1965
    iget-object v0, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->j(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->j(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1967
    iget-object p0, p0, Lcom/oplus/camera/gl/q$2;->a:Lcom/oplus/camera/gl/q;

    invoke-static {p0, v1}, Lcom/oplus/camera/gl/q;->b(Lcom/oplus/camera/gl/q;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_0
    return-void
.end method

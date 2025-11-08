.class Lcom/oplus/camera/gl/m$c;
.super Ljava/lang/Object;
.source "GLProducer.java"

# interfaces
.implements Lcom/oplus/camera/gl/m$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/gl/m;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/oplus/camera/gl/m;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/oplus/camera/gl/m$c;->a:Lcom/oplus/camera/gl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 636
    iput p1, p0, Lcom/oplus/camera/gl/m$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/gl/m;Lcom/oplus/camera/gl/m$1;)V
    .locals 0

    .line 635
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/m$c;-><init>(Lcom/oplus/camera/gl/m;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    .line 640
    new-array v0, v0, [I

    iget v1, p0, Lcom/oplus/camera/gl/m$c;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/oplus/camera/gl/m$c;->a:Lcom/oplus/camera/gl/m;

    invoke-static {v1}, Lcom/oplus/camera/gl/m;->a(Lcom/oplus/camera/gl/m;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 643
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 644
    iget-object p0, p0, Lcom/oplus/camera/gl/m$c;->a:Lcom/oplus/camera/gl/m;

    invoke-static {p0}, Lcom/oplus/camera/gl/m;->a(Lcom/oplus/camera/gl/m;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 643
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 650
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 651
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DefaultContextFactory"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string p1, "eglDestroyContex"

    invoke-static {p1, p0}, Lcom/oplus/camera/gl/m$h;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

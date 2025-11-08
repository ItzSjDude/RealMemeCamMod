.class Lcom/oplus/camera/gl/q$c;
.super Ljava/lang/Object;
.source "OplusGLSurfaceView.java"

# interfaces
.implements Lcom/oplus/camera/gl/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/gl/q;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/gl/q;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/oplus/camera/gl/q$c;->a:Lcom/oplus/camera/gl/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/gl/q;Lcom/oplus/camera/gl/q$1;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/q$c;-><init>(Lcom/oplus/camera/gl/q;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    .line 587
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3098

    aput v2, v0, v1

    iget-object v1, p0, Lcom/oplus/camera/gl/q$c;->a:Lcom/oplus/camera/gl/q;

    invoke-static {v1}, Lcom/oplus/camera/gl/q;->a(Lcom/oplus/camera/gl/q;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 589
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 590
    iget-object p0, p0, Lcom/oplus/camera/gl/q$c;->a:Lcom/oplus/camera/gl/q;

    invoke-static {p0}, Lcom/oplus/camera/gl/q;->a(Lcom/oplus/camera/gl/q;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 589
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 595
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroyContext, display: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "GLSurfaceView"

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string p1, "eglDestroyContex"

    invoke-static {p1, p0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

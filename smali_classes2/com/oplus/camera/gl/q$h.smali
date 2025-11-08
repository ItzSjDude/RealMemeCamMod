.class Lcom/oplus/camera/gl/q$h;
.super Ljava/lang/Object;
.source "OplusGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/microedition/khronos/egl/EGL10;

.field private d:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;

.field private f:Ljavax/microedition/khronos/egl/EGLSurface;

.field private g:Ljavax/microedition/khronos/egl/EGLConfig;

.field private h:Ljavax/microedition/khronos/egl/EGLContext;

.field private i:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    .line 809
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/gl/q$h;->a:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/gl/q;",
            ">;)V"
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    .line 813
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 814
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 815
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 818
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 819
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 820
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 823
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 826
    iput-object p1, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/oplus/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p1, p0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 1169
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logEglErrorAsWarning, function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/opengles/GL;
    .locals 0

    .line 803
    invoke-direct {p0}, Lcom/oplus/camera/gl/q$h;->f()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/q$h;->c(Ljavax/microedition/khronos/egl/EGLSurface;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/oplus/camera/gl/q$h;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method private c(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1108
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1110
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1113
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->c(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$g;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2, p1}, Lcom/oplus/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1116
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroyOutputEGLSurfaceImp, error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLSurfaceView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method private f()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .line 1019
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1020
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/q;

    if-eqz p0, :cond_3

    .line 1023
    invoke-static {p0}, Lcom/oplus/camera/gl/q;->d(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1024
    invoke-static {p0}, Lcom/oplus/camera/gl/q;->d(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/gl/q$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1027
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/gl/q;->e(Lcom/oplus/camera/gl/q;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1031
    invoke-static {p0}, Lcom/oplus/camera/gl/q;->e(Lcom/oplus/camera/gl/q;)I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v1, v4

    .line 1035
    :cond_1
    invoke-static {p0}, Lcom/oplus/camera/gl/q;->e(Lcom/oplus/camera/gl/q;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 1036
    new-instance v2, Lcom/oplus/camera/gl/q$l;

    invoke-direct {v2}, Lcom/oplus/camera/gl/q$l;-><init>()V

    .line 1039
    :cond_2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private g()V
    .locals 5

    .line 1095
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1097
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1100
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->c(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$g;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 1072
    invoke-interface {v1, v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1073
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x3000

    return p0
.end method

.method public a(Landroid/view/Surface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 6

    const-string v0, "GLSurfaceView"

    const-string v1, "createOutputEGLSurface"

    .line 960
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_7

    .line 973
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_6

    .line 977
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v1, :cond_5

    .line 984
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 989
    invoke-static {v1}, Lcom/oplus/camera/gl/q;->c(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$g;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/oplus/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 992
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, p1, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1006
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string p1, "eglMakeCurrent"

    invoke-static {v0, p1, p0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    :cond_2
    return-object p1

    .line 993
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 p1, 0x300b

    if-ne p0, p1, :cond_4

    const-string p0, "createOutputEGLSurface, createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 996
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v2

    .line 978
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mEglConfig not initialized"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 974
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglDisplay not initialized"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 970
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "egl not initialized"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 10

    .line 840
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 845
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    .line 854
    new-array v0, v0, [I

    .line 856
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 863
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 864
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 867
    new-array v9, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 868
    new-array v8, v2, [I

    .line 869
    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/oplus/camera/gl/q$h;->a:[I

    array-length v7, v9

    move-object v6, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v2, 0x0

    .line 870
    aget-object v2, v9, v2

    iput-object v2, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 876
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->b(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$f;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lcom/oplus/camera/gl/q$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_2

    .line 880
    :cond_1
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 881
    invoke-direct {p0, v0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;)V

    .line 884
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, createContext: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GLSurfaceView"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 887
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 857
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglInitialize failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 848
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglGetDisplay failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1180
    invoke-interface {v1, v2, p1, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1185
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string p1, "GLSurfaceView"

    const-string v0, "eglMakeCurrent"

    invoke-static {p1, v0, p0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 6

    .line 904
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    .line 908
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 912
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    .line 919
    invoke-direct {p0}, Lcom/oplus/camera/gl/q$h;->g()V

    .line 924
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    if-eqz v0, :cond_0

    .line 927
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->c(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$g;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 928
    invoke-virtual {v0}, Lcom/oplus/camera/gl/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 927
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/oplus/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 930
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 933
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v1, "GLSurfaceView"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string v0, "eglMakeCurrent"

    invoke-static {v1, v0, p0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 934
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 v0, 0x300b

    if-ne p0, v0, :cond_4

    const-string p0, "createSurface, createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 937
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 913
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mEglConfig not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 909
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglDisplay not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 905
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "egl not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .locals 5

    .line 1051
    sget-object v0, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "70pv_eglSwapBuffers"

    const-string v3, "EGL10.eglSwapBuffers"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1053
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    sget-object v0, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "71pv_eglSwapBuffersError"

    const-string v3, "EGL10.eglSwapBuffersError"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1058
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object p0, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    return p0

    .line 1063
    :cond_0
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3000

    return p0
.end method

.method public d()V
    .locals 2

    .line 1084
    invoke-direct {p0}, Lcom/oplus/camera/gl/q$h;->g()V

    .line 1087
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-direct {p0, v0}, Lcom/oplus/camera/gl/q$h;->c(Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v0, 0x0

    .line 1088
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1090
    iget-object v1, p0, Lcom/oplus/camera/gl/q$h;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-direct {p0, v1}, Lcom/oplus/camera/gl/q$h;->c(Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1091
    iput-object v0, p0, Lcom/oplus/camera/gl/q$h;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public e()V
    .locals 5

    .line 1141
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish, destroyContext mEglContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLSurfaceView"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->b(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$f;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/oplus/camera/gl/q$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1150
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1154
    iget-object v2, p0, Lcom/oplus/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1155
    iput-object v1, p0, Lcom/oplus/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

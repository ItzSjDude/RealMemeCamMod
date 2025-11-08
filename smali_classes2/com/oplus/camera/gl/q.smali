.class public Lcom/oplus/camera/gl/q;
.super Landroid/view/SurfaceView;
.source "OplusGLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/gl/q$j;,
        Lcom/oplus/camera/gl/q$l;,
        Lcom/oplus/camera/gl/q$i;,
        Lcom/oplus/camera/gl/q$h;,
        Lcom/oplus/camera/gl/q$n;,
        Lcom/oplus/camera/gl/q$b;,
        Lcom/oplus/camera/gl/q$a;,
        Lcom/oplus/camera/gl/q$e;,
        Lcom/oplus/camera/gl/q$d;,
        Lcom/oplus/camera/gl/q$g;,
        Lcom/oplus/camera/gl/q$c;,
        Lcom/oplus/camera/gl/q$f;,
        Lcom/oplus/camera/gl/q$m;,
        Lcom/oplus/camera/gl/q$k;
    }
.end annotation


# static fields
.field private static a:Lcom/oplus/camera/gl/q$j;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/Surface;

.field private d:Lcom/oplus/camera/gl/r;

.field private e:Z

.field private f:Lcom/oplus/camera/gl/q$i;

.field private g:Lcom/oplus/camera/gl/q$m;

.field private h:Z

.field private i:Lcom/oplus/camera/gl/q$e;

.field private j:Lcom/oplus/camera/gl/q$f;

.field private k:Lcom/oplus/camera/gl/q$g;

.field private l:Lcom/oplus/camera/gl/q$k;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/oplus/camera/gl/q$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/gl/q$j;-><init>(Lcom/oplus/camera/gl/q$1;)V

    sput-object v0, Lcom/oplus/camera/gl/q;->a:Lcom/oplus/camera/gl/q$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->c:Landroid/view/Surface;

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->d:Lcom/oplus/camera/gl/r;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->e:Z

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->g:Lcom/oplus/camera/gl/q$m;

    .line 91
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->h:Z

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->i:Lcom/oplus/camera/gl/q$e;

    .line 93
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->j:Lcom/oplus/camera/gl/q$f;

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->k:Lcom/oplus/camera/gl/q$g;

    .line 95
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->l:Lcom/oplus/camera/gl/q$k;

    .line 96
    iput v0, p0, Lcom/oplus/camera/gl/q;->m:I

    .line 97
    iput v0, p0, Lcom/oplus/camera/gl/q;->n:I

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->o:Z

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->p:Landroid/view/Surface;

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->c:Landroid/view/Surface;

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->d:Lcom/oplus/camera/gl/r;

    const/4 p2, 0x0

    .line 88
    iput-boolean p2, p0, Lcom/oplus/camera/gl/q;->e:Z

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->g:Lcom/oplus/camera/gl/q$m;

    .line 91
    iput-boolean p2, p0, Lcom/oplus/camera/gl/q;->h:Z

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->i:Lcom/oplus/camera/gl/q$e;

    .line 93
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->j:Lcom/oplus/camera/gl/q$f;

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->k:Lcom/oplus/camera/gl/q$g;

    .line 95
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->l:Lcom/oplus/camera/gl/q$k;

    .line 96
    iput p2, p0, Lcom/oplus/camera/gl/q;->m:I

    .line 97
    iput p2, p0, Lcom/oplus/camera/gl/q;->n:I

    const/4 p2, 0x1

    .line 98
    iput-boolean p2, p0, Lcom/oplus/camera/gl/q;->o:Z

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->p:Landroid/view/Surface;

    .line 116
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->b()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/q;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/gl/q;->n:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/gl/q;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->c:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/gl/q;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->p:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$f;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->j:Lcom/oplus/camera/gl/q$f;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/oplus/camera/gl/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 134
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$g;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->k:Lcom/oplus/camera/gl/q$g;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$k;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->l:Lcom/oplus/camera/gl/q$k;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/gl/q;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/gl/q;->m:I

    return p0
.end method

.method private e()V
    .locals 1

    .line 1935
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-nez p0, :cond_0

    return-void

    .line 1936
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic f(Lcom/oplus/camera/gl/q;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oplus/camera/gl/q;->o:Z

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$m;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->g:Lcom/oplus/camera/gl/q$m;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->c:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/gl/q;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oplus/camera/gl/q;->e:Z

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->p:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/r;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->d:Lcom/oplus/camera/gl/r;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$i;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    return-object p0
.end method

.method static synthetic l()Lcom/oplus/camera/gl/q$j;
    .locals 1

    .line 29
    sget-object v0, Lcom/oplus/camera/gl/q;->a:Lcom/oplus/camera/gl/q$j;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->c()V

    return-void
.end method

.method public a(IIIIII)V
    .locals 9

    .line 319
    new-instance v8, Lcom/oplus/camera/gl/q$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/gl/q$b;-><init>(Lcom/oplus/camera/gl/q;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/oplus/camera/gl/q;->setEGLConfigChooser(Lcom/oplus/camera/gl/q$e;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/q$m;Ljava/lang/String;)V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->e()V

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->i:Lcom/oplus/camera/gl/q$e;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/oplus/camera/gl/q$n;

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/gl/q$n;-><init>(Lcom/oplus/camera/gl/q;Z)V

    iput-object v0, p0, Lcom/oplus/camera/gl/q;->i:Lcom/oplus/camera/gl/q$e;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->j:Lcom/oplus/camera/gl/q$f;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/oplus/camera/gl/q$c;

    invoke-direct {v0, p0, v2}, Lcom/oplus/camera/gl/q$c;-><init>(Lcom/oplus/camera/gl/q;Lcom/oplus/camera/gl/q$1;)V

    iput-object v0, p0, Lcom/oplus/camera/gl/q;->j:Lcom/oplus/camera/gl/q$f;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->k:Lcom/oplus/camera/gl/q$g;

    if-nez v0, :cond_2

    .line 239
    new-instance v0, Lcom/oplus/camera/gl/q$d;

    invoke-direct {v0, v2}, Lcom/oplus/camera/gl/q$d;-><init>(Lcom/oplus/camera/gl/q$1;)V

    iput-object v0, p0, Lcom/oplus/camera/gl/q;->k:Lcom/oplus/camera/gl/q$g;

    .line 242
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->g:Lcom/oplus/camera/gl/q$m;

    .line 243
    new-instance p1, Lcom/oplus/camera/gl/q$i;

    iget-object v0, p0, Lcom/oplus/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/oplus/camera/gl/q$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    const-string p1, "PreviewGLThread"

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    iput-boolean v1, p1, Lcom/oplus/camera/gl/q$i;->a:Z

    goto :goto_0

    .line 248
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oplus/camera/gl/q$i;->a:Z

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p2}, Lcom/oplus/camera/gl/q$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/q$i;->setName(Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->start()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 450
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-ne v0, p0, :cond_0

    .line 451
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/q$i;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->g()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->f()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$i;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    throw v0
.end method

.method public g()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/gl/q$h;->a(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-static {p0}, Lcom/oplus/camera/gl/q$i;->a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/gl/q$h;->a(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/gl/q$h;->b(Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    return-void
.end method

.method public getDebugFlags()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/oplus/camera/gl/q;->m:I

    return p0
.end method

.method public getOutputSurface()Landroid/view/Surface;
    .locals 0

    .line 2005
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->c:Landroid/view/Surface;

    return-object p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    .line 199
    iget-boolean p0, p0, Lcom/oplus/camera/gl/q;->o:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->b()I

    move-result p0

    return p0
.end method

.method public h()V
    .locals 1

    .line 1942
    new-instance v0, Lcom/oplus/camera/gl/q$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/gl/q$1;-><init>(Lcom/oplus/camera/gl/q;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1957
    new-instance v0, Lcom/oplus/camera/gl/q$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/gl/q$2;-><init>(Lcom/oplus/camera/gl/q;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1980
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->e:Z

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 1985
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->e:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 468
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 474
    iget-boolean v0, p0, Lcom/oplus/camera/gl/q;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/gl/q;->g:Lcom/oplus/camera/gl/q$m;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$i;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 481
    :goto_0
    new-instance v2, Lcom/oplus/camera/gl/q$i;

    iget-object v3, p0, Lcom/oplus/camera/gl/q;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/oplus/camera/gl/q$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-eq v0, v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/q$i;->a(I)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$i;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->h:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$i;->h()V

    :cond_0
    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q;->h:Z

    .line 504
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/oplus/camera/gl/q;->m:I

    return-void
.end method

.method public setEGLConfigChooser(Lcom/oplus/camera/gl/q$e;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->e()V

    .line 291
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->i:Lcom/oplus/camera/gl/q$e;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 306
    new-instance v0, Lcom/oplus/camera/gl/q$n;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/gl/q$n;-><init>(Lcom/oplus/camera/gl/q;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/q;->setEGLConfigChooser(Lcom/oplus/camera/gl/q$e;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->e()V

    .line 349
    iput p1, p0, Lcom/oplus/camera/gl/q;->n:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/oplus/camera/gl/q$f;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->e()V

    .line 265
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->j:Lcom/oplus/camera/gl/q$f;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/oplus/camera/gl/q$g;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/oplus/camera/gl/q;->e()V

    .line 277
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->k:Lcom/oplus/camera/gl/q$g;

    return-void
.end method

.method public setGLWrapper(Lcom/oplus/camera/gl/q$k;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->l:Lcom/oplus/camera/gl/q$k;

    return-void
.end method

.method public setOutput(Landroid/view/Surface;)V
    .locals 0

    .line 1990
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->c:Landroid/view/Surface;

    return-void
.end method

.method public setOutputRender(Lcom/oplus/camera/gl/r;)V
    .locals 0

    .line 1975
    iput-object p1, p0, Lcom/oplus/camera/gl/q;->d:Lcom/oplus/camera/gl/r;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/oplus/camera/gl/q;->o:Z

    return-void
.end method

.method public setPreventRenderByPause(Z)V
    .locals 0

    .line 2035
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    if-eqz p0, :cond_0

    .line 2036
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/q$i;->a(Z)V

    :cond_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/q$i;->a(I)V

    return-void
.end method

.method public setWatchOutputSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1994
    new-instance v0, Lcom/oplus/camera/gl/q$3;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/gl/q$3;-><init>(Lcom/oplus/camera/gl/q;Landroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0, p3, p4}, Lcom/oplus/camera/gl/q$i;->a(II)V

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "surfaceChanged, w: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLSurfaceView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->d()V

    const-string p0, "GLSurfaceView"

    const-string p1, "surfaceCreated"

    .line 397
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/oplus/camera/gl/q;->f:Lcom/oplus/camera/gl/q$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->e()V

    const-string p0, "GLSurfaceView"

    const-string p1, "surfaceDestroyed"

    .line 409
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

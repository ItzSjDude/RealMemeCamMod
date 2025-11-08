.class public Lcom/b/a/e;
.super Landroid/view/SurfaceView;
.source "ModelSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/e$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "e"


# instance fields
.field public a:Lcom/b/a/k;

.field b:I

.field private d:Lcom/b/a/c;

.field private e:Lcom/b/a/d;

.field private f:Lcom/b/a/e$a;

.field private g:Lcom/b/a/l;

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/view/Surface;

.field private l:Z

.field private m:Landroid/os/ConditionVariable;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/b/a/c;Landroid/view/Surface;IILcom/b/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p1, Lcom/b/a/c;->c:Landroid/app/Activity;

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/b/a/e;->h:I

    .line 39
    iput v0, p0, Lcom/b/a/e;->i:I

    const/high16 v1, 0x3f400000    # 0.75f

    .line 40
    iput v1, p0, Lcom/b/a/e;->j:F

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/b/a/e;->k:Landroid/view/Surface;

    .line 45
    iput-boolean v0, p0, Lcom/b/a/e;->l:Z

    .line 46
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/b/a/e;->m:Landroid/os/ConditionVariable;

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/b/a/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/b/a/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    iput v0, p0, Lcom/b/a/e;->b:I

    .line 56
    iput-object p2, p0, Lcom/b/a/e;->k:Landroid/view/Surface;

    .line 57
    iput p3, p0, Lcom/b/a/e;->h:I

    .line 58
    iput p4, p0, Lcom/b/a/e;->i:I

    .line 59
    iput-object p5, p0, Lcom/b/a/e;->a:Lcom/b/a/k;

    :try_start_0
    const-string p2, "ModelSurfaceView"

    const-string p3, "Loading [OpenGL 2] ModelSurfaceView..."

    .line 61
    invoke-static {p2, p3}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/b/a/e;->d:Lcom/b/a/c;

    .line 67
    new-instance p2, Lcom/b/a/d;

    invoke-direct {p2, p0}, Lcom/b/a/d;-><init>(Lcom/b/a/e;)V

    iput-object p2, p0, Lcom/b/a/e;->e:Lcom/b/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ModelActivity"

    invoke-static {p3, p2, p0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object p1, p1, Lcom/b/a/c;->c:Landroid/app/Activity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error loading shaders:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic a(Lcom/b/a/e;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/b/a/e;->h:I

    return p1
.end method

.method static synthetic a(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/b/a/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic a(Landroid/opengl/EGLSurface;)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/b/a/e;->b(Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/b/a/e;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/b/a/e;->i:I

    return p1
.end method

.method static synthetic b(Lcom/b/a/e;)Lcom/b/a/d;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/b/a/e;->e:Lcom/b/a/d;

    return-object p0
.end method

.method private static b(Landroid/opengl/EGLSurface;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 138
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lcom/b/a/e;)Landroid/view/Surface;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/b/a/e;->k:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic d(Lcom/b/a/e;)Landroid/os/ConditionVariable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/b/a/e;->m:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/b/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/e;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/b/a/e;->l:Z

    return p0
.end method

.method static synthetic f(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/b/a/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g(Lcom/b/a/e;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/b/a/e;->h:I

    return p0
.end method

.method static synthetic h(Lcom/b/a/e;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/b/a/e;->i:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/b/a/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/b/a/e$a;

    invoke-direct {v0, p0, v1}, Lcom/b/a/e$a;-><init>(Lcom/b/a/e;Lcom/b/a/e$1;)V

    iput-object v0, p0, Lcom/b/a/e;->f:Lcom/b/a/e$a;

    .line 91
    invoke-virtual {p0}, Lcom/b/a/e;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/e;->f:Lcom/b/a/e$a;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/b/a/e;->l:Z

    .line 96
    iget-object v0, p0, Lcom/b/a/e;->k:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/b/a/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget-object p0, p0, Lcom/b/a/e;->f:Lcom/b/a/e$a;

    invoke-virtual {p0, v1}, Lcom/b/a/e$a;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/b/a/e;->f:Lcom/b/a/e$a;

    invoke-virtual {p0}, Lcom/b/a/e$a;->a()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 111
    sget-object v0, Lcom/b/a/e;->c:Ljava/lang/String;

    const-string v1, "onLoadComplete"

    invoke-static {v0, v1}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/b/a/e;->m:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public getModelActivity()Lcom/b/a/c;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/b/a/e;->d:Lcom/b/a/c;

    return-object p0
.end method

.method public getModelRenderer()Lcom/b/a/d;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/b/a/e;->e:Lcom/b/a/d;

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/b/a/e;->g:Lcom/b/a/l;

    invoke-virtual {p0, p1}, Lcom/b/a/l;->a(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ModelSurfaceView"

    invoke-static {v0, p1, p0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setTouchController(Lcom/b/a/l;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/b/a/e;->g:Lcom/b/a/l;

    return-void
.end method

.method public setVideoResizeRatio(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/b/a/e;->j:F

    return-void
.end method

.class public Lcom/oplus/camera/gl/m;
.super Ljava/lang/Object;
.source "GLProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/gl/m$j;,
        Lcom/oplus/camera/gl/m$l;,
        Lcom/oplus/camera/gl/m$i;,
        Lcom/oplus/camera/gl/m$h;,
        Lcom/oplus/camera/gl/m$n;,
        Lcom/oplus/camera/gl/m$b;,
        Lcom/oplus/camera/gl/m$a;,
        Lcom/oplus/camera/gl/m$e;,
        Lcom/oplus/camera/gl/m$d;,
        Lcom/oplus/camera/gl/m$g;,
        Lcom/oplus/camera/gl/m$c;,
        Lcom/oplus/camera/gl/m$f;,
        Lcom/oplus/camera/gl/m$m;,
        Lcom/oplus/camera/gl/m$k;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Lcom/oplus/camera/gl/m$j;


# instance fields
.field a:Landroid/view/Choreographer$FrameCallback;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/gl/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/oplus/camera/gl/m$i;

.field private e:Lcom/oplus/camera/gl/m$m;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:Lcom/oplus/camera/gl/m$e;

.field private h:Lcom/oplus/camera/gl/m$f;

.field private i:Lcom/oplus/camera/gl/m$g;

.field private j:Lcom/oplus/camera/gl/m$k;

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1856
    new-instance v0, Lcom/oplus/camera/gl/m$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/gl/m$j;-><init>(Lcom/oplus/camera/gl/m$1;)V

    sput-object v0, Lcom/oplus/camera/gl/m;->b:Lcom/oplus/camera/gl/m$j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Lcom/oplus/camera/gl/m$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/gl/m$1;-><init>(Lcom/oplus/camera/gl/m;)V

    iput-object v0, p0, Lcom/oplus/camera/gl/m;->a:Landroid/view/Choreographer$FrameCallback;

    .line 1858
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/gl/m;->c:Ljava/lang/ref/WeakReference;

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/gl/m;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/m;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/gl/m;->l:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/gl/m;)Lcom/oplus/camera/gl/m$e;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->g:Lcom/oplus/camera/gl/m$e;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/gl/m;)Lcom/oplus/camera/gl/m$f;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->h:Lcom/oplus/camera/gl/m$f;

    return-object p0
.end method

.method static synthetic c(I)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/oplus/camera/gl/m;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/gl/m;)Lcom/oplus/camera/gl/m$g;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->i:Lcom/oplus/camera/gl/m$g;

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 2

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/gl/m;)Lcom/oplus/camera/gl/m$k;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->j:Lcom/oplus/camera/gl/m$k;

    return-object p0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1158
    invoke-static {p0}, Lcom/oplus/camera/gl/m;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    return-object p0

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    return-object p0

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    return-object p0

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    return-object p0

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    return-object p0

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    return-object p0

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    return-object p0

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    return-object p0

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    return-object p0

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    return-object p0

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    return-object p0

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    return-object p0

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    return-object p0

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    return-object p0

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/oplus/camera/gl/m;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/gl/m;->k:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/gl/m;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/gl/m;->m:Z

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/gl/m;)Lcom/oplus/camera/gl/m$m;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->e:Lcom/oplus/camera/gl/m$m;

    return-object p0
.end method

.method static synthetic i()Lcom/oplus/camera/gl/m$j;
    .locals 1

    .line 47
    sget-object v0, Lcom/oplus/camera/gl/m;->b:Lcom/oplus/camera/gl/m$j;

    return-object v0
.end method

.method private j()V
    .locals 1

    .line 1830
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    if-nez p0, :cond_0

    return-void

    .line 1831
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/oplus/camera/gl/m;->j()V

    .line 348
    iput p1, p0, Lcom/oplus/camera/gl/m;->l:I

    return-void
.end method

.method public a(IIIIII)V
    .locals 9

    .line 316
    new-instance v8, Lcom/oplus/camera/gl/m$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/gl/m$b;-><init>(Lcom/oplus/camera/gl/m;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/oplus/camera/gl/m;->a(Lcom/oplus/camera/gl/m$e;)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->d()V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0, p3, p4}, Lcom/oplus/camera/gl/m$i;->a(II)V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/m$e;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/oplus/camera/gl/m;->j()V

    .line 280
    iput-object p1, p0, Lcom/oplus/camera/gl/m;->g:Lcom/oplus/camera/gl/m$e;

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/m$m;)V
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/gl/m;->j()V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/gl/m;->g:Lcom/oplus/camera/gl/m$e;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/oplus/camera/gl/m$n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/gl/m$n;-><init>(Lcom/oplus/camera/gl/m;Z)V

    iput-object v0, p0, Lcom/oplus/camera/gl/m;->g:Lcom/oplus/camera/gl/m$e;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/m;->h:Lcom/oplus/camera/gl/m$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lcom/oplus/camera/gl/m$c;

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/gl/m$c;-><init>(Lcom/oplus/camera/gl/m;Lcom/oplus/camera/gl/m$1;)V

    iput-object v0, p0, Lcom/oplus/camera/gl/m;->h:Lcom/oplus/camera/gl/m$f;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/m;->i:Lcom/oplus/camera/gl/m$g;

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Lcom/oplus/camera/gl/m$d;

    invoke-direct {v0, v1}, Lcom/oplus/camera/gl/m$d;-><init>(Lcom/oplus/camera/gl/m$1;)V

    iput-object v0, p0, Lcom/oplus/camera/gl/m;->i:Lcom/oplus/camera/gl/m$g;

    .line 232
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/gl/m;->e:Lcom/oplus/camera/gl/m$m;

    .line 233
    new-instance p1, Lcom/oplus/camera/gl/m$i;

    iget-object v0, p0, Lcom/oplus/camera/gl/m;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/oplus/camera/gl/m$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    .line 234
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->start()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/m$i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/oplus/camera/gl/m;->m:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 372
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/gl/m;->a:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 373
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/gl/m;->a:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/m$i;->a(I)V

    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->e()V

    return-void
.end method

.method public c()I
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->b()I

    move-result p0

    return p0
.end method

.method public d()V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->c()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "GLProducer"

    const-string v1, "requestExitAndWait"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    if-eqz p0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->h()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/m$i;->f()V

    .line 456
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/gl/m;->a:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/m$i;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    throw v0
.end method

.method public g()V
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->g()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/gl/m;->d:Lcom/oplus/camera/gl/m$i;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m$i;->i()V

    return-void
.end method

.class public Lcom/oplus/camera/screen/out/OutGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "OutGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/oplus/camera/screen/out/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/oplus/camera/screen/out/d;

.field private volatile c:Z

.field private d:Landroid/graphics/Rect;

.field private e:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    .line 30
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    .line 25
    iput-object p2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    .line 26
    iput-object p2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    .line 35
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 41
    new-instance v0, Lcom/oplus/camera/screen/out/d;

    invoke-direct {v0, p1}, Lcom/oplus/camera/screen/out/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    return-void
.end method

.method private b()V
    .locals 4

    .line 92
    iget-boolean v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/out/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v1, "drawFrameDelay, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x1

    .line 98
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    iget-object v2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/screen/out/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_2

    :cond_0
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 110
    invoke-direct {p0, v0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b(Lcom/oplus/camera/screen/out/a;)V

    goto :goto_3

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v1, "drawLastFrame, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object p0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/d;->d()V

    :cond_3
    :goto_3
    return-void
.end method

.method private b(Lcom/oplus/camera/screen/out/a;)V
    .locals 6

    .line 119
    iget v0, p1, Lcom/oplus/camera/screen/out/a;->a:I

    const-string v1, ", "

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v4, "animation, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    iget-object v4, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v4}, Lcom/oplus/camera/screen/out/d;->c(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)Z

    move-result p1

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v4, "end: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    new-instance v0, Lcom/oplus/camera/screen/out/a;

    invoke-direct {v0, v3}, Lcom/oplus/camera/screen/out/a;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->requestRender()V

    goto :goto_0

    .line 160
    :cond_1
    iput-boolean v2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v1, "size change, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    iget-object v1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/screen/out/d;->b(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)V

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    iget-object v1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/screen/out/d;->c(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)Z

    .line 146
    iget-object p1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    new-instance v0, Lcom/oplus/camera/screen/out/a;

    invoke-direct {v0, v3}, Lcom/oplus/camera/screen/out/a;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->requestRender()V

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/oplus/camera/screen/out/a;->g:J

    sub-long/2addr v2, v4

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v4, "frame thread cost: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 125
    invoke-direct {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b()V

    goto :goto_0

    .line 127
    :cond_4
    iget-object v0, p1, Lcom/oplus/camera/screen/out/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v1, "lock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v0, p1, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v1, "draw, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    iget-object v1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/screen/out/d;->a(Lcom/oplus/camera/screen/out/a;Landroid/graphics/Rect;)V

    .line 135
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v0, "unlock, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object p0, p1, Lcom/oplus/camera/screen/out/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void
.end method

.method private synthetic c()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b:Lcom/oplus/camera/screen/out/d;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/d;->b()V

    return-void
.end method

.method public static synthetic lambda$fEa94jyWP9wxL254bsOwOa1Be3M(Lcom/oplus/camera/screen/out/OutGLSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "OutGLSurfaceView"

    const-string v1, "onStop"

    .line 179
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 183
    new-instance v0, Lcom/oplus/camera/screen/out/-$$Lambda$OutGLSurfaceView$fEa94jyWP9wxL254bsOwOa1Be3M;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/out/-$$Lambda$OutGLSurfaceView$fEa94jyWP9wxL254bsOwOa1Be3M;-><init>(Lcom/oplus/camera/screen/out/OutGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePreviewSize, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    new-instance v1, Lcom/oplus/camera/screen/out/a;

    invoke-direct {v1, p1, p2}, Lcom/oplus/camera/screen/out/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->requestRender()V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/out/a;)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFrame, mbEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oplus/camera/screen/out/a;->g:J

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 p1, 0x0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const-string v1, "OutGLSurfaceView"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/screen/out/a;

    if-eqz p1, :cond_0

    .line 68
    iget v0, p1, Lcom/oplus/camera/screen/out/a;->a:I

    if-ne v2, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame, size change, queue size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x4000

    .line 75
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    .line 80
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b(Lcom/oplus/camera/screen/out/a;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    const-string v0, "onDrawFrame null, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->b()V

    .line 86
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const-string p1, "OutGLSurfaceView"

    const-string v0, "onSurfaceChanged"

    .line 55
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 57
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const-string p1, "OutGLSurfaceView"

    const-string p2, "onSurfaceCreated"

    .line 46
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->setRenderMode(I)V

    const/16 p1, 0xde1

    .line 49
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->c:Z

    return-void
.end method

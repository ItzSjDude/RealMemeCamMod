.class Lcom/b/a/e$a;
.super Ljava/lang/Thread;
.source "ModelSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[I

.field final synthetic b:Lcom/b/a/e;

.field private volatile c:Z


# direct methods
.method private constructor <init>(Lcom/b/a/e;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/b/a/e$a;->c:Z

    const/16 p1, 0x11

    .line 145
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/b/a/e$a;->a:[I

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
        0x3033
        0x5
        0x3142
        0x1
        0x3025
        0x18
        0x3038
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/b/a/e;Lcom/b/a/e$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/b/a/e$a;-><init>(Lcom/b/a/e;)V

    return-void
.end method


# virtual methods
.method a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    .line 160
    new-array v7, v0, [I

    const/4 v9, 0x0

    aput v9, v7, v9

    .line 161
    new-array v0, v0, [Landroid/opengl/EGLConfig;

    .line 162
    iget-object v2, p0, Lcom/b/a/e$a;->a:[I

    array-length v6, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 164
    aget-object p0, v0, v9

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/b/a/e$a;->c:Z

    return-void
.end method

.method public run()V
    .locals 15

    .line 173
    iget-object v0, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v0}, Lcom/b/a/e;->a(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v0}, Lcom/b/a/e;->b(Lcom/b/a/e;)Lcom/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v0}, Lcom/b/a/e;->c(Lcom/b/a/e;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 184
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    .line 185
    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 186
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 187
    invoke-virtual {p0, v1}, Lcom/b/a/e$a;->a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v2

    .line 188
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 189
    invoke-static {v1, v2, v4, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v4

    .line 192
    new-array v5, v3, [I

    const/16 v6, 0x3038

    aput v6, v5, v0

    .line 193
    iget-object v6, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    .line 195
    invoke-static {v6}, Lcom/b/a/e;->c(Lcom/b/a/e;)Landroid/view/Surface;

    move-result-object v6

    .line 194
    invoke-static {v1, v2, v6, v5, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 198
    invoke-static {v1, v2, v2, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 202
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->b(Lcom/b/a/e;)Lcom/b/a/d;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Lcom/b/a/d;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 205
    invoke-static {v2}, Lcom/b/a/e;->a(Landroid/opengl/EGLSurface;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 209
    sget-object v5, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v8, v7}, Lorg/andresoviedo/a/a/c;->a(FFFF)V

    .line 211
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->a(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    invoke-static {}, Lcom/b/a/e;->d()Ljava/lang/String;

    move-result-object v5

    const-string v7, "render start --E"

    invoke-static {v5, v7}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    .line 219
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->d(Lcom/b/a/e;)Landroid/os/ConditionVariable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    move v5, v0

    move v9, v5

    move-wide v10, v7

    move v8, v9

    move v7, v3

    .line 221
    :cond_1
    :goto_0
    iget-boolean v12, p0, Lcom/b/a/e$a;->c:Z

    const-string v13, "SurfaceListener"

    if-nez v12, :cond_6

    if-nez v5, :cond_6

    .line 222
    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v12}, Lcom/b/a/e;->e(Lcom/b/a/e;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 223
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->f(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    sget-object v5, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v12}, Lcom/b/a/e;->g(Lcom/b/a/e;)I

    move-result v12

    iget-object v14, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v14}, Lcom/b/a/e;->h(Lcom/b/a/e;)I

    move-result v14

    invoke-virtual {v5, v0, v0, v12, v14}, Lorg/andresoviedo/a/a/c;->b(IIII)V

    .line 225
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->b(Lcom/b/a/e;)Lcom/b/a/d;

    move-result-object v5

    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v12}, Lcom/b/a/e;->g(Lcom/b/a/e;)I

    move-result v12

    iget-object v14, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v14}, Lcom/b/a/e;->h(Lcom/b/a/e;)I

    move-result v14

    invoke-virtual {v5, v6, v12, v14}, Lcom/b/a/d;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 226
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->f(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 229
    :cond_2
    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->b(Lcom/b/a/e;)Lcom/b/a/d;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/b/a/d;->a(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v5

    if-eqz v7, :cond_3

    if-nez v8, :cond_3

    move v7, v0

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    if-nez v9, :cond_4

    .line 236
    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v12, v12, Lcom/b/a/e;->a:Lcom/b/a/k;

    if-eqz v12, :cond_4

    .line 237
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Calling onRenderStart on "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v12, v12, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v9, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v9, v9, Lcom/b/a/e;->a:Lcom/b/a/k;

    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v12}, Lcom/b/a/e;->c(Lcom/b/a/e;)Landroid/view/Surface;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/b/a/k;->a(Landroid/view/Surface;)V

    move v9, v3

    .line 243
    :cond_4
    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v12, v12, Lcom/b/a/e;->a:Lcom/b/a/k;

    if-eqz v12, :cond_5

    .line 244
    iget-object v12, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v12, v12, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-interface {v12, v10, v11}, Lcom/b/a/k;->a(J)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    :cond_5
    if-nez v5, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto/16 :goto_0

    .line 254
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v3, v3, Lcom/b/a/e;->a:Lcom/b/a/k;

    if-eqz v3, :cond_7

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onRenderFinish on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v5, v5, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v3, v3, Lcom/b/a/e;->a:Lcom/b/a/k;

    iget-object v5, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v5}, Lcom/b/a/e;->c(Lcom/b/a/e;)Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/b/a/k;->b(Landroid/view/Surface;)V

    .line 258
    :cond_7
    invoke-static {}, Lcom/b/a/e;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "render end --X totalCount : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v5, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 263
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 264
    invoke-static {v1, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 265
    iget-object v2, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {v2}, Lcom/b/a/e;->a(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 267
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 268
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c;->d()V

    .line 269
    iget-object v0, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object v0, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    if-eqz v0, :cond_8

    .line 270
    iget-object p0, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    iget-object p0, p0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-interface {p0, v6}, Lcom/b/a/k;->b(Lcom/b/a/a/e;)V

    :cond_8
    return-void

    .line 206
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create surface"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no output surface"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no renderer set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {p1}, Lcom/b/a/e;->g(Lcom/b/a/e;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p3, :cond_0

    .line 284
    iget-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {p1, p3}, Lcom/b/a/e;->a(Lcom/b/a/e;I)I

    .line 285
    iget-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {p1}, Lcom/b/a/e;->f(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {p1}, Lcom/b/a/e;->h(Lcom/b/a/e;)I

    move-result p1

    if-eq p1, p4, :cond_1

    .line 289
    iget-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {p1, p4}, Lcom/b/a/e;->b(Lcom/b/a/e;I)I

    .line 290
    iget-object p0, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-static {p0}, Lcom/b/a/e;->f(Lcom/b/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/b/a/e$a;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/e$a;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/e$a;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq p1, v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/b/a/e$a;->start()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 296
    invoke-virtual {p0}, Lcom/b/a/e$a;->interrupt()V

    .line 297
    iget-object p1, p0, Lcom/b/a/e$a;->b:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/e;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

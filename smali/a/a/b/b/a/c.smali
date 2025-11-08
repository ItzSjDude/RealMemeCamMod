.class public La/a/b/b/a/c;
.super La/a/b/b/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/b/a/c$a;
    }
.end annotation


# static fields
.field public static final n:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "La/a/b/b/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:La/a/b/b/a/a;

.field public q:I

.field public r:I

.field public s:La/a/b/b/a/c$a;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "La/a/b/b/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public x:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lco/polarr/renderer/entities/Context;La/a/b/b/a/a;Z)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/b/b/a/a;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, La/a/b/b/a/c;->o:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, La/a/b/b/a/c;->q:I

    iput p1, p0, La/a/b/b/a/c;->r:I

    new-instance v6, La/a/b/b/a/c$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, La/a/b/b/a/c$a;-><init>(La/a/b/b/a/c;IIII)V

    iput-object v6, p0, La/a/b/b/a/c;->s:La/a/b/b/a/c$a;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, La/a/b/b/a/c;->w:Ljava/util/Stack;

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, La/a/b/b/a/c;->x:[I

    iput-object p2, p0, La/a/b/b/a/c;->p:La/a/b/b/a/a;

    iput-boolean p1, p0, La/a/b/b/a/c;->v:Z

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, La/a/b/b/a/c;->u:Z

    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/Context;)La/a/b/b/a/c;
    .locals 4

    sget-object v0, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/b/b/a/c;

    if-nez v1, :cond_0

    new-instance v1, La/a/b/b/a/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, La/a/b/b/a/c;-><init>(Lco/polarr/renderer/entities/Context;La/a/b/b/a/a;Z)V

    invoke-virtual {v1}, La/a/b/b/a/a;->a()V

    sget-object p0, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, La/a/b/f/r;->a()[F

    move-result-object p0

    invoke-virtual {v1, p0}, La/a/b/b/a/a;->a([F)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l()La/a/b/b/a/c;
    .locals 4

    sget-object v0, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/b/b/a/c;

    if-nez v1, :cond_0

    new-instance v1, La/a/b/b/a/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, La/a/b/b/a/c;-><init>(Lco/polarr/renderer/entities/Context;La/a/b/b/a/a;Z)V

    invoke-virtual {v1}, La/a/b/b/a/a;->a()V

    sget-object v2, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, La/a/b/f/r;->a()[F

    move-result-object v2

    invoke-virtual {v1, v2}, La/a/b/b/a/a;->a([F)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static m()V
    .locals 1

    sget-object v0, La/a/b/b/a/c;->n:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 8

    iget-object v0, p0, La/a/b/b/a/c;->w:Ljava/util/Stack;

    iget-object v1, p0, La/a/b/b/a/c;->s:La/a/b/b/a/c$a;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, La/a/b/b/a/c$a;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, La/a/b/b/a/c$a;-><init>(La/a/b/b/a/c;IIII)V

    iput-object v0, p0, La/a/b/b/a/c;->s:La/a/b/b/a/c$a;

    return-void
.end method

.method public a(La/a/b/b/a/a;)V
    .locals 0

    iput-object p1, p0, La/a/b/b/a/c;->p:La/a/b/b/a/a;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, La/a/b/b/a/c;->t:I

    return-void
.end method

.method public b(II)V
    .locals 2

    iput p1, p0, La/a/b/b/a/c;->q:I

    iput p2, p0, La/a/b/b/a/c;->r:I

    iget-object v0, p0, La/a/b/b/a/c;->s:La/a/b/b/a/c$a;

    const/4 v1, 0x0

    iput v1, v0, La/a/b/b/a/c$a;->a:I

    iput v1, v0, La/a/b/b/a/c$a;->b:I

    iput p1, v0, La/a/b/b/a/c$a;->c:I

    iput p2, v0, La/a/b/b/a/c$a;->d:I

    invoke-virtual {p0}, La/a/b/b/a/c;->v()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public draw()V
    .locals 2

    invoke-virtual {p0}, La/a/b/b/a/c;->s()V

    iget-object v0, p0, La/a/b/b/a/c;->p:La/a/b/b/a/a;

    invoke-virtual {p0}, La/a/b/b/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/b/b/a/a;->a(I)V

    iget-object v0, p0, La/a/b/b/a/c;->p:La/a/b/b/a/a;

    invoke-virtual {v0}, La/a/b/b/a/a;->draw()V

    invoke-virtual {p0}, La/a/b/b/a/c;->n()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, La/a/b/b/a/c;->v:Z

    if-nez v0, :cond_0

    invoke-super {p0}, La/a/b/b/a/a;->f()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/a/c;->p()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, La/a/b/b/a/c;->x:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v0, p0, La/a/b/b/a/c;->x:[I

    aget v0, v0, v1

    invoke-static {v0}, La/a/b/c/g;->a(I)V

    iget-object v0, p0, La/a/b/b/a/c;->o:Ljava/util/List;

    iget-object v2, p0, La/a/b/b/a/c;->x:[I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, La/a/b/b/a/c;->o()Z

    return-void
.end method

.method public n()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/a/c;->u()V

    return-void
.end method

.method public final o()Z
    .locals 5

    iget-object v0, p0, La/a/b/b/a/c;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, La/a/b/b/a/c;->t:I

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-virtual {p0}, La/a/b/b/a/c;->u()V

    return v1
.end method

.method public p()V
    .locals 2

    iget-object p0, p0, La/a/b/b/a/c;->x:[I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public q()I
    .locals 0

    iget p0, p0, La/a/b/b/a/c;->t:I

    return p0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, La/a/b/b/a/c;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/b/b/a/c;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/b/a/c$a;

    iput-object v0, p0, La/a/b/b/a/c;->s:La/a/b/b/a/c$a;

    :cond_0
    return-void
.end method

.method public s()V
    .locals 5

    invoke-virtual {p0}, La/a/b/b/a/c;->v()V

    iget-object v0, p0, La/a/b/b/a/c;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, La/a/b/b/a/c;->t:I

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget-object p0, p0, La/a/b/b/a/c;->s:La/a/b/b/a/c$a;

    iget v0, p0, La/a/b/b/a/c$a;->a:I

    iget v1, p0, La/a/b/b/a/c$a;->b:I

    iget v2, p0, La/a/b/b/a/c$a;->c:I

    iget p0, p0, La/a/b/b/a/c$a;->d:I

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, La/a/b/b/a/c;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object p0, p0, La/a/b/b/a/c;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, v0

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 1

    const p0, 0x8d40

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public final v()V
    .locals 3

    iget-boolean v0, p0, La/a/b/b/a/c;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/b/b/a/c;->p:La/a/b/b/a/a;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    iget-object v0, p0, La/a/b/b/a/c;->p:La/a/b/b/a/a;

    iget v1, p0, La/a/b/b/a/c;->q:I

    iget v2, p0, La/a/b/b/a/c;->r:I

    invoke-virtual {v0, v1, v2}, La/a/b/b/a/a;->c(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/b/a/c;->u:Z

    :cond_0
    return-void
.end method

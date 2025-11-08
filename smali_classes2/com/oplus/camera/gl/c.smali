.class public abstract Lcom/oplus/camera/gl/c;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/oplus/camera/gl/v;


# static fields
.field private static j:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/oplus/camera/gl/c;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/ThreadLocal;


# instance fields
.field public a:I

.field public b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Lcom/oplus/camera/gl/h;

.field private h:J

.field private i:J

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oplus/camera/gl/c;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v1, v0, v0}, Lcom/oplus/camera/gl/c;-><init>(Lcom/oplus/camera/gl/h;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/oplus/camera/gl/h;II)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/oplus/camera/gl/c;->a:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/gl/c;->b:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/gl/c;->c:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/gl/c;->g:Lcom/oplus/camera/gl/h;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/oplus/camera/gl/c;->h:J

    .line 41
    iput-wide v1, p0, Lcom/oplus/camera/gl/c;->i:J

    .line 51
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/c;->a(Lcom/oplus/camera/gl/h;)V

    .line 52
    iput p2, p0, Lcom/oplus/camera/gl/c;->c:I

    .line 53
    iput p3, p0, Lcom/oplus/camera/gl/c;->d:I

    .line 55
    sget-object p1, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 56
    :try_start_0
    sget-object p2, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a()V
    .locals 3

    .line 72
    sget-object v0, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/c;

    .line 74
    invoke-virtual {v2}, Lcom/oplus/camera/gl/c;->q()V

    goto :goto_0

    .line 76
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()V
    .locals 4

    .line 80
    sget-object v0, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/oplus/camera/gl/c;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/gl/c;

    const/4 v3, 0x0

    .line 82
    iput v3, v2, Lcom/oplus/camera/gl/c;->d:I

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v2, v3}, Lcom/oplus/camera/gl/c;->a(Lcom/oplus/camera/gl/h;)V

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private s()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/gl/c;->g:Lcom/oplus/camera/gl/h;

    if-eqz v0, :cond_0

    .line 219
    iget v1, p0, Lcom/oplus/camera/gl/c;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;)Z

    .line 221
    iput v2, p0, Lcom/oplus/camera/gl/c;->c:I

    :cond_0
    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/oplus/camera/gl/c;->d:I

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/c;->a(Lcom/oplus/camera/gl/h;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 101
    iput p1, p0, Lcom/oplus/camera/gl/c;->a:I

    .line 102
    iput p2, p0, Lcom/oplus/camera/gl/c;->b:I

    .line 103
    iput p1, p0, Lcom/oplus/camera/gl/c;->e:I

    .line 104
    iput p2, p0, Lcom/oplus/camera/gl/c;->f:I

    .line 106
    iget p1, p0, Lcom/oplus/camera/gl/c;->e:I

    const/16 p2, 0x1000

    if-gt p1, p2, :cond_0

    iget p1, p0, Lcom/oplus/camera/gl/c;->f:I

    if-le p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x2

    .line 107
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget v0, p0, Lcom/oplus/camera/gl/c;->e:I

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget p0, p0, Lcom/oplus/camera/gl/c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "texture is too large: %d x %d"

    .line 107
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "BasicTexture"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/oplus/camera/gl/c;->h:J

    return-void
.end method

.method protected a(Lcom/oplus/camera/gl/h;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/gl/c;->g:Lcom/oplus/camera/gl/h;

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;IIII)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 182
    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;IIII)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/oplus/camera/gl/c;->l:Z

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/oplus/camera/gl/c;->i:J

    return-void
.end method

.method protected abstract b(Lcom/oplus/camera/gl/h;)Z
.end method

.method public c()Lcom/oplus/camera/gl/h;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/gl/c;->g:Lcom/oplus/camera/gl/h;

    return-object p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/oplus/camera/gl/c;->c:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/oplus/camera/gl/c;->a:I

    return p0
.end method

.method protected finalize()V
    .locals 2

    .line 230
    sget-object v0, Lcom/oplus/camera/gl/c;->k:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/oplus/camera/gl/c;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->o()V

    .line 232
    sget-object p0, Lcom/oplus/camera/gl/c;->k:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public g()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/oplus/camera/gl/c;->b:I

    return p0
.end method

.method public h()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/oplus/camera/gl/c;->e:I

    return p0
.end method

.method public i()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/oplus/camera/gl/c;->f:I

    return p0
.end method

.method public j()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/oplus/camera/gl/c;->h:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/oplus/camera/gl/c;->i:J

    return-wide v0
.end method

.method public l()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/oplus/camera/gl/c;->l:Z

    return p0
.end method

.method public abstract m()I
.end method

.method public n()Z
    .locals 1

    .line 193
    iget p0, p0, Lcom/oplus/camera/gl/c;->d:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/oplus/camera/gl/c;->s()V

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/oplus/camera/gl/c;->d:I

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/c;->a(Lcom/oplus/camera/gl/h;)V

    return-void
.end method

.method public q()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/oplus/camera/gl/c;->s()V

    return-void
.end method

.class public Lcom/oplus/c/a/a/a/c;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/a/a/c$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/c/a/a/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/c/a/a/a/c;->c:Ljava/util/ArrayList;

    .line 40
    iput p1, p0, Lcom/oplus/c/a/a/a/c;->a:I

    .line 41
    iput p2, p0, Lcom/oplus/c/a/a/a/c;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/oplus/c/a/a/a/c$a;
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/oplus/c/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/oplus/c/a/a/a/c;->c:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/a/a/c$a;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oplus/c/a/a/a/c$a;

    iget v1, p0, Lcom/oplus/c/a/a/a/c;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/c/a/a/a/c$a;-><init>(ILcom/oplus/c/a/a/a/c$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/oplus/c/a/a/a/c$a;)V
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p1, Lcom/oplus/c/a/a/a/c$a;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/oplus/c/a/a/a/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 51
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/c/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/oplus/c/a/a/a/c;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 54
    iput v0, p1, Lcom/oplus/c/a/a/a/c$a;->b:I

    .line 55
    iput v0, p1, Lcom/oplus/c/a/a/a/c$a;->c:I

    .line 56
    iget-object v0, p0, Lcom/oplus/c/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/oplus/c/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

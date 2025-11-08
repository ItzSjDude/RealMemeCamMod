.class public Lb/b/h;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/f;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/f;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/h;->a:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/h;->b:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/h;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lb/b/h;->d:I

    .line 29
    iput-boolean v0, p0, Lb/b/h;->e:Z

    return-void
.end method

.method private declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/b/g;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lb/b/h;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lb/b/d;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lb/b/h;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g;

    .line 82
    invoke-interface {v0, p1}, Lb/b/g;->endTest(Lb/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lb/b/d;Lb/b/b;)V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lb/b/h;->a:Ljava/util/List;

    new-instance v1, Lb/b/f;

    invoke-direct {v1, p1, p2}, Lb/b/f;-><init>(Lb/b/d;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lb/b/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g;

    .line 50
    invoke-interface {v1, p1, p2}, Lb/b/g;->addFailure(Lb/b/d;Lb/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lb/b/d;Lb/b/c;)V
    .locals 0

    .line 142
    :try_start_0
    invoke-interface {p2}, Lb/b/c;->a()V
    :try_end_0
    .catch Lb/b/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 148
    invoke-virtual {p0, p1, p2}, Lb/b/h;->a(Lb/b/d;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 146
    throw p0

    :catch_2
    move-exception p2

    .line 144
    invoke-virtual {p0, p1, p2}, Lb/b/h;->a(Lb/b/d;Lb/b/b;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lb/b/d;Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lb/b/h;->b:Ljava/util/List;

    new-instance v1, Lb/b/f;

    invoke-direct {v1, p1, p2}, Lb/b/f;-><init>(Lb/b/d;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Lb/b/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g;

    .line 39
    invoke-interface {v1, p1, p2}, Lb/b/g;->addError(Lb/b/d;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Lb/b/e;)V
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lb/b/h;->b(Lb/b/d;)V

    .line 120
    new-instance v0, Lb/b/h$1;

    invoke-direct {v0, p0, p1}, Lb/b/h$1;-><init>(Lb/b/h;Lb/b/e;)V

    .line 125
    invoke-virtual {p0, p1, v0}, Lb/b/h;->a(Lb/b/d;Lb/b/c;)V

    .line 127
    invoke-virtual {p0, p1}, Lb/b/h;->a(Lb/b/d;)V

    return-void
.end method

.method public declared-synchronized a(Lb/b/g;)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lb/b/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lb/b/h;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lb/b/d;)V
    .locals 2

    .line 163
    invoke-interface {p1}, Lb/b/d;->a()I

    move-result v0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget v1, p0, Lb/b/h;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/h;->d:I

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-direct {p0}, Lb/b/h;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g;

    .line 168
    invoke-interface {v0, p1}, Lb/b/g;->startTest(Lb/b/d;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

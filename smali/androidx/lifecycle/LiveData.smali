.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$a;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
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
.field static final b:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field c:I

.field volatile d:Ljava/lang/Object;

.field private e:Landroidx/a/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b<",
            "Landroidx/lifecycle/n<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.a;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private volatile g:Ljava/lang/Object;

.field private h:I

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroidx/a/a/b/b;

    invoke-direct {v0}, Landroidx/a/a/b/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 77
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Runnable;

    .line 111
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroidx/lifecycle/LiveData;->h:I

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .line 486
    invoke-static {}, Landroidx/a/a/a/a;->a()Landroidx/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/a/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroidx/lifecycle/LiveData$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 117
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$a;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    return-void

    .line 129
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$a;->e:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->h:I

    if-lt v0, v1, :cond_2

    return-void

    .line 132
    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$a;->e:I

    .line 133
    iget-object p1, p1, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/n;

    iget-object p0, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 322
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    .line 323
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method a(I)V
    .locals 4

    .line 378
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    add-int/2addr p1, v0

    .line 379
    iput p1, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 380
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->f:Z

    :goto_0
    const/4 v1, 0x0

    .line 385
    :try_start_0
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_1

    .line 386
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I

    if-lez v2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v0, :cond_2

    .line 387
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 388
    :goto_2
    iget v3, p0, Landroidx/lifecycle/LiveData;->c:I

    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->b()V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    move v0, v3

    goto :goto_0

    .line 396
    :cond_5
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->f:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->f:Z

    .line 397
    throw p1
.end method

.method a(Landroidx/lifecycle/LiveData$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->j:Z

    return-void

    .line 142
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    :cond_1
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-eqz p1, :cond_2

    .line 146
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$a;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    .line 150
    invoke-virtual {v1}, Landroidx/a/a/b/b;->c()Landroidx/a/a/b/b$d;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$a;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$a;)V

    .line 152
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-eqz v2, :cond_3

    .line 157
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-nez v1, :cond_1

    .line 158
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    return-void
.end method

.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/h;",
            "Landroidx/lifecycle/n<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    .line 191
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 192
    invoke-interface {p1}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V

    .line 197
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    invoke-virtual {p0, p2, v0}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData$a;

    if-eqz p0, :cond_2

    .line 198
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$a;->a(Landroidx/lifecycle/h;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    return-void

    .line 205
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 244
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    invoke-virtual {p0, p1}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData$a;

    if-nez p0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$a;->b()V

    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 306
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroidx/lifecycle/LiveData;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->h:I

    .line 308
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$a;)V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 0

    .line 373
    iget p0, p0, Landroidx/lifecycle/LiveData;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

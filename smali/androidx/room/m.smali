.class public abstract Landroidx/room/m;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroidx/room/g;

.field private volatile c:Landroidx/f/a/f;


# direct methods
.method public constructor <init>(Landroidx/room/g;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p1, p0, Landroidx/room/m;->b:Landroidx/room/g;

    return-void
.end method

.method private a(Z)Landroidx/f/a/f;
    .locals 0

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Landroidx/room/m;->c:Landroidx/f/a/f;

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Landroidx/room/m;->d()Landroidx/f/a/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/m;->c:Landroidx/f/a/f;

    .line 74
    :cond_0
    iget-object p0, p0, Landroidx/room/m;->c:Landroidx/f/a/f;

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Landroidx/room/m;->d()Landroidx/f/a/f;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private d()Landroidx/f/a/f;
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroidx/room/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object p0, p0, Landroidx/room/m;->b:Landroidx/room/g;

    invoke-virtual {p0, v0}, Landroidx/room/g;->a(Ljava/lang/String;)Landroidx/f/a/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Landroidx/f/a/f;)V
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/room/m;->c:Landroidx/f/a/f;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p0, p0, Landroidx/room/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/room/m;->b:Landroidx/room/g;

    invoke-virtual {p0}, Landroidx/room/g;->e()V

    return-void
.end method

.method public c()Landroidx/f/a/f;
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroidx/room/m;->b()V

    .line 87
    iget-object v0, p0, Landroidx/room/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/room/m;->a(Z)Landroidx/f/a/f;

    move-result-object p0

    return-object p0
.end method

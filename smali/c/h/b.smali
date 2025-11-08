.class public final Lc/h/b;
.super Lc/a/w;
.source "ProgressionIterators.kt"


# instance fields
.field private final a:I

.field private b:Z

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lc/a/w;-><init>()V

    iput p3, p0, Lc/h/b;->d:I

    .line 39
    iput p2, p0, Lc/h/b;->a:I

    .line 40
    iget p3, p0, Lc/h/b;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc/h/b;->b:Z

    .line 41
    iget-boolean p2, p0, Lc/h/b;->b:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lc/h/b;->a:I

    :goto_1
    iput p1, p0, Lc/h/b;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 46
    iget v0, p0, Lc/h/b;->c:I

    .line 47
    iget v1, p0, Lc/h/b;->a:I

    if-ne v0, v1, :cond_1

    .line 48
    iget-boolean v1, p0, Lc/h/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lc/h/b;->b:Z

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 52
    :cond_1
    iget v1, p0, Lc/h/b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lc/h/b;->c:I

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lc/h/b;->b:Z

    return p0
.end method

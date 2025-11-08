.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source "LiveData.java"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.a;",
        "Landroidx/lifecycle/f;"
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/h;

.field final synthetic b:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/h;",
            "Landroidx/lifecycle/n<",
            "-TT;>;)V"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroidx/lifecycle/LiveData;

    .line 405
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/n;)V

    .line 406
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/h;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 1

    .line 417
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/h;

    invoke-interface {p1}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p1

    .line 418
    sget-object p2, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    if-ne p1, p2, :cond_0

    .line 419
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroidx/lifecycle/LiveData;

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->c:Landroidx/lifecycle/n;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    .line 425
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a(Z)V

    .line 426
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/h;

    invoke-interface {p2}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .line 411
    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/h;

    invoke-interface {p0}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/e$b;->isAtLeast(Landroidx/lifecycle/e$b;)Z

    move-result p0

    return p0
.end method

.method a(Landroidx/lifecycle/h;)Z
    .locals 0

    .line 432
    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/h;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b()V
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/h;

    invoke-interface {v0}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/g;)V

    return-void
.end method

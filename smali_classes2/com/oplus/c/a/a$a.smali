.class final Lcom/oplus/c/a/a$a;
.super Lc/c/b/a/j;
.source "BitmapCacheClearManager.kt"

# interfaces
.implements Lc/f/a/m;


# annotations
.annotation runtime Lc/c/b/a/e;
    b = "BitmapCacheClearManager.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.oplus.light.gallery.BitmapCacheClearManager$clearDiskCacheData$1"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/c/a/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/j;",
        "Lc/f/a/m<",
        "Lkotlinx/coroutines/y;",
        "Lc/c/d<",
        "-",
        "Lc/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field label:I

.field private p$:Lkotlinx/coroutines/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/c/a/a$a;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lc/c/b/a/j;-><init>(ILc/c/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lc/c/d;)Lc/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc/c/d<",
            "*>;)",
            "Lc/c/d<",
            "Lc/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/c/a/a$a;

    iget-object p0, p0, Lcom/oplus/c/a/a$a;->$context:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lcom/oplus/c/a/a$a;-><init>(Landroid/content/Context;Lc/c/d;)V

    check-cast p1, Lkotlinx/coroutines/y;

    iput-object p1, v0, Lcom/oplus/c/a/a$a;->p$:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lc/c/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/a$a;->create(Ljava/lang/Object;Lc/c/d;)Lc/c/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/a$a;

    sget-object p1, Lc/s;->a:Lc/s;

    invoke-virtual {p0, p1}, Lcom/oplus/c/a/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lc/c/a/b;->a()Ljava/lang/Object;

    .line 44
    iget v0, p0, Lcom/oplus/c/a/a$a;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lc/n;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/c/a/a$a;->p$:Lkotlinx/coroutines/y;

    .line 45
    invoke-static {}, Lcom/oplus/c/a/a/a/e;->b()V

    .line 46
    sget-object p1, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    iget-object p0, p0, Lcom/oplus/c/a/a$a;->$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oplus/c/a/a/a$a;->a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/c/a/a/a;->b()V

    .line 47
    sget-object p0, Lc/s;->a:Lc/s;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

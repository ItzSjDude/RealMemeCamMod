.class final Lcom/oplus/c/a/b$a;
.super Lc/c/b/a/j;
.source "BitmapDecodeManager.kt"

# interfaces
.implements Lc/f/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/c/a/b;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)Landroid/graphics/Bitmap;
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $item$inlined:Lcom/oplus/c/a/b/a;

.field final synthetic $key$inlined:Ljava/lang/String;

.field final synthetic $options$inlined:Landroid/graphics/BitmapFactory$Options;

.field final synthetic $simpleSize$inlined:I

.field final synthetic $this_apply$inlined:Lcom/oplus/c/a/b/a;

.field final synthetic $time$inlined:J

.field label:I

.field private p$:Lkotlinx/coroutines/y;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lc/c/d;Lcom/oplus/c/a/b/a;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Landroid/content/Context;JILcom/oplus/c/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/c/a/b$a;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/oplus/c/a/b$a;->$this_apply$inlined:Lcom/oplus/c/a/b/a;

    iput-object p4, p0, Lcom/oplus/c/a/b$a;->$options$inlined:Landroid/graphics/BitmapFactory$Options;

    iput-object p5, p0, Lcom/oplus/c/a/b$a;->$key$inlined:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/c/a/b$a;->$context$inlined:Landroid/content/Context;

    iput-wide p7, p0, Lcom/oplus/c/a/b$a;->$time$inlined:J

    iput p9, p0, Lcom/oplus/c/a/b$a;->$simpleSize$inlined:I

    iput-object p10, p0, Lcom/oplus/c/a/b$a;->$item$inlined:Lcom/oplus/c/a/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lc/c/b/a/j;-><init>(ILc/c/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lc/c/d;)Lc/c/d;
    .locals 12
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

    new-instance v0, Lcom/oplus/c/a/b$a;

    iget-object v2, p0, Lcom/oplus/c/a/b$a;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oplus/c/a/b$a;->$this_apply$inlined:Lcom/oplus/c/a/b/a;

    iget-object v5, p0, Lcom/oplus/c/a/b$a;->$options$inlined:Landroid/graphics/BitmapFactory$Options;

    iget-object v6, p0, Lcom/oplus/c/a/b$a;->$key$inlined:Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/c/a/b$a;->$context$inlined:Landroid/content/Context;

    iget-wide v8, p0, Lcom/oplus/c/a/b$a;->$time$inlined:J

    iget v10, p0, Lcom/oplus/c/a/b$a;->$simpleSize$inlined:I

    iget-object v11, p0, Lcom/oplus/c/a/b$a;->$item$inlined:Lcom/oplus/c/a/b/a;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/oplus/c/a/b$a;-><init>(Landroid/graphics/Bitmap;Lc/c/d;Lcom/oplus/c/a/b/a;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Landroid/content/Context;JILcom/oplus/c/a/b/a;)V

    check-cast p1, Lkotlinx/coroutines/y;

    iput-object p1, v0, Lcom/oplus/c/a/b$a;->p$:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lc/c/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/b$a;->create(Ljava/lang/Object;Lc/c/d;)Lc/c/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b$a;

    sget-object p1, Lc/s;->a:Lc/s;

    invoke-virtual {p0, p1}, Lcom/oplus/c/a/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lc/c/a/b;->a()Ljava/lang/Object;

    .line 57
    iget v0, p0, Lcom/oplus/c/a/b$a;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lc/n;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/c/a/b$a;->p$:Lkotlinx/coroutines/y;

    .line 58
    sget-object p1, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    iget-object v0, p0, Lcom/oplus/c/a/b$a;->$context$inlined:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/c/a/a/a$a;->a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/c/a/b$a;->$key$inlined:Ljava/lang/String;

    const-string v1, "key"

    invoke-static {v0, v1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/c/a/b$a;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p0}, Lcom/oplus/c/a/a/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 59
    sget-object p0, Lc/s;->a:Lc/s;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

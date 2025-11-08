.class final Lkotlinx/coroutines/bc$a;
.super Lkotlinx/coroutines/bb;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/bb<",
        "Lkotlinx/coroutines/ay;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/bc;

.field private final e:Lkotlinx/coroutines/bc$b;

.field private final f:Lkotlinx/coroutines/i;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bc;Lkotlinx/coroutines/bc$b;Lkotlinx/coroutines/i;Ljava/lang/Object;)V
    .locals 1

    .line 1150
    iget-object v0, p3, Lkotlinx/coroutines/i;->a:Lkotlinx/coroutines/j;

    check-cast v0, Lkotlinx/coroutines/ay;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/bb;-><init>(Lkotlinx/coroutines/ay;)V

    iput-object p1, p0, Lkotlinx/coroutines/bc$a;->a:Lkotlinx/coroutines/bc;

    iput-object p2, p0, Lkotlinx/coroutines/bc$a;->e:Lkotlinx/coroutines/bc$b;

    iput-object p3, p0, Lkotlinx/coroutines/bc$a;->f:Lkotlinx/coroutines/i;

    iput-object p4, p0, Lkotlinx/coroutines/bc$a;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1152
    iget-object p1, p0, Lkotlinx/coroutines/bc$a;->a:Lkotlinx/coroutines/bc;

    iget-object v0, p0, Lkotlinx/coroutines/bc$a;->e:Lkotlinx/coroutines/bc$b;

    iget-object v1, p0, Lkotlinx/coroutines/bc$a;->f:Lkotlinx/coroutines/i;

    iget-object p0, p0, Lkotlinx/coroutines/bc$a;->g:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lkotlinx/coroutines/bc;->a(Lkotlinx/coroutines/bc;Lkotlinx/coroutines/bc$b;Lkotlinx/coroutines/i;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1145
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bc$a;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lc/s;->a:Lc/s;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/bc$a;->f:Lkotlinx/coroutines/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/bc$a;->g:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

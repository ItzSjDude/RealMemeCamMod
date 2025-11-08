.class public final Lkotlinx/coroutines/bd;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/r;

.field private static final b:Lkotlinx/coroutines/internal/r;

.field private static final c:Lkotlinx/coroutines/internal/r;

.field private static final d:Lkotlinx/coroutines/internal/r;

.field private static final e:Lkotlinx/coroutines/internal/r;

.field private static final f:Lkotlinx/coroutines/al;

.field private static final g:Lkotlinx/coroutines/al;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1287
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/bd;->b:Lkotlinx/coroutines/internal/r;

    .line 1290
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/internal/r;

    .line 1292
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/bd;->c:Lkotlinx/coroutines/internal/r;

    .line 1294
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/bd;->d:Lkotlinx/coroutines/internal/r;

    .line 1301
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/bd;->e:Lkotlinx/coroutines/internal/r;

    .line 1303
    new-instance v0, Lkotlinx/coroutines/al;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/al;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/bd;->f:Lkotlinx/coroutines/al;

    .line 1305
    new-instance v0, Lkotlinx/coroutines/al;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/al;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/bd;->g:Lkotlinx/coroutines/al;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1281
    instance-of v0, p0, Lkotlinx/coroutines/au;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/av;

    check-cast p0, Lkotlinx/coroutines/au;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/av;-><init>(Lkotlinx/coroutines/au;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/bd;->e:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/al;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/bd;->g:Lkotlinx/coroutines/al;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/bd;->b:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/bd;->d:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/bd;->c:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/al;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/bd;->f:Lkotlinx/coroutines/al;

    return-object v0
.end method

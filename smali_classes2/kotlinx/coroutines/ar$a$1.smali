.class final Lkotlinx/coroutines/ar$a$1;
.super Lc/f/b/i;
.source "Executors.kt"

# interfaces
.implements Lc/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/ar$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/f/b/i;",
        "Lc/f/a/b<",
        "Lc/c/g$b;",
        "Lkotlinx/coroutines/ar;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/ar$a$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/ar$a$1;

    invoke-direct {v0}, Lkotlinx/coroutines/ar$a$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ar$a$1;->INSTANCE:Lkotlinx/coroutines/ar$a$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/f/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lc/c/g$b;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ar$a$1;->invoke(Lc/c/g$b;)Lkotlinx/coroutines/ar;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lc/c/g$b;)Lkotlinx/coroutines/ar;
    .locals 0

    .line 24
    instance-of p0, p1, Lkotlinx/coroutines/ar;

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlinx/coroutines/ar;

    return-object p1
.end method

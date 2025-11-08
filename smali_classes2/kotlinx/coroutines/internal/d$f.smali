.class final Lkotlinx/coroutines/internal/d$f;
.super Lc/f/b/i;
.source "ExceptionsConstuctor.kt"

# interfaces
.implements Lc/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/d$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/d$f;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/d$f;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/d$f;->INSTANCE:Lkotlinx/coroutines/internal/d$f;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/d$f;->invoke(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

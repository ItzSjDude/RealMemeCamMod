.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "FastServiceLoader.kt"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    :try_start_0
    sget-object v0, Lc/m;->Companion:Lc/m$a;

    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lc/m;->Companion:Lc/m$a;

    invoke-static {v0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lc/m;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lkotlinx/coroutines/internal/f;->a:Z

    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 17
    sget-boolean v0, Lkotlinx/coroutines/internal/f;->a:Z

    return v0
.end method

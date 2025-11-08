.class public final Lkotlinx/coroutines/b/l;
.super Ljava/lang/Object;
.source "Tasks.kt"


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static f:Lkotlinx/coroutines/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 21
    invoke-static/range {v0 .. v8}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/b/l;->a:J

    const-string v2, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/b/l;->b:I

    .line 35
    invoke-static {}, Lkotlinx/coroutines/internal/s;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/h/d;->b(II)I

    move-result v3

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v4, 0x1

    const/16 v6, 0x8

    .line 33
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/b/l;->c:I

    .line 42
    invoke-static {}, Lkotlinx/coroutines/internal/s;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    .line 43
    sget v1, Lkotlinx/coroutines/b/l;->c:I

    const v2, 0x1ffffe

    .line 42
    invoke-static {v0, v1, v2}, Lc/h/d;->a(III)I

    move-result v4

    const-string v3, "kotlinx.coroutines.scheduler.max.pool.size"

    const v6, 0x1ffffe

    const/4 v7, 0x4

    .line 40
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/b/l;->d:I

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 51
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/b/l;->e:J

    .line 55
    sget-object v0, Lkotlinx/coroutines/b/g;->a:Lkotlinx/coroutines/b/g;

    check-cast v0, Lkotlinx/coroutines/b/m;

    sput-object v0, Lkotlinx/coroutines/b/l;->f:Lkotlinx/coroutines/b/m;

    return-void
.end method

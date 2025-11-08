.class public final synthetic Lkotlinx/coroutines/aa;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/z;->values()[Lkotlinx/coroutines/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/aa;->a:[I

    sget-object v0, Lkotlinx/coroutines/aa;->a:[I

    sget-object v1, Lkotlinx/coroutines/z;->DEFAULT:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lkotlinx/coroutines/aa;->a:[I

    sget-object v1, Lkotlinx/coroutines/z;->ATOMIC:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lkotlinx/coroutines/aa;->a:[I

    sget-object v1, Lkotlinx/coroutines/z;->UNDISPATCHED:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lkotlinx/coroutines/aa;->a:[I

    sget-object v1, Lkotlinx/coroutines/z;->LAZY:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lkotlinx/coroutines/z;->values()[Lkotlinx/coroutines/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/aa;->b:[I

    sget-object v0, Lkotlinx/coroutines/aa;->b:[I

    sget-object v1, Lkotlinx/coroutines/z;->DEFAULT:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lkotlinx/coroutines/aa;->b:[I

    sget-object v1, Lkotlinx/coroutines/z;->ATOMIC:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lkotlinx/coroutines/aa;->b:[I

    sget-object v1, Lkotlinx/coroutines/z;->UNDISPATCHED:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lkotlinx/coroutines/aa;->b:[I

    sget-object v1, Lkotlinx/coroutines/z;->LAZY:Lkotlinx/coroutines/z;

    invoke-virtual {v1}, Lkotlinx/coroutines/z;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method

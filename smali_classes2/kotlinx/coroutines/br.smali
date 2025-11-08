.class public final Lkotlinx/coroutines/br;
.super Lc/c/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/br$a;
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/br$a;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/br$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/br$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lkotlinx/coroutines/br;->b:Lkotlinx/coroutines/br$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lkotlinx/coroutines/br;->b:Lkotlinx/coroutines/br$a;

    check-cast v0, Lc/c/g$c;

    invoke-direct {p0, v0}, Lc/c/a;-><init>(Lc/c/g$c;)V

    return-void
.end method

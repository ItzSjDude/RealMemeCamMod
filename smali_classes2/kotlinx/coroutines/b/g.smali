.class public final Lkotlinx/coroutines/b/g;
.super Lkotlinx/coroutines/b/m;
.source "Tasks.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lkotlinx/coroutines/b/g;

    invoke-direct {v0}, Lkotlinx/coroutines/b/g;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b/g;->a:Lkotlinx/coroutines/b/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lkotlinx/coroutines/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

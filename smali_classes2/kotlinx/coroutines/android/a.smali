.class public final Lkotlinx/coroutines/android/a;
.super Lkotlinx/coroutines/android/b;
.source "HandlerDispatcher.kt"


# instance fields
.field private volatile _immediate:Lkotlinx/coroutines/android/a;

.field private final b:Lkotlinx/coroutines/android/a;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/android/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILc/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 118
    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/android/a;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lkotlinx/coroutines/android/b;-><init>(Lc/f/b/f;)V

    iput-object p1, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    iput-object p2, p0, Lkotlinx/coroutines/android/a;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lkotlinx/coroutines/android/a;->f:Z

    .line 122
    iget-boolean p1, p0, Lkotlinx/coroutines/android/a;->f:Z

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lkotlinx/coroutines/android/a;->_immediate:Lkotlinx/coroutines/android/a;

    .line 124
    iget-object p1, p0, Lkotlinx/coroutines/android/a;->_immediate:Lkotlinx/coroutines/android/a;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    new-instance p1, Lkotlinx/coroutines/android/a;

    iget-object p2, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    iget-object p3, p0, Lkotlinx/coroutines/android/a;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lkotlinx/coroutines/android/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/android/a;->_immediate:Lkotlinx/coroutines/android/a;

    sget-object p2, Lc/s;->a:Lc/s;

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/android/a;->b:Lkotlinx/coroutines/android/a;

    return-void
.end method


# virtual methods
.method public synthetic a()Lkotlinx/coroutines/bf;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lkotlinx/coroutines/android/a;->c()Lkotlinx/coroutines/android/a;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/bf;

    return-object p0
.end method

.method public a(Lc/c/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lc/c/g;)Z
    .locals 1

    .line 128
    iget-boolean p1, p0, Lkotlinx/coroutines/android/a;->f:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public c()Lkotlinx/coroutines/android/a;
    .locals 0

    .line 124
    iget-object p0, p0, Lkotlinx/coroutines/android/a;->b:Lkotlinx/coroutines/android/a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 157
    instance-of v0, p1, Lkotlinx/coroutines/android/a;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/android/a;

    iget-object p1, p1, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    iget-object p0, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 158
    iget-object p0, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lkotlinx/coroutines/android/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Lkotlinx/coroutines/android/a;

    .line 153
    iget-object v0, p0, Lkotlinx/coroutines/android/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/android/a;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    iget-boolean p0, p0, Lkotlinx/coroutines/android/a;->f:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0
.end method

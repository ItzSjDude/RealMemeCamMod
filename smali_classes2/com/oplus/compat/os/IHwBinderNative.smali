.class public Lcom/oplus/compat/os/IHwBinderNative;
.super Ljava/lang/Object;
.source "IHwBinderNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IHwBinderNative"


# instance fields
.field private mBinder:Landroid/os/IHwBinder;

.field private mIHwBinderWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oplus/compat/os/IHwBinderNative;->mIHwBinderWrapper:Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/oplus/compat/os/IHwBinderNative;->mBinder:Landroid/os/IHwBinder;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcom/oplus/inner/os/IHwBinderWrapper;

    invoke-direct {v0, p1}, Lcom/oplus/inner/os/IHwBinderWrapper;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/compat/os/IHwBinderNative;->mIHwBinderWrapper:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-static {p1}, Lcom/oplus/compat/os/IHwBinderNative;->getIHwBinderWrapperQCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/os/IHwBinderNative;->mIHwBinderWrapper:Ljava/lang/Object;

    :goto_0
    return-void

    .line 29
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Ljava/util/function/Consumer;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/oplus/compat/os/IHwBinderNative;->registServiceDiedCompat(Ljava/util/function/Consumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getIHwBinderWrapperQCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static linkToDeathCompat(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method private static registServiceDiedCompat(Ljava/util/function/Consumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public linkToDeath(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/oplus/compat/os/IHwBinderNative;->mBinder:Landroid/os/IHwBinder;

    new-instance v1, Lcom/oplus/compat/os/IHwBinderNative$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/compat/os/IHwBinderNative$1;-><init>(Lcom/oplus/compat/os/IHwBinderNative;Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V

    invoke-interface {v0, v1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object p0, p0, Lcom/oplus/compat/os/IHwBinderNative;->mIHwBinderWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/IHwBinderWrapper;

    .line 51
    invoke-static {p1}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->access$000(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/inner/os/IHwBinderWrapper$DeathRecipientWrapper;

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/inner/os/IHwBinderWrapper;->linkToDeath(Lcom/oplus/inner/os/IHwBinderWrapper$DeathRecipientWrapper;J)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object p0, p0, Lcom/oplus/compat/os/IHwBinderNative;->mIHwBinderWrapper:Ljava/lang/Object;

    invoke-static {p1}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->access$000(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/compat/os/IHwBinderNative;->linkToDeathCompat(Ljava/lang/Object;Ljava/lang/Object;J)V

    :goto_0
    return-void

    .line 55
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

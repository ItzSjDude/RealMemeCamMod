.class Lcom/oplus/camera/util/i$b;
.super Ljava/lang/Object;
.source "MultipleTaskUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/util/i;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/util/i;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/util/i$b;->b:Lcom/oplus/camera/util/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/util/i$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/util/i;Lcom/oplus/camera/util/i$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/util/i$b;-><init>(Lcom/oplus/camera/util/i;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/util/i$b;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/util/i$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/oplus/camera/util/i$b;->a:Ljava/lang/String;

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setName\uff0cname: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultipleTaskUtils"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/oplus/camera/util/i$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MultipleTaskUtils"

    const-string v1, "newThread\uff0cmName is null"

    .line 63
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/util/i$b;->a:Ljava/lang/String;

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/oplus/camera/util/i$b;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

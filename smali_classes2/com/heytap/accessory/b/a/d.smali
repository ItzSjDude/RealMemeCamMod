.class Lcom/heytap/accessory/b/a/d;
.super Ljava/lang/Object;
.source "BufferPoolConfig.java"


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:I

.field d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/b/a/d;->a:Landroid/content/Context;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/heytap/accessory/b/a/d;->d:Z

    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to configure the Pool!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroid/content/Context;)Lcom/heytap/accessory/b/a/d;
    .locals 1

    .line 29
    new-instance v0, Lcom/heytap/accessory/b/a/d;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

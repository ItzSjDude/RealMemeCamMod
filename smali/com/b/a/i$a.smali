.class Lcom/b/a/i$a;
.super Ljava/lang/Object;
.source "RenderEngineFactory.java"

# interfaces
.implements Lcom/b/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/b/a/g;

.field c:Landroid/view/Surface;

.field d:I

.field e:I

.field f:Lcom/b/a/k;

.field g:Lcom/b/a/f;

.field h:Lcom/b/a/f;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/b/a/g;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/b/a/i$a;->a:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/b/a/i$a;->b:Lcom/b/a/g;

    .line 35
    invoke-direct {p0}, Lcom/b/a/i$a;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 137
    new-instance v0, Lcom/b/a/i$a$1;

    invoke-direct {v0, p0}, Lcom/b/a/i$a$1;-><init>(Lcom/b/a/i$a;)V

    iput-object v0, p0, Lcom/b/a/i$a;->h:Lcom/b/a/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/d;ZLcom/b/a/a/a;)Lcom/b/a/a/j;
    .locals 2

    .line 91
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 92
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/c;->c()Lcom/b/a/j;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 94
    sget-object v0, Lcom/b/a/i$1;->a:[I

    invoke-virtual {p1}, Lcom/b/a/a/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 104
    invoke-static {}, Lcom/b/a/i;->a()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid animationID:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/b/a/j;->a(Lcom/b/a/a/d;Z)Lcom/b/a/a/j;

    move-result-object p0

    return-object p0

    .line 102
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/j;->a(Lcom/b/a/a/d;ZLcom/b/a/a/a;)Lcom/b/a/a/j;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/view/Surface;II)Lcom/b/a/h;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/b/a/i$a;->c:Landroid/view/Surface;

    .line 47
    iput p2, p0, Lcom/b/a/i$a;->d:I

    .line 48
    iput p3, p0, Lcom/b/a/i$a;->e:I

    return-object p0
.end method

.method public a(Lcom/b/a/k;)Lcom/b/a/h;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/b/a/i$a;->f:Lcom/b/a/k;

    return-object p0
.end method

.method public a()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/b/a/i$a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i$a;->b:Lcom/b/a/g;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    iget-object v0, p0, Lcom/b/a/i$a;->b:Lcom/b/a/g;

    sput-object v0, Lcom/b/a/c;->b:Lcom/b/a/g;

    .line 62
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/i$a;->h:Lcom/b/a/f;

    iget-object v3, p0, Lcom/b/a/i$a;->c:Landroid/view/Surface;

    iget v4, p0, Lcom/b/a/i$a;->d:I

    iget v5, p0, Lcom/b/a/i$a;->e:I

    iget-object v6, p0, Lcom/b/a/i$a;->f:Lcom/b/a/k;

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/c;->a(Lcom/b/a/f;Landroid/view/Surface;IILcom/b/a/k;)V

    .line 63
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/c;->e()V

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->f()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/b/a/i$a;->a:Landroid/app/Activity;

    .line 125
    iput-object v0, p0, Lcom/b/a/i$a;->b:Lcom/b/a/g;

    .line 126
    iput-object v0, p0, Lcom/b/a/i$a;->c:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/b/a/i$a;->d:I

    .line 128
    iput v1, p0, Lcom/b/a/i$a;->e:I

    .line 129
    iput-object v0, p0, Lcom/b/a/i$a;->f:Lcom/b/a/k;

    .line 130
    iput-object v0, p0, Lcom/b/a/i$a;->g:Lcom/b/a/f;

    .line 131
    iput-object v0, p0, Lcom/b/a/i$a;->h:Lcom/b/a/f;

    .line 132
    invoke-static {}, Lcom/b/a/c;->b()V

    return-void
.end method

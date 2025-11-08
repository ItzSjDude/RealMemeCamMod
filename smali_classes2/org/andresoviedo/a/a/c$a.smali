.class Lorg/andresoviedo/a/a/c$a;
.super Ljava/lang/Object;
.source "GL.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andresoviedo/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:J = -0x1L

.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/andresoviedo/a/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/andresoviedo/a/a/c$a;->b:Ljava/util/List;

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 3364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3362
    iput-object v0, p0, Lorg/andresoviedo/a/a/c$a;->d:Ljava/lang/String;

    .line 3365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lorg/andresoviedo/a/a/c$a;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/b/a/n;->a(Z)V

    .line 3366
    iput-object p1, p0, Lorg/andresoviedo/a/a/c$a;->c:Ljava/lang/String;

    .line 3367
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v0, p2, v1

    .line 3368
    iget-object v2, p0, Lorg/andresoviedo/a/a/c$a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3369
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andresoviedo/a/a/c$a;->d:Ljava/lang/String;

    goto :goto_2

    .line 3371
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/andresoviedo/a/a/c$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andresoviedo/a/a/c$a;->d:Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3374
    :cond_2
    sget-object p1, Lorg/andresoviedo/a/a/c$a;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 3384
    sget-object v0, Lorg/andresoviedo/a/a/c$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 3385
    sget-object v2, Lorg/andresoviedo/a/a/c$a;->b:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/b/a/n;->a(Z)V

    .line 3386
    sget-object p0, Lorg/andresoviedo/a/a/c$a;->b:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/andresoviedo/a/a/c$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/andresoviedo/a/a/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class Lcom/heytap/accessory/b/a/e$a;
.super Ljava/lang/Object;
.source "BufferPoolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput p1, p0, Lcom/heytap/accessory/b/a/e$a;->b:I

    const/4 p1, 0x0

    .line 592
    iput p1, p0, Lcom/heytap/accessory/b/a/e$a;->d:I

    .line 593
    iput p1, p0, Lcom/heytap/accessory/b/a/e$a;->e:I

    const/4 p1, 0x0

    .line 594
    iput-object p1, p0, Lcom/heytap/accessory/b/a/e$a;->c:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 595
    iput p1, p0, Lcom/heytap/accessory/b/a/e$a;->f:I

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/a/e$a;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/heytap/accessory/b/a/e$a;)V
    .locals 0

    .line 599
    invoke-direct {p0}, Lcom/heytap/accessory/b/a/e$a;->f()V

    .line 600
    sget p0, Lcom/heytap/accessory/b/a/e$a;->a:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/heytap/accessory/b/a/e$a;->a:I

    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    .line 642
    :try_start_0
    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heytap/accessory/b/a/e$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/b/a/e$a;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/b/a/e$a;->c:Ljava/util/LinkedList;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/b/a/e$a;->c:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/b/a/e$a;->c:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 616
    :try_start_0
    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d()F
    .locals 3

    .line 620
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 621
    :try_start_0
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->c()I

    move-result v1

    int-to-float v1, v1

    .line 1634
    iget p0, p0, Lcom/heytap/accessory/b/a/e$a;->d:I

    int-to-float p0, p0

    sget v2, Lcom/heytap/accessory/b/a/e$a;->a:I

    int-to-float v2, v2

    div-float/2addr p0, v2

    mul-float/2addr v1, p0

    .line 621
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final declared-synchronized e()Z
    .locals 3

    monitor-enter p0

    .line 646
    :try_start_0
    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/heytap/accessory/b/a/e$a;->e:I

    .line 647
    iget-object v0, p0, Lcom/heytap/accessory/b/a/e$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/heytap/accessory/b/a/e$a;->f:I

    if-ne v0, v2, :cond_2

    .line 1638
    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->e:I

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->d:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->d:I

    int-to-float v0, v0

    iget v2, p0, Lcom/heytap/accessory/b/a/e$a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_0
    const v2, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 650
    monitor-exit p0

    return v0

    .line 653
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/heytap/accessory/b/a/e$a;->f:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/heytap/accessory/b/a/e$a;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

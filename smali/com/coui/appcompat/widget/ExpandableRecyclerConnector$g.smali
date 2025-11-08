.class public Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/coui/appcompat/widget/x;

.field public b:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;
    .locals 1

    .line 1352
    invoke-static {}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d()Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;

    move-result-object v0

    .line 1353
    invoke-static {p1, p2, p3, p0}, Lcom/coui/appcompat/widget/x;->a(IIII)Lcom/coui/appcompat/widget/x;

    move-result-object p0

    iput-object p0, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    .line 1354
    iput-object p4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->b:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 1355
    iput p5, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->c:I

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 1336
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/x;->a()V

    .line 1338
    iput-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    .line 1340
    :cond_0
    iput-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->b:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    const/4 v0, 0x0

    .line 1341
    iput v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->c:I

    return-void
.end method

.method private static d()Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;
    .locals 3

    .line 1361
    sget-object v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1362
    :try_start_0
    sget-object v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1363
    sget-object v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;

    .line 1367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-direct {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->c()V

    return-object v1

    .line 1365
    :cond_0
    :try_start_1
    new-instance v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1367
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1373
    invoke-direct {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->c()V

    .line 1374
    sget-object v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1375
    :try_start_0
    sget-object v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1376
    sget-object v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()Z
    .locals 0

    .line 1387
    iget-object p0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->b:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

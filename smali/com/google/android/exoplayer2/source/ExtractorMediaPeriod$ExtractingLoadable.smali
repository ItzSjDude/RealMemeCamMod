.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field private seekTimeUs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 7

    .line 944
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 946
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 947
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 948
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 949
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 950
    new-instance p3, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    const/4 p3, 0x1

    .line 951
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p3, -0x1

    .line 952
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 953
    new-instance p3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v2, p4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 923
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 923
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 0

    .line 923
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private setLoadPosition(JJ)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1028
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 1029
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 960
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public load()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_9

    .line 966
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v3, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 969
    :try_start_0
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v13, v5, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 970
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v10, -0x1

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v5

    move-wide v8, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 971
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 972
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v15, -0x1

    cmp-long v5, v5, v15

    if-eqz v5, :cond_0

    .line 973
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 975
    :cond_0
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 976
    new-instance v12, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    move-object v6, v12

    move-wide v8, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 977
    :try_start_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v3, v12, v6, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v3

    .line 978
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_1

    .line 979
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v3, v13, v14, v6, v7}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 980
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move-object v7, v5

    move-object v5, v3

    move-object v3, v12

    :cond_2
    :goto_1
    if-nez v2, :cond_6

    .line 982
    :try_start_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v6, :cond_6

    .line 983
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 984
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    .line 986
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$702(Z)Z

    .line 989
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 991
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v13, v5, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 992
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v10, -0x1

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v5

    move-wide v8, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 993
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 994
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    cmp-long v5, v5, v15

    if-eqz v5, :cond_3

    .line 995
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 997
    :cond_3
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/net/Uri;

    .line 998
    new-instance v5, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    move-object v8, v5

    move-wide/from16 v17, v10

    move-wide v10, v13

    move-wide/from16 v19, v13

    move-wide/from16 v12, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 999
    :try_start_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v3

    .line 1000
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_4

    .line 1001
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    move-wide/from16 v10, v19

    invoke-interface {v3, v10, v11, v8, v9}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 1002
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    move-wide/from16 v10, v19

    :goto_2
    move v2, v0

    move-wide v13, v10

    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_4

    .line 1007
    :cond_5
    :try_start_4
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J

    move-result-wide v10

    add-long/2addr v10, v13

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    .line 1008
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    .line 1009
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 1010
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$1000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v6

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$900(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    :cond_6
    if-ne v2, v4, :cond_7

    move v2, v0

    goto :goto_3

    .line 1017
    :cond_7
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1019
    :goto_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v12

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-eq v2, v4, :cond_8

    if-eqz v3, :cond_8

    .line 1017
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1019
    :cond_8
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :cond_9
    return-void
.end method

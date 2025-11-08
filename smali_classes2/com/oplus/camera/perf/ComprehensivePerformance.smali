.class public Lcom/oplus/camera/perf/ComprehensivePerformance;
.super Ljava/lang/Object;
.source "ComprehensivePerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/ComprehensivePerformance$a;,
        Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/oplus/camera/perf/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/perf/ComprehensivePerformance$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->a:Ljava/util/ArrayDeque;

    .line 13
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->b:Ljava/util/ArrayDeque;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a()V
    .locals 3

    .line 201
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 202
    sget-object v1, Lcom/oplus/camera/perf/ComprehensivePerformance;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollClickEventQueue, shutterTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComprehensivePerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(J)V
    .locals 6

    .line 77
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;

    const-string v1, "ComprehensivePerformance"

    if-eqz v0, :cond_1

    .line 80
    iget-wide v2, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->d:J

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterProcessImage, timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->d:J

    invoke-static {v3, v4}, Lcom/oplus/camera/gl/y;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "afterProcessImage, reprocessing"

    .line 83
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterProcessImage, shutter time not found for this identity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(JILjava/lang/String;)V
    .locals 5

    .line 213
    invoke-static {}, Lcom/oplus/camera/perf/ComprehensivePerformance;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    const-string v3, "ComprehensivePerformance"

    if-nez v2, :cond_0

    const-string p0, "onFirstFrameArrived, no shutter in queue"

    .line 216
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    new-instance v2, Lcom/oplus/camera/perf/ComprehensivePerformance$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/oplus/camera/perf/ComprehensivePerformance$a;-><init>(Lcom/oplus/camera/perf/ComprehensivePerformance$1;)V

    .line 222
    iput-wide v0, v2, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->c:J

    .line 223
    iput p2, v2, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->a:I

    .line 224
    iput-object p3, v2, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->b:Ljava/lang/String;

    .line 225
    sget-object p2, Lcom/oplus/camera/perf/ComprehensivePerformance;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/perf/a;

    iput-object p2, v2, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->f:Lcom/oplus/camera/perf/a;

    .line 226
    sget-object p2, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFirstFrameArrived, shutterTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v2, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", identity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;JLjava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "ComprehensivePerformance"

    if-eqz p0, :cond_8

    .line 95
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_7

    .line 102
    sget-object v1, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 108
    :cond_1
    sget-object v1, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/perf/ComprehensivePerformance$a;

    if-eqz v1, :cond_6

    .line 110
    iget-wide v2, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_6

    iget-wide v2, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->d:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "codec_time"

    .line 116
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_3

    const-string v2, "onResultCallback, codec time lost in apsResult"

    .line 119
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v2, "proc_queue_wait"

    .line 126
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_4

    const-string v2, "onResultCallback, APS wait time lost in apsResult"

    .line 129
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_1
    iput-wide p1, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->e:J

    .line 137
    new-instance p1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;

    invoke-direct {p1}, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;-><init>()V

    .line 138
    iget-wide v4, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->d:J

    iget-wide v0, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->c:J

    sub-long/2addr v4, v0

    iput-wide v4, p1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->halCollectTime:J

    .line 139
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->apsWaitTime:J

    .line 140
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->codecTime:J

    .line 141
    iput-object p0, p1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->algoTimes:Ljava/util/HashMap;

    const-string p2, "reprocess_time"

    .line 143
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->reprocessTime:J

    .line 147
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_5
    sget-object p0, Lcom/oplus/camera/perf/ComprehensivePerformance;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 111
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onResultCallback, invalid record for identity "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_7
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onResultCallback, identity is null or event record not found for identity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    const-string p0, "onResultCallback, procTimer is empty"

    .line 96
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object p0, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()J
    .locals 2

    .line 208
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static b(J)V
    .locals 7

    .line 154
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;

    .line 155
    sget-object v1, Lcom/oplus/camera/perf/ComprehensivePerformance;->d:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    new-instance v2, Lcom/oplus/camera/perf/a;

    invoke-direct {v2}, Lcom/oplus/camera/perf/a;-><init>()V

    .line 164
    invoke-virtual {v2}, Lcom/oplus/camera/perf/a;->b()V

    .line 165
    invoke-virtual {v2}, Lcom/oplus/camera/perf/a;->c()V

    .line 166
    iget-object v3, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->f:Lcom/oplus/camera/perf/a;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/perf/a;->a(Lcom/oplus/camera/perf/a;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 169
    iget-wide v5, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->e:J

    sub-long v5, v3, v5

    iput-wide v5, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->updateTime:J

    .line 170
    iget-wide v5, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->c:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->totalTime:J

    .line 171
    invoke-virtual {v1}, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->calAppWaitTime()V

    .line 172
    iget v3, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->a:I

    iput v3, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->cameraId:I

    .line 173
    iget-object v0, v0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->capMode:Ljava/lang/String;

    .line 174
    invoke-virtual {v2}, Lcom/oplus/camera/perf/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/oplus/camera/perf/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->cpuInfo:Ljava/lang/String;

    .line 175
    invoke-static {v1}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;)V

    .line 177
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->d:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Lcom/oplus/camera/perf/ComprehensivePerformance;->c()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 181
    invoke-virtual {v2, p0}, Lcom/oplus/camera/perf/a;->a(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "ComprehensivePerformance"

    const-string p1, "eventRecord or perfRecord not found"

    .line 158
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(J)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClickShutterTime, clickShutterTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComprehensivePerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/oplus/camera/perf/a;

    invoke-direct {v0}, Lcom/oplus/camera/perf/a;-><init>()V

    .line 189
    invoke-virtual {v0}, Lcom/oplus/camera/perf/a;->b()V

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Lcom/oplus/camera/perf/a;->a(Z)V

    .line 192
    invoke-static {}, Lcom/oplus/camera/perf/ComprehensivePerformance;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/oplus/camera/perf/a;->c()V

    .line 196
    :cond_0
    sget-object v1, Lcom/oplus/camera/perf/ComprehensivePerformance;->a:Ljava/util/ArrayDeque;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object p0, Lcom/oplus/camera/perf/ComprehensivePerformance;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 232
    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/oplus/camera/perf/ComprehensivePerformance;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

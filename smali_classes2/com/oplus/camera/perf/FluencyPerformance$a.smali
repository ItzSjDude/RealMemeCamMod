.class public Lcom/oplus/camera/perf/FluencyPerformance$a;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/FluencyPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I

.field public final e:[I

.field public f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:[I

.field private final n:[D

.field private final o:[I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    const/16 p1, 0x79

    .line 108
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->m:[I

    .line 109
    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->n:[D

    mul-int/lit8 v1, v0, 0x79

    .line 110
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->o:[I

    mul-int/2addr v0, p1

    .line 111
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->e:[I

    const-wide/16 v0, -0x1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/perf/FluencyPerformance$a;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 165
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, "FluencyPerformance"

    if-lez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    const-string v2, "Capture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRenderTime, invalid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", startTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-wide/16 v2, 0x0

    .line 175
    iget-wide v4, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->h:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 176
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->h:J

    .line 179
    :cond_3
    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->j:I

    .line 180
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->f()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    .line 182
    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    if-le v0, v2, :cond_4

    const-string v0, "addRenderTime, records within last second lost, screen may have been frozen"

    .line 183
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->c()V

    return-void

    .line 187
    :cond_4
    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->j:I

    const-string v3, "addRenderTime, type: "

    if-le v0, v2, :cond_7

    .line 188
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->h:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->c()V

    return-void

    .line 193
    :cond_5
    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    int-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->h:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 194
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->h:J

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->n:[D

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->j:I

    aput-wide v4, v0, v2

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-wide v6, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minFrameRate:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minFrameRate:D

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->m:[I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    invoke-static {v0, v2}, Lcom/oplus/camera/perf/FluencyPerformance$c;->b([II)D

    move-result-wide v6

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-wide v8, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxIntVar:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxIntVar:D

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", at second "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frameRate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", intervalVar: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", render lagIdx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", aeExceedsCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v2, v2, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->aeTimeExceedsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    if-ne v0, v2, :cond_6

    .line 205
    invoke-virtual {p0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->b()V

    .line 206
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {p0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$b;)Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    .line 213
    :cond_7
    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    const/16 v2, 0x79

    if-lt v0, v2, :cond_8

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", frame index exceeds MAX_FRAME_NUM_PER_SEC at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_8
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->f()J

    move-result-wide v0

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 221
    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->m:[I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    aput v0, v1, v2

    .line 222
    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->o:[I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->l:I

    aput v0, v1, v2

    .line 223
    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v2, v1, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minInterval:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minInterval:I

    .line 224
    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v2, v1, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxInterval:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxInterval:I

    .line 226
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->h()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->i()I

    move-result v2

    div-int/2addr v1, v2

    if-le v0, v1, :cond_9

    .line 227
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->aeTimeExceedsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->aeTimeExceedsCount:I

    .line 230
    :cond_9
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->j()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->j()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v2, v2, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxRenderLag:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxRenderLag:I

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->e:[I

    iget v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->d:I

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->j()I

    move-result p0

    aput p0, v0, v1

    :cond_a
    return-void
.end method

.method public a(J)V
    .locals 8

    .line 116
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    .line 118
    iput p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->j:I

    .line 119
    iput p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->k:I

    .line 120
    iput p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->l:I

    .line 121
    iput p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->d:I

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->h:J

    .line 124
    sget-object p2, Lcom/oplus/camera/perf/FluencyPerformance$3;->a:[I

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->e()Lcom/oplus/camera/perf/FluencyPerformance$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/perf/FluencyPerformance$b;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const-string v0, "Record"

    const-string v1, "Capture"

    const-string v2, "Launch"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    .line 138
    iput-object v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, "Zoom"

    .line 134
    iput-object p2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    iput-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_2
    iput-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7bd7a0da

    if-eq v6, v7, :cond_5

    const v1, -0x78c1f02d

    if-eq v6, v1, :cond_4

    const p1, -0x6e54a78f

    if-eq v6, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v5

    :goto_2
    const/4 p2, 0x5

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_8

    const/16 p2, 0xa

    if-eq p1, v3, :cond_7

    .line 156
    iput p2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    goto :goto_3

    .line 152
    :cond_7
    iput p2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    goto :goto_3

    .line 148
    :cond_8
    iput p2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    goto :goto_3

    .line 144
    :cond_9
    iput p2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    .line 160
    :goto_3
    new-instance p1, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-direct {p1}, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    .line 161
    iget-object p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-object p0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    iput-object p0, p1, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->type:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->n:[D

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$c;->a([DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->averageFrameRate:D

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->n:[D

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$c;->b([DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->frameRateVar:D

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->o:[I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->l:I

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$c;->b([II)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->totalIntervalVar:D

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    if-ge v1, v2, :cond_0

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->b:J

    iget-wide v3, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_0

    :cond_0
    mul-int/lit16 v1, v2, 0x3e8

    :goto_0
    iput v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->windowTime:I

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->currentMode:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    invoke-static {v1, v2}, Lcom/oplus/camera/gl/y;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->startTime:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->e:[I

    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->d:I

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$c;->a([II)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->averageRenderLag:D

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)V

    .line 248
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->m()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-wide v0, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->totalIntervalVar:D

    .line 249
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->m()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v0, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->aeTimeExceedsCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v0, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->windowTime:I

    iget v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    mul-int/lit16 v1, v1, 0x3e8

    if-lt v0, v1, :cond_1

    .line 251
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0xd5afe9

    const/4 v2, 0x1

    .line 252
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/oplus/camera/statistics/QualityReport;->report(I[Ljava/lang/Object;)V

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countStatistics, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fluency sample end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FluencyPerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    .line 260
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->e()Lcom/oplus/camera/perf/FluencyPerformance$b;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 261
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {p0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$b;)Lcom/oplus/camera/perf/FluencyPerformance$b;

    :cond_2
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 266
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterrupt, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FluencyPerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    goto :goto_0

    .line 276
    :cond_1
    iget v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->c:I

    mul-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 277
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->b:J

    .line 278
    invoke-virtual {p0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->f()J

    move-result-wide v1

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v2, v2, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxInterval:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxInterval:I

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->i:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->windowTime:I

    .line 286
    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->currentMode:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    invoke-static {v1, v2}, Lcom/oplus/camera/gl/y;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->startTime:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)V

    .line 290
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$a;->f:Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0xd5afe9

    const/4 v2, 0x1

    .line 291
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/oplus/camera/statistics/QualityReport;->report(I[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, -0x1

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    return-void
.end method

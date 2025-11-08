.class public Lcom/oplus/camera/util/a;
.super Ljava/lang/Object;
.source "AiVideoSceneDetector.java"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/oplus/camera/util/a;->b:I

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/oplus/camera/util/a;->c:F

    .line 45
    iput v0, p0, Lcom/oplus/camera/util/a;->d:I

    .line 46
    iput v0, p0, Lcom/oplus/camera/util/a;->e:I

    const v0, 0x43ac8000    # 345.0f

    .line 48
    iput v0, p0, Lcom/oplus/camera/util/a;->f:F

    const v0, 0x43bb8000    # 375.0f

    .line 49
    iput v0, p0, Lcom/oplus/camera/util/a;->g:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 50
    iput v0, p0, Lcom/oplus/camera/util/a;->h:F

    const/high16 v1, 0x43700000    # 240.0f

    .line 51
    iput v1, p0, Lcom/oplus/camera/util/a;->i:F

    const/high16 v1, 0x439b0000    # 310.0f

    .line 52
    iput v1, p0, Lcom/oplus/camera/util/a;->j:F

    .line 53
    iput v0, p0, Lcom/oplus/camera/util/a;->k:F

    const/high16 v0, 0x42820000    # 65.0f

    .line 55
    iput v0, p0, Lcom/oplus/camera/util/a;->l:F

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/util/a;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "com.oplus.ai.scene.detector.params"

    .line 63
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    const-string v1, "com.oplus.feature.ai.enhancement.hdr.score.thr"

    .line 65
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/util/a;->l:F

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initAiVideoSceneParams mHdrScoreThr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/util/a;->l:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiVideoSceneDetector"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 68
    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 69
    aget v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/util/a;->f:F

    const/4 v1, 0x1

    .line 70
    aget v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/util/a;->g:F

    const/4 v1, 0x2

    .line 71
    aget v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/util/a;->h:F

    const/4 v1, 0x3

    .line 72
    aget v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/util/a;->i:F

    const/4 v1, 0x4

    .line 73
    aget v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/util/a;->j:F

    const/4 v1, 0x5

    .line 74
    aget v0, v0, v1

    iput v0, p0, Lcom/oplus/camera/util/a;->k:F

    :cond_0
    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 10

    .line 81
    iget v0, p0, Lcom/oplus/camera/util/a;->b:I

    .line 83
    iget v1, p0, Lcom/oplus/camera/util/a;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/util/a;->d:I

    .line 85
    iget-object v1, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    const/16 v3, 0x19

    if-gt v3, v1, :cond_0

    .line 86
    iget v1, p0, Lcom/oplus/camera/util/a;->c:F

    iget-object v3, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/util/a;->c:F

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 90
    iget v1, p0, Lcom/oplus/camera/util/a;->c:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/oplus/camera/util/a;->c:F

    const/16 p1, 0xa

    .line 92
    iget v1, p0, Lcom/oplus/camera/util/a;->d:I

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/oplus/camera/util/a;->d:I

    .line 97
    iget v1, p0, Lcom/oplus/camera/util/a;->c:F

    iget-object v3, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 99
    iget-object v3, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, p1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 101
    iget-object v7, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    mul-float/2addr v7, v7

    div-float/2addr v8, v7

    sub-float/2addr v6, v1

    mul-float/2addr v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v4, v6

    add-int/2addr v5, v2

    goto :goto_0

    :cond_2
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_3

    .line 109
    iget v3, p0, Lcom/oplus/camera/util/a;->i:F

    const/high16 v4, 0x41700000    # 15.0f

    sub-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/oplus/camera/util/a;->g:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    :cond_3
    move p1, v2

    :cond_4
    if-eqz p1, :cond_7

    const p1, 0x45e0ffff    # 7199.9995f

    div-float/2addr p1, v1

    const v0, 0x42700001    # 60.000004f

    mul-float/2addr v0, p2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v0, v3

    add-float/2addr p1, v0

    .line 117
    iget v0, p0, Lcom/oplus/camera/util/a;->k:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/util/a;->j:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/util/a;->l:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    move v0, v2

    goto :goto_1

    .line 119
    :cond_5
    iget p1, p0, Lcom/oplus/camera/util/a;->g:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_6

    iget p1, p0, Lcom/oplus/camera/util/a;->h:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    .line 126
    :cond_7
    :goto_1
    iput v0, p0, Lcom/oplus/camera/util/a;->b:I

    return v0
.end method

.method public b(FF)I
    .locals 5

    .line 132
    iget v0, p0, Lcom/oplus/camera/util/a;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/util/a;->e:I

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    const/16 v2, 0x19

    if-gt v2, v0, :cond_0

    .line 135
    iget v0, p0, Lcom/oplus/camera/util/a;->c:F

    iget-object v2, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/util/a;->c:F

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 139
    iget v0, p0, Lcom/oplus/camera/util/a;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/util/a;->c:F

    .line 140
    iget p1, p0, Lcom/oplus/camera/util/a;->c:F

    iget-object v0, p0, Lcom/oplus/camera/util/a;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/16 v0, 0x23

    .line 142
    iget v2, p0, Lcom/oplus/camera/util/a;->e:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    const v0, 0x45e0ffff    # 7199.9995f

    div-float/2addr v0, p1

    const v2, 0x42700001    # 60.000004f

    mul-float/2addr v2, p2

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    const v2, 0x3fe66666    # 1.8f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 148
    iget v2, p0, Lcom/oplus/camera/util/a;->j:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x42820000    # 65.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const v0, 0x40333333    # 2.8f

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_4

    :cond_3
    const/high16 p2, 0x43c80000    # 400.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    .line 158
    :goto_0
    iput v3, p0, Lcom/oplus/camera/util/a;->e:I

    return v1
.end method

.class public Lcom/b/a/l;
.super Ljava/lang/Object;
.source "TouchController.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.b.a.l"


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:[F

.field private G:[F

.field private H:[F

.field private I:F

.field private final b:Lcom/b/a/e;

.field private final c:Lcom/b/a/d;

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/view/MotionEvent;)Z
    .locals 14

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 106
    :pswitch_0
    sget-object v0, Lcom/b/a/l;->a:Ljava/lang/String;

    goto :goto_1

    .line 101
    :pswitch_1
    iput-boolean v2, p0, Lcom/b/a/l;->w:Z

    .line 102
    iput-boolean v1, p0, Lcom/b/a/l;->x:Z

    .line 103
    iget v0, p0, Lcom/b/a/l;->z:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/b/a/l;->z:I

    goto :goto_2

    .line 81
    :pswitch_2
    iget-wide v3, p0, Lcom/b/a/l;->y:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0xfa

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 82
    iput-boolean v2, p0, Lcom/b/a/l;->x:Z

    goto :goto_0

    .line 84
    :cond_0
    iput-boolean v2, p0, Lcom/b/a/l;->v:Z

    .line 85
    iput v1, p0, Lcom/b/a/l;->z:I

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/b/a/l;->y:J

    .line 87
    iput-boolean v1, p0, Lcom/b/a/l;->x:Z

    .line 89
    :goto_0
    iput-boolean v1, p0, Lcom/b/a/l;->w:Z

    goto :goto_2

    .line 94
    :pswitch_3
    sget-object v0, Lcom/b/a/l;->a:Ljava/lang/String;

    const-string v3, "Gesture changed..."

    invoke-static {v0, v3}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-boolean v2, p0, Lcom/b/a/l;->v:Z

    .line 96
    iput v1, p0, Lcom/b/a/l;->z:I

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/b/a/l;->y:J

    .line 98
    iput-boolean v1, p0, Lcom/b/a/l;->x:Z

    goto :goto_2

    .line 106
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-boolean v2, p0, Lcom/b/a/l;->v:Z

    .line 110
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/b/a/l;->d:I

    .line 112
    iget v0, p0, Lcom/b/a/l;->d:I

    const/high16 v3, 0x40800000    # 4.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x2

    if-ne v0, v2, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->e:F

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/b/a/l;->f:F

    .line 115
    iget-boolean p1, p0, Lcom/b/a/l;->v:Z

    if-eqz p1, :cond_1

    .line 116
    sget-object p1, Lcom/b/a/l;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/b/a/l;->e:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",y:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/b/a/l;->f:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget p1, p0, Lcom/b/a/l;->e:F

    iput p1, p0, Lcom/b/a/l;->B:F

    .line 118
    iget p1, p0, Lcom/b/a/l;->f:F

    iput p1, p0, Lcom/b/a/l;->C:F

    .line 120
    :cond_1
    iget p1, p0, Lcom/b/a/l;->e:F

    iget v0, p0, Lcom/b/a/l;->B:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/b/a/l;->i:F

    .line 121
    iget p1, p0, Lcom/b/a/l;->f:F

    iget v0, p0, Lcom/b/a/l;->C:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/b/a/l;->j:F

    goto/16 :goto_6

    .line 122
    :cond_2
    iget v0, p0, Lcom/b/a/l;->d:I

    if-ne v0, v6, :cond_8

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->e:F

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->f:F

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->g:F

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->h:F

    .line 127
    iget-object v0, p0, Lcom/b/a/l;->G:[F

    iget v7, p0, Lcom/b/a/l;->g:F

    iget v8, p0, Lcom/b/a/l;->e:F

    sub-float/2addr v7, v8

    aput v7, v0, v1

    .line 128
    iget-object v0, p0, Lcom/b/a/l;->G:[F

    iget v7, p0, Lcom/b/a/l;->h:F

    iget v8, p0, Lcom/b/a/l;->f:F

    sub-float/2addr v7, v8

    aput v7, v0, v2

    .line 129
    iget-object v0, p0, Lcom/b/a/l;->G:[F

    const/4 v7, 0x0

    aput v7, v0, v6

    .line 130
    iget-object v0, p0, Lcom/b/a/l;->G:[F

    const/4 v8, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v0, v8

    .line 131
    iget-object v0, p0, Lcom/b/a/l;->G:[F

    aget v0, v0, v1

    iget-object v8, p0, Lcom/b/a/l;->G:[F

    aget v8, v8, v2

    iget-object v10, p0, Lcom/b/a/l;->G:[F

    aget v10, v10, v6

    invoke-static {v0, v8, v10}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    .line 132
    iget-object v8, p0, Lcom/b/a/l;->G:[F

    aget v10, v8, v1

    div-float/2addr v10, v0

    aput v10, v8, v1

    .line 133
    iget-object v8, p0, Lcom/b/a/l;->G:[F

    aget v10, v8, v2

    div-float/2addr v10, v0

    aput v10, v8, v2

    .line 136
    iget-boolean v0, p0, Lcom/b/a/l;->v:Z

    if-eqz v0, :cond_3

    .line 137
    iget v0, p0, Lcom/b/a/l;->e:F

    iput v0, p0, Lcom/b/a/l;->B:F

    .line 138
    iget v0, p0, Lcom/b/a/l;->f:F

    iput v0, p0, Lcom/b/a/l;->C:F

    .line 139
    iget v0, p0, Lcom/b/a/l;->g:F

    iput v0, p0, Lcom/b/a/l;->D:F

    .line 140
    iget v0, p0, Lcom/b/a/l;->h:F

    iput v0, p0, Lcom/b/a/l;->E:F

    .line 141
    iget-object v0, p0, Lcom/b/a/l;->G:[F

    iget-object v8, p0, Lcom/b/a/l;->F:[F

    iget-object v10, p0, Lcom/b/a/l;->G:[F

    array-length v10, v10

    invoke-static {v0, v1, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_3
    iget v0, p0, Lcom/b/a/l;->e:F

    iget v8, p0, Lcom/b/a/l;->B:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/b/a/l;->i:F

    .line 144
    iget v0, p0, Lcom/b/a/l;->f:F

    iget v8, p0, Lcom/b/a/l;->C:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/b/a/l;->j:F

    .line 145
    iget v0, p0, Lcom/b/a/l;->g:F

    iget v8, p0, Lcom/b/a/l;->D:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/b/a/l;->k:F

    .line 146
    iget v0, p0, Lcom/b/a/l;->h:F

    iget v8, p0, Lcom/b/a/l;->E:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/b/a/l;->l:F

    .line 148
    iget-object v0, p0, Lcom/b/a/l;->H:[F

    iget-object v8, p0, Lcom/b/a/l;->F:[F

    aget v8, v8, v2

    iget-object v10, p0, Lcom/b/a/l;->G:[F

    aget v10, v10, v6

    mul-float/2addr v8, v10

    iget-object v10, p0, Lcom/b/a/l;->F:[F

    aget v10, v10, v6

    iget-object v11, p0, Lcom/b/a/l;->G:[F

    aget v11, v11, v2

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    aput v8, v0, v1

    .line 149
    iget-object v0, p0, Lcom/b/a/l;->H:[F

    iget-object v8, p0, Lcom/b/a/l;->F:[F

    aget v8, v8, v6

    iget-object v10, p0, Lcom/b/a/l;->G:[F

    aget v10, v10, v1

    mul-float/2addr v8, v10

    iget-object v10, p0, Lcom/b/a/l;->F:[F

    aget v10, v10, v1

    iget-object v11, p0, Lcom/b/a/l;->G:[F

    aget v11, v11, v6

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    aput v8, v0, v2

    .line 150
    iget-object v0, p0, Lcom/b/a/l;->H:[F

    iget-object v8, p0, Lcom/b/a/l;->F:[F

    aget v8, v8, v1

    iget-object v10, p0, Lcom/b/a/l;->G:[F

    aget v10, v10, v2

    mul-float/2addr v8, v10

    iget-object v10, p0, Lcom/b/a/l;->F:[F

    aget v10, v10, v2

    iget-object v11, p0, Lcom/b/a/l;->G:[F

    aget v11, v11, v1

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    aput v8, v0, v6

    .line 151
    iget-object v0, p0, Lcom/b/a/l;->H:[F

    aget v0, v0, v1

    iget-object v8, p0, Lcom/b/a/l;->H:[F

    aget v8, v8, v2

    iget-object v10, p0, Lcom/b/a/l;->H:[F

    aget v10, v10, v6

    invoke-static {v0, v8, v10}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    .line 152
    iget-object v8, p0, Lcom/b/a/l;->H:[F

    aget v10, v8, v1

    div-float/2addr v10, v0

    aput v10, v8, v1

    .line 153
    iget-object v8, p0, Lcom/b/a/l;->H:[F

    aget v10, v8, v2

    div-float/2addr v10, v0

    aput v10, v8, v2

    .line 154
    iget-object v8, p0, Lcom/b/a/l;->H:[F

    aget v10, v8, v6

    div-float/2addr v10, v0

    aput v10, v8, v6

    .line 156
    iget v0, p0, Lcom/b/a/l;->D:F

    iget v8, p0, Lcom/b/a/l;->B:F

    sub-float/2addr v0, v8

    float-to-double v10, v0

    .line 157
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget v0, p0, Lcom/b/a/l;->E:F

    iget v8, p0, Lcom/b/a/l;->C:F

    sub-float/2addr v0, v8

    float-to-double v12, v0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v0, v10

    iput v0, p0, Lcom/b/a/l;->n:F

    .line 158
    iget v0, p0, Lcom/b/a/l;->g:F

    iget v8, p0, Lcom/b/a/l;->e:F

    sub-float/2addr v0, v8

    float-to-double v10, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget v0, p0, Lcom/b/a/l;->h:F

    iget v8, p0, Lcom/b/a/l;->f:F

    sub-float/2addr v0, v8

    float-to-double v12, v0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v0, v10

    iput v0, p0, Lcom/b/a/l;->m:F

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->o:F

    .line 161
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->p:F

    .line 162
    iput v7, p0, Lcom/b/a/l;->q:F

    .line 163
    invoke-static {p1}, Lcom/b/a/m;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/b/a/l;->q:F

    .line 164
    invoke-static {p1}, Lcom/b/a/m;->b(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/b/a/l;->r:I

    .line 165
    iget p1, p0, Lcom/b/a/l;->r:I

    if-ne p1, v2, :cond_4

    iget p1, p0, Lcom/b/a/l;->I:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    .line 166
    iput v7, p0, Lcom/b/a/l;->q:F

    goto :goto_3

    .line 167
    :cond_4
    iget p1, p0, Lcom/b/a/l;->r:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/b/a/l;->I:F

    cmpl-float p1, p1, v9

    if-nez p1, :cond_5

    const/high16 p1, 0x43b40000    # 360.0f

    .line 168
    iput p1, p0, Lcom/b/a/l;->q:F

    .line 173
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/b/a/l;->s:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/b/a/l;->i:F

    iget v0, p0, Lcom/b/a/l;->k:F

    mul-float/2addr p1, v0

    cmpg-float p1, p1, v7

    if-gez p1, :cond_6

    iget p1, p0, Lcom/b/a/l;->j:F

    iget v0, p0, Lcom/b/a/l;->l:F

    mul-float/2addr p1, v0

    cmpg-float p1, p1, v7

    if-gez p1, :cond_6

    iget p1, p0, Lcom/b/a/l;->i:F

    iget v0, p0, Lcom/b/a/l;->k:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget p1, p0, Lcom/b/a/l;->j:F

    iget v8, p0, Lcom/b/a/l;->l:F

    add-float/2addr p1, v8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    move p1, v2

    goto :goto_4

    :cond_6
    move p1, v1

    :goto_4
    iput-boolean p1, p0, Lcom/b/a/l;->t:Z

    .line 174
    iget-boolean p1, p0, Lcom/b/a/l;->t:Z

    if-nez p1, :cond_7

    iget p1, p0, Lcom/b/a/l;->i:F

    iget v0, p0, Lcom/b/a/l;->k:F

    mul-float/2addr p1, v0

    cmpl-float p1, p1, v7

    if-lez p1, :cond_7

    iget p1, p0, Lcom/b/a/l;->j:F

    iget v0, p0, Lcom/b/a/l;->l:F

    mul-float/2addr p1, v0

    cmpl-float p1, p1, v7

    if-lez p1, :cond_7

    move p1, v2

    goto :goto_5

    :cond_7
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lcom/b/a/l;->u:Z

    .line 178
    :cond_8
    :goto_6
    iget p1, p0, Lcom/b/a/l;->d:I

    if-ne p1, v2, :cond_9

    iget-boolean p1, p0, Lcom/b/a/l;->x:Z

    if-eqz p1, :cond_9

    .line 179
    iget-object p1, p0, Lcom/b/a/l;->b:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/e;->getModelActivity()Lcom/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/c;->c()Lcom/b/a/j;

    move-result-object p1

    .line 180
    iget v0, p0, Lcom/b/a/l;->e:F

    iget v7, p0, Lcom/b/a/l;->f:F

    invoke-virtual {p1, v0, v7}, Lcom/b/a/j;->a(FF)V

    .line 183
    :cond_9
    iget-object p1, p0, Lcom/b/a/l;->c:Lcom/b/a/d;

    invoke-virtual {p1}, Lcom/b/a/d;->d()I

    move-result p1

    iget-object v0, p0, Lcom/b/a/l;->c:Lcom/b/a/d;

    invoke-virtual {v0}, Lcom/b/a/d;->e()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 184
    iget v0, p0, Lcom/b/a/l;->z:I

    if-le v0, v2, :cond_d

    .line 186
    iget-object v0, p0, Lcom/b/a/l;->b:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->getModelActivity()Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->c()Lcom/b/a/j;

    move-result-object v0

    .line 187
    iget v7, p0, Lcom/b/a/l;->i:F

    iget v8, p0, Lcom/b/a/l;->j:F

    invoke-virtual {v0, v7, v8}, Lcom/b/a/j;->b(FF)V

    .line 188
    invoke-virtual {v0}, Lcom/b/a/j;->b()Lorg/andresoviedo/android_3d_model_engine/b/c;

    move-result-object v0

    .line 189
    iget v7, p0, Lcom/b/a/l;->d:I

    if-ne v7, v2, :cond_a

    iget v7, p0, Lcom/b/a/l;->o:F

    cmpl-float v3, v7, v3

    if-lez v3, :cond_a

    goto :goto_7

    .line 190
    :cond_a
    iget v3, p0, Lcom/b/a/l;->d:I

    if-ne v3, v2, :cond_b

    const/4 v0, 0x5

    .line 191
    iput v0, p0, Lcom/b/a/l;->A:I

    .line 193
    iget v0, p0, Lcom/b/a/l;->i:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-float v0, v6

    iput v0, p0, Lcom/b/a/l;->i:F

    .line 194
    iget v0, p0, Lcom/b/a/l;->j:F

    div-float/2addr v0, p1

    float-to-double v6, v0

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-float p1, v6

    iput p1, p0, Lcom/b/a/l;->j:F

    goto :goto_7

    .line 196
    :cond_b
    iget v3, p0, Lcom/b/a/l;->d:I

    if-ne v3, v6, :cond_d

    .line 197
    iget-boolean v3, p0, Lcom/b/a/l;->t:Z

    if-eqz v3, :cond_c

    .line 198
    iput v2, p0, Lcom/b/a/l;->A:I

    .line 199
    iget v3, p0, Lcom/b/a/l;->m:F

    iget v4, p0, Lcom/b/a/l;->n:F

    sub-float/2addr v3, v4

    int-to-float p1, p1

    div-float/2addr v3, p1

    iget-object p1, p0, Lcom/b/a/l;->c:Lcom/b/a/d;

    invoke-virtual {p1}, Lcom/b/a/d;->b()F

    move-result p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr v3, p1

    .line 200
    sget-object p1, Lcom/b/a/l;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Zooming \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v3}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(F)V

    .line 203
    :cond_c
    iget-boolean p1, p0, Lcom/b/a/l;->u:Z

    if-eqz p1, :cond_d

    .line 204
    iget p1, p0, Lcom/b/a/l;->i:F

    iget p1, p0, Lcom/b/a/l;->k:F

    .line 205
    iget p1, p0, Lcom/b/a/l;->j:F

    iget p1, p0, Lcom/b/a/l;->l:F

    .line 286
    :cond_d
    :goto_7
    iget p1, p0, Lcom/b/a/l;->e:F

    iput p1, p0, Lcom/b/a/l;->B:F

    .line 287
    iget p1, p0, Lcom/b/a/l;->f:F

    iput p1, p0, Lcom/b/a/l;->C:F

    .line 288
    iget p1, p0, Lcom/b/a/l;->g:F

    iput p1, p0, Lcom/b/a/l;->D:F

    .line 289
    iget p1, p0, Lcom/b/a/l;->h:F

    iput p1, p0, Lcom/b/a/l;->E:F

    .line 291
    iget p1, p0, Lcom/b/a/l;->r:I

    int-to-float p1, p1

    iput p1, p0, Lcom/b/a/l;->I:F

    .line 293
    iget-object p1, p0, Lcom/b/a/l;->G:[F

    iget-object v0, p0, Lcom/b/a/l;->F:[F

    iget-object v3, p0, Lcom/b/a/l;->G:[F

    array-length v3, v3

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget-boolean p1, p0, Lcom/b/a/l;->v:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/b/a/l;->z:I

    if-le p1, v2, :cond_e

    .line 296
    iput-boolean v1, p0, Lcom/b/a/l;->v:Z

    .line 297
    sget-object p1, Lcom/b/a/l;->a:Ljava/lang/String;

    const-string v0, "Fin"

    invoke-static {p1, v0}, Lcom/b/a/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_e
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

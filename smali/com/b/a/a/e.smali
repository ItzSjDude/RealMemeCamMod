.class public Lcom/b/a/a/e;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# instance fields
.field a:Z

.field b:Z

.field c:J

.field d:J

.field e:J

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/b/a/a/e;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/b/a/a/e;->g:Z

    .line 180
    iput-boolean v0, p0, Lcom/b/a/a/e;->h:Z

    .line 182
    iput-boolean v0, p0, Lcom/b/a/a/e;->a:Z

    .line 183
    iput-boolean v0, p0, Lcom/b/a/a/e;->b:Z

    const-wide/16 v1, 0x0

    .line 184
    iput-wide v1, p0, Lcom/b/a/a/e;->c:J

    .line 185
    iput-wide v1, p0, Lcom/b/a/a/e;->d:J

    .line 186
    iput-wide v1, p0, Lcom/b/a/a/e;->e:J

    .line 187
    iput v0, p0, Lcom/b/a/a/e;->i:I

    .line 188
    iput v0, p0, Lcom/b/a/a/e;->j:I

    const-wide/16 v1, 0x1

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x1388

    goto :goto_0

    :cond_0
    move-wide v1, p1

    .line 27
    :goto_0
    iput-wide v1, p0, Lcom/b/a/a/e;->e:J

    long-to-float p1, p1

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 28
    iput p1, p0, Lcom/b/a/a/e;->j:I

    .line 29
    invoke-direct {p0}, Lcom/b/a/a/e;->d()V

    .line 30
    iget-object p1, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcom/b/a/a/c;

    invoke-direct {v1, p0, v0}, Lcom/b/a/a/c;-><init>(Lcom/b/a/a/e;I)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Lcom/b/a/a/c;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/b/a/a/c;->d()V

    return-void
.end method

.method private b(I)V
    .locals 3

    .line 157
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->d()Lcom/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v1, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    if-eqz v1, :cond_3

    const-string v1, "SurfaceListener"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onAnimationFinish on "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-interface {p1, p0}, Lcom/b/a/k;->c(Lcom/b/a/a/e;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onAnimationComplete on "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-interface {p1, p0}, Lcom/b/a/k;->b(Lcom/b/a/a/e;)V

    goto :goto_0

    .line 162
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onAnimationStart on "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, v0, Lcom/b/a/e;->a:Lcom/b/a/k;

    invoke-interface {p1, p0}, Lcom/b/a/k;->a(Lcom/b/a/a/e;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic b(Lcom/b/a/a/c;)V
    .locals 1

    .line 124
    iget v0, p0, Lcom/b/a/a/e;->i:I

    int-to-float v0, v0

    iget p0, p0, Lcom/b/a/a/e;->j:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/b/a/a/c;->a(F)V

    return-void
.end method

.method private static synthetic c(Lcom/b/a/a/c;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/b/a/a/c;->b()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 41
    iget v0, p0, Lcom/b/a/a/e;->j:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/b/a/a/e;->j:I

    return-void
.end method

.method private synthetic d(Lcom/b/a/a/c;)V
    .locals 4

    .line 99
    iget-wide v0, p0, Lcom/b/a/a/e;->e:J

    invoke-virtual {p1}, Lcom/b/a/a/c;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/e;->e:J

    return-void
.end method

.method public static synthetic lambda$0r82rxXMXqBv6jbljtNdkTESh-Q(Lcom/b/a/a/c;)V
    .locals 0

    invoke-static {p0}, Lcom/b/a/a/e;->c(Lcom/b/a/a/c;)V

    return-void
.end method

.method public static synthetic lambda$LmysiJgAgWlX4SySnezuoPDoFP0(Lcom/b/a/a/e;Lcom/b/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/e;->d(Lcom/b/a/a/c;)V

    return-void
.end method

.method public static synthetic lambda$qRJZYqrm_kkhdIKfvvLKWkcvAnA(Lcom/b/a/a/c;)V
    .locals 0

    invoke-static {p0}, Lcom/b/a/a/e;->a(Lcom/b/a/a/c;)V

    return-void
.end method

.method public static synthetic lambda$urz0deaNPxIS6_YTT3SiVoVX8C4(Lcom/b/a/a/e;Lcom/b/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/e;->b(Lcom/b/a/a/c;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/b/a/a/c;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public a(Lcom/b/a/a/j;)Lcom/b/a/a/e;
    .locals 2

    .line 53
    instance-of v0, p1, Lcom/b/a/a/c;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/b/a/a/c;

    .line 55
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    iget v1, p1, Lcom/b/a/a/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/b/a/n;->a(Z)V

    .line 56
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    iget v1, p1, Lcom/b/a/a/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/b/a/a/e;->a(I)Lcom/b/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/j;)Lcom/b/a/a/c;

    :goto_0
    return-object p0
.end method

.method public a(Z)Lcom/b/a/a/e;
    .locals 0

    return-object p0
.end method

.method public a()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/b/a/a/e;->c()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/b/a/a/e;->b:Z

    .line 99
    new-instance v1, Lcom/b/a/a/-$$Lambda$e$LmysiJgAgWlX4SySnezuoPDoFP0;

    invoke-direct {v1, p0}, Lcom/b/a/a/-$$Lambda$e$LmysiJgAgWlX4SySnezuoPDoFP0;-><init>(Lcom/b/a/a/e;)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/e;->a(Ljava/util/function/Consumer;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/b/a/a/e;->c:J

    const-wide/16 v1, 0x0

    .line 101
    iput-wide v1, p0, Lcom/b/a/a/e;->d:J

    .line 103
    sget-object v1, Lcom/b/a/a/-$$Lambda$e$0r82rxXMXqBv6jbljtNdkTESh-Q;->INSTANCE:Lcom/b/a/a/-$$Lambda$e$0r82rxXMXqBv6jbljtNdkTESh-Q;

    invoke-virtual {p0, v1}, Lcom/b/a/a/e;->a(Ljava/util/function/Consumer;)V

    .line 105
    iput-boolean v0, p0, Lcom/b/a/a/e;->h:Z

    .line 107
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/c;->c()Lcom/b/a/j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/b/a/j;->a(Lcom/b/a/a/e;)V

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/b/a/a/e;->g:Z

    .line 110
    invoke-direct {p0, v0}, Lcom/b/a/a/e;->b(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/b/a/a/e;->e:J

    long-to-float p1, p1

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 35
    iput p1, p0, Lcom/b/a/a/e;->j:I

    .line 36
    invoke-direct {p0}, Lcom/b/a/a/e;->d()V

    return-void
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/b/a/a/c;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/b/a/a/e;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/c;

    .line 116
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .line 121
    iget-boolean v0, p0, Lcom/b/a/a/e;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a/a/e;->h:Z

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    iget-wide v2, p0, Lcom/b/a/a/e;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/b/a/a/e;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/e;->d:J

    .line 124
    new-instance v0, Lcom/b/a/a/-$$Lambda$e$urz0deaNPxIS6_YTT3SiVoVX8C4;

    invoke-direct {v0, p0}, Lcom/b/a/a/-$$Lambda$e$urz0deaNPxIS6_YTT3SiVoVX8C4;-><init>(Lcom/b/a/a/e;)V

    invoke-virtual {p0, v0}, Lcom/b/a/a/e;->a(Ljava/util/function/Consumer;)V

    .line 126
    iget v0, p0, Lcom/b/a/a/e;->i:I

    iget v1, p0, Lcom/b/a/a/e;->j:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iput-boolean v2, p0, Lcom/b/a/a/e;->h:Z

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 138
    iput v0, p0, Lcom/b/a/a/e;->i:I

    .line 141
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/b/a/a/e;->h:Z

    return p0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/b/a/a/e;->i:I

    .line 146
    iget-boolean v1, p0, Lcom/b/a/a/e;->g:Z

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/b/a/a/-$$Lambda$e$qRJZYqrm_kkhdIKfvvLKWkcvAnA;->INSTANCE:Lcom/b/a/a/-$$Lambda$e$qRJZYqrm_kkhdIKfvvLKWkcvAnA;

    invoke-virtual {p0, v1}, Lcom/b/a/a/e;->a(Ljava/util/function/Consumer;)V

    .line 148
    iput-boolean v0, p0, Lcom/b/a/a/e;->g:Z

    const/4 v0, 0x2

    .line 149
    invoke-direct {p0, v0}, Lcom/b/a/a/e;->b(I)V

    .line 151
    :cond_0
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lcom/b/a/c;->a()Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->c()Lcom/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/j;->b(Lcom/b/a/a/e;)V

    :cond_1
    return-void
.end method

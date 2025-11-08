.class public Lorg/andresoviedo/android_3d_model_engine/b/c;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field private final o:Lorg/andresoviedo/android_3d_model_engine/b/b;

.field private final p:Lorg/andresoviedo/android_3d_model_engine/b/b;

.field private q:[F

.field private r:J

.field private s:[Ljava/lang/Object;

.field private t:Z

.field private u:[F

.field private v:[F


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v9}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e900000    # -15.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const v10, -0x42333333    # -0.1f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3dcccccd    # 0.1f

    const v13, -0x42333333    # -0.1f

    move-object v0, p0

    .line 47
    invoke-direct/range {v0 .. v13}, Lorg/andresoviedo/android_3d_model_engine/b/c;-><init>(FFFFFFFFFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v9, Lorg/andresoviedo/android_3d_model_engine/b/b;

    const-string v2, "scene"

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, -0x41000000    # -0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/andresoviedo/android_3d_model_engine/b/b;-><init>(Ljava/lang/String;FFFFFF)V

    iput-object v9, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->o:Lorg/andresoviedo/android_3d_model_engine/b/b;

    .line 18
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/b;

    const-string v11, "scene"

    const/high16 v12, -0x3d380000    # -100.0f

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v14, -0x3d380000    # -100.0f

    const/high16 v15, 0x42c80000    # 100.0f

    const/high16 v16, -0x3d380000    # -100.0f

    const/high16 v17, 0x42c80000    # 100.0f

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/andresoviedo/android_3d_model_engine/b/b;-><init>(Ljava/lang/String;FFFFFF)V

    iput-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->p:Lorg/andresoviedo/android_3d_model_engine/b/b;

    const/16 v1, 0x38

    .line 21
    new-array v1, v1, [F

    iput-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->q:[F

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->t:Z

    const/16 v2, 0x10

    .line 27
    new-array v2, v2, [F

    iput-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->u:[F

    const/4 v2, 0x0

    .line 29
    iput-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->v:[F

    move/from16 v2, p1

    .line 55
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    move/from16 v2, p2

    .line 56
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    move/from16 v2, p3

    .line 57
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    move/from16 v2, p4

    .line 58
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->d:F

    move/from16 v2, p5

    .line 59
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->e:F

    move/from16 v2, p6

    .line 60
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->f:F

    move/from16 v2, p7

    .line 61
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->g:F

    move/from16 v2, p8

    .line 62
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->h:F

    move/from16 v2, p9

    .line 63
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->i:F

    move/from16 v2, p10

    .line 64
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->j:F

    move/from16 v2, p11

    .line 65
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->k:F

    move/from16 v2, p12

    .line 66
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->m:F

    move/from16 v2, p13

    .line 67
    iput v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->l:F

    .line 68
    iput v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->n:I

    return-void
.end method

.method private a(FF)V
    .locals 0

    return-void
.end method

.method private b(F)V
    .locals 0

    return-void
.end method

.method private c(F)V
    .locals 0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(F)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/b/c;->b(F)V

    const/4 v0, 0x2

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zoom"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->t:Z

    return-void
.end method

.method public a()[F
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->q:[F

    return-object p0
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "translate"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    .line 83
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 84
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 85
    iget-wide v4, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J

    long-to-float v2, v4

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    iget-wide v4, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J

    long-to-float v2, v4

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(FF)V

    goto :goto_0

    :cond_1
    const-string v1, "rotate"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v3

    .line 88
    iget-wide v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/b/c;->c(F)V

    .line 90
    :cond_2
    :goto_0
    iget-wide v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 77
    :try_start_1
    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->s:[Ljava/lang/Object;

    const-wide/16 v0, 0x64

    .line 78
    iput-wide v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 0

    .line 327
    iget-boolean p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->t:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera [xPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->i:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

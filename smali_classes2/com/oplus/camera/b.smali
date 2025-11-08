.class public Lcom/oplus/camera/b;
.super Ljava/lang/Object;
.source "AISSnapshotManager.java"

# interfaces
.implements Lcom/oplus/camera/d;


# instance fields
.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lcom/oplus/camera/capmode/a;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/capmode/a;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/b;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/oplus/camera/b;->h:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/oplus/camera/b;->i:I

    .line 39
    iput v1, p0, Lcom/oplus/camera/b;->j:I

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    .line 41
    iput v1, p0, Lcom/oplus/camera/b;->l:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/b;->m:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/b;->n:I

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    if-nez p0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->b(Z)V

    return-void
.end method

.method private h()I
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/oplus/camera/b;->h:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 54
    :cond_0
    iget p0, p0, Lcom/oplus/camera/b;->i:I

    return p0
.end method


# virtual methods
.method public a(III)V
    .locals 1

    .line 68
    iput p2, p0, Lcom/oplus/camera/b;->j:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 69
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/b;->g:Z

    if-ne v0, p3, :cond_1

    move p2, v0

    .line 70
    :cond_1
    iput-boolean p2, p0, Lcom/oplus/camera/b;->h:Z

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAISStatus, mbAisNeeded: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/b;->g:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mAISMotionType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/b;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", onSODStatusCheck: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p0}, Lcom/oplus/camera/b;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mbAISWithinTriggered: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/b;->h:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISSnapshotManager"

    .line 72
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 78
    :try_start_0
    sget-object v0, Lcom/oplus/camera/e/b;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 80
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 81
    aget v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/b;->i:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcom/oplus/camera/b;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/b;->g()V

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSODStatus, mSODMovementLevel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/b;->i:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISSnapshotManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-boolean v0, p0, Lcom/oplus/camera/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/b;->j:I

    if-lt v2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/b;->h()I

    move-result p0

    if-ge v2, p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->s()Z

    move-result v0

    if-nez v0, :cond_6

    .line 61
    iget-boolean v0, p0, Lcom/oplus/camera/b;->g:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/b;->j:I

    if-gtz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/b;->h()I

    move-result p0

    if-lez p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public a([Ljava/lang/String;F)Z
    .locals 8

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    .line 161
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_8

    .line 162
    aget-object v2, p1, v0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 164
    array-length v4, v2

    if-ne v3, v4, :cond_7

    aget-object v3, v2, p0

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    aget-object v4, v2, v3

    .line 166
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    .line 172
    :cond_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 173
    aget-object v5, v2, p0

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 174
    aget-object v6, v2, v3

    invoke-virtual {v6, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 175
    aget-object v6, v2, p0

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-ltz v5, :cond_2

    :goto_1
    move v5, v3

    goto :goto_2

    .line 176
    :cond_1
    aget-object v6, v2, p0

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, p0

    .line 177
    :goto_2
    aget-object v6, v2, v3

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_4

    :goto_3
    move v2, v3

    goto :goto_4

    .line 178
    :cond_3
    aget-object v2, v2, v3

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, p0

    :goto_4
    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v3, p0

    :cond_6
    :goto_5
    move v1, v3

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    return v1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/oplus/camera/b;->g:Z

    .line 103
    iput-boolean v0, p0, Lcom/oplus/camera/b;->h:Z

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/oplus/camera/b;->i:I

    .line 105
    iput v1, p0, Lcom/oplus/camera/b;->j:I

    .line 106
    iput v1, p0, Lcom/oplus/camera/b;->l:I

    .line 107
    iput v0, p0, Lcom/oplus/camera/b;->m:I

    .line 108
    iput v0, p0, Lcom/oplus/camera/b;->n:I

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "AISSnapshotManager"

    const-string v1, "onPause"

    .line 112
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/oplus/camera/b;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AISSnapshotManager"

    const-string v1, "onDestroy"

    .line 118
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/oplus/camera/b;->b()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    return-void
.end method

.method public e()Z
    .locals 4

    const-string v0, "AISSnapshotManager"

    const-string v1, "makeAISDecision"

    .line 125
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->p()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/b;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 134
    invoke-direct {p0, v2}, Lcom/oplus/camera/b;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 136
    iget v3, p0, Lcom/oplus/camera/b;->j:I

    if-le v0, v3, :cond_2

    move v2, v1

    :cond_2
    invoke-direct {p0, v2}, Lcom/oplus/camera/b;->a(Z)V

    :goto_0
    return v1

    :cond_3
    :goto_1
    const-string p0, "makeAISDecision, not support"

    .line 128
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public f()I
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/b;->h()I

    move-result v0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/b;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/b;->j:I

    if-ge v2, v0, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/b;->h()I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/b;->g:Z

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/oplus/camera/b;->j:I

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    const/16 p0, 0xb

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public g()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/oplus/camera/b;->f()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->q()Z

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->r()Z

    move-result v2

    .line 191
    iget v3, p0, Lcom/oplus/camera/b;->l:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/oplus/camera/b;->m:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/oplus/camera/b;->n:I

    if-eq v2, v3, :cond_1

    .line 194
    :cond_0
    iput v0, p0, Lcom/oplus/camera/b;->l:I

    .line 195
    iput v1, p0, Lcom/oplus/camera/b;->m:I

    .line 196
    iput v2, p0, Lcom/oplus/camera/b;->n:I

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/b;->k:Lcom/oplus/camera/capmode/a;

    iget v1, p0, Lcom/oplus/camera/b;->l:I

    iget v2, p0, Lcom/oplus/camera/b;->m:I

    iget p0, p0, Lcom/oplus/camera/b;->n:I

    invoke-interface {v0, v1, v2, p0}, Lcom/oplus/camera/capmode/a;->a(III)V

    :cond_1
    return-void
.end method

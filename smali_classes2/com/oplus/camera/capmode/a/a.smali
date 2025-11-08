.class public Lcom/oplus/camera/capmode/a/a;
.super Ljava/lang/Object;
.source "MultiCameraDecision.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->a:I

    const/4 v1, 0x1

    .line 26
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->b:I

    .line 27
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->c:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->d:I

    .line 29
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->e:I

    .line 30
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->f:I

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->g:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->h:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->i:Ljava/lang/String;

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    .line 35
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->k:I

    .line 36
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    .line 37
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->m:I

    .line 38
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->n:I

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->o:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->p:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/a/a;->q:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->a:I

    const/4 v1, 0x1

    .line 26
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->b:I

    .line 27
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->c:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->d:I

    .line 29
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->e:I

    .line 30
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->f:I

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->g:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->h:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->i:Ljava/lang/String;

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    .line 35
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->k:I

    .line 36
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    .line 37
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->m:I

    .line 38
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->n:I

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->o:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/oplus/camera/capmode/a/a;->p:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/a/a;->q:Z

    .line 48
    iput p1, p0, Lcom/oplus/camera/capmode/a/a;->a:I

    .line 49
    iput p2, p0, Lcom/oplus/camera/capmode/a/a;->b:I

    .line 50
    iput p3, p0, Lcom/oplus/camera/capmode/a/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/capmode/a/a;
    .locals 2

    .line 160
    iget v0, p0, Lcom/oplus/camera/capmode/a/a;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    .line 163
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(I)Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 128
    iput p1, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/oplus/camera/capmode/a/a;
    .locals 2

    .line 100
    iput-object p1, p0, Lcom/oplus/camera/capmode/a/a;->g:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeforeModeName, beforeModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiCameraDecision"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/a/a;->q:Z

    return-object p0
.end method

.method public b()Lcom/oplus/camera/capmode/a/a;
    .locals 2

    .line 183
    iget v0, p0, Lcom/oplus/camera/capmode/a/a;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    .line 186
    iput v1, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public b(I)Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 137
    iput p1, p0, Lcom/oplus/camera/capmode/a/a;->k:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/oplus/camera/capmode/a/a;
    .locals 2

    .line 112
    iput-object p1, p0, Lcom/oplus/camera/capmode/a/a;->h:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAfterModeName, afterModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiCameraDecision"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(I)Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 146
    iput p1, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 233
    iput-object p1, p0, Lcom/oplus/camera/capmode/a/a;->i:Ljava/lang/String;

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentModeName, currentModeName: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiCameraDecision"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/capmode/a/a;->g:Ljava/lang/String;

    const-string v1, "multiCamera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 204
    iget v0, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    iget v3, p0, Lcom/oplus/camera/capmode/a/a;->k:I

    if-ne v0, v3, :cond_0

    const/4 v0, -0x1

    iget v3, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    if-eq v0, v3, :cond_1

    :cond_0
    return v2

    .line 209
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public d(I)Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 155
    iput p1, p0, Lcom/oplus/camera/capmode/a/a;->m:I

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/oplus/camera/capmode/a/a;->g:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/oplus/camera/capmode/a/a;->i:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/oplus/camera/capmode/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/oplus/camera/capmode/a/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)V
    .locals 1

    .line 245
    iput p1, p0, Lcom/oplus/camera/capmode/a/a;->n:I

    .line 246
    invoke-static {p1}, Lcom/oplus/camera/e/a;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rear_main_front_main"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "rear_main"

    .line 249
    iput-object p1, p0, Lcom/oplus/camera/capmode/a/a;->o:Ljava/lang/String;

    const-string p1, "front_main"

    .line 250
    iput-object p1, p0, Lcom/oplus/camera/capmode/a/a;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiCameraDecision{mFirstCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBottomCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMainLogicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubLogicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeModeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAfterModeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentModeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMainBeforeLogicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMainAfterLogicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubBeforeLogicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubAfterLogicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/a/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMainCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

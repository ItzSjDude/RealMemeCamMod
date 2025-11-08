.class public abstract Lcom/oplus/camera/timelapsepro/a/e;
.super Ljava/lang/Object;
.source "ProParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/a/e$a;,
        Lcom/oplus/camera/timelapsepro/a/e$b;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/res/Resources;

.field protected final b:I

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/oplus/camera/timelapsepro/a/e$b;

.field private m:Lcom/oplus/camera/timelapsepro/a/e$a;

.field private n:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->g:J

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/oplus/camera/timelapsepro/a/e;->e:I

    .line 31
    iput v2, p0, Lcom/oplus/camera/timelapsepro/a/e;->h:I

    .line 32
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/a/e;->i:Z

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/a/e;->j:Z

    .line 34
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/a/e;->k:Z

    .line 39
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->n:J

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/a/e;->f:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/oplus/camera/timelapsepro/a/e;->b:I

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->a:Landroid/content/res/Resources;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->c:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/a/e;Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/a/e;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 122
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->l:Lcom/oplus/camera/timelapsepro/a/e$b;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/timelapsepro/a/e;->g:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->h:I

    if-eq v0, p1, :cond_0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->g:J

    .line 128
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->h:I

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->l:Lcom/oplus/camera/timelapsepro/a/e$b;

    iget p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->b:I

    invoke-interface {v0, p0, p1}, Lcom/oplus/camera/timelapsepro/a/e$b;->onValueChange(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/a/e$a;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnUpdateCallback, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onUpdateCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProParameter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->m:Lcom/oplus/camera/timelapsepro/a/e$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/a/e$b;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValueChangedCallback, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProParameter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->l:Lcom/oplus/camera/timelapsepro/a/e$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->j:Z

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->k:Z

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/a/e;->d(Z)V

    return-void
.end method

.method public abstract c()I
.end method

.method public c(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/a/e;->i:Z

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/a/e;->d(Z)V

    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public d(Z)V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->m:Lcom/oplus/camera/timelapsepro/a/e$a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/timelapsepro/a/e;->n:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->n:J

    .line 190
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->m:Lcom/oplus/camera/timelapsepro/a/e$a;

    invoke-interface {p0}, Lcom/oplus/camera/timelapsepro/a/e$a;->a()V

    :cond_2
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->j:Z

    return p0
.end method

.method public h()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->k:Z

    return p0
.end method

.method public i()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->i:Z

    return p0
.end method

.method public j()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->c:Ljava/util/List;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->d:Ljava/util/List;

    return-object p0
.end method

.method public l()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public n()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->e:I

    return p0
.end method

.method public o()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/camera/timelapsepro/a/g;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/e;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    new-instance v3, Lcom/oplus/camera/timelapsepro/a/e$1;

    invoke-direct {v3, p0, v2}, Lcom/oplus/camera/timelapsepro/a/e$1;-><init>(Lcom/oplus/camera/timelapsepro/a/e;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected p()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->d(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProParameter{mPreKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mValueList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNameList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/a/e;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbAuto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/a/e;->j:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

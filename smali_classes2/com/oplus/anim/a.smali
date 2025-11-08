.class public Lcom/oplus/anim/a;
.super Ljava/lang/Object;
.source "EffectiveAnimationComposition.java"


# instance fields
.field private final a:Lcom/oplus/anim/m;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/c/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/oplus/anim/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Rect;

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/oplus/anim/m;

    invoke-direct {v0}, Lcom/oplus/anim/m;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/a;->a:Lcom/oplus/anim/m;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/a;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/oplus/anim/a;->o:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 59
    iput v0, p0, Lcom/oplus/anim/a;->p:F

    return-void
.end method


# virtual methods
.method public a(J)Lcom/oplus/anim/c/c/d;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/oplus/anim/a;->h:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/c/c/d;

    return-object p0
.end method

.method public a(I)V
    .locals 1

    .line 90
    iget v0, p0, Lcom/oplus/anim/a;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/anim/a;->o:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/c/d;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/oplus/anim/c/c/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/c/d;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/h;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/c/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/c/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/h;",
            ">;F)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/oplus/anim/a;->j:Landroid/graphics/Rect;

    .line 67
    iput p2, p0, Lcom/oplus/anim/a;->k:F

    .line 68
    iput p3, p0, Lcom/oplus/anim/a;->l:F

    .line 69
    iput p4, p0, Lcom/oplus/anim/a;->m:F

    .line 70
    iput-object p5, p0, Lcom/oplus/anim/a;->i:Ljava/util/List;

    .line 71
    iput-object p6, p0, Lcom/oplus/anim/a;->h:Landroid/util/LongSparseArray;

    .line 72
    iput-object p7, p0, Lcom/oplus/anim/a;->c:Ljava/util/Map;

    .line 73
    iput-object p8, p0, Lcom/oplus/anim/a;->d:Ljava/util/Map;

    .line 74
    iput-object p9, p0, Lcom/oplus/anim/a;->g:Landroidx/collection/SparseArrayCompat;

    .line 75
    iput-object p10, p0, Lcom/oplus/anim/a;->e:Ljava/util/Map;

    .line 76
    iput-object p11, p0, Lcom/oplus/anim/a;->f:Ljava/util/List;

    .line 77
    iput p12, p0, Lcom/oplus/anim/a;->p:F

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EffectiveAnimation"

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/oplus/anim/a;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/oplus/anim/a;->n:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/oplus/anim/a;->n:Z

    return p0
.end method

.method public b()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/oplus/anim/a;->o:I

    return p0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/c/d;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/oplus/anim/a;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oplus/anim/a;->a:Lcom/oplus/anim/m;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/m;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/oplus/anim/c/h;
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/oplus/anim/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/oplus/anim/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/c/h;

    .line 172
    iget-object v2, v1, Lcom/oplus/anim/c/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Lcom/oplus/anim/m;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oplus/anim/a;->a:Lcom/oplus/anim/m;

    return-object p0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/oplus/anim/a;->j:Landroid/graphics/Rect;

    return-object p0
.end method

.method public e()F
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/oplus/anim/a;->m()F

    move-result v0

    iget p0, p0, Lcom/oplus/anim/a;->m:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public f()F
    .locals 0

    .line 135
    iget p0, p0, Lcom/oplus/anim/a;->k:F

    return p0
.end method

.method public g()F
    .locals 0

    .line 139
    iget p0, p0, Lcom/oplus/anim/a;->l:F

    return p0
.end method

.method public h()F
    .locals 0

    .line 143
    iget p0, p0, Lcom/oplus/anim/a;->m:F

    return p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/c/d;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/oplus/anim/a;->i:Ljava/util/List;

    return-object p0
.end method

.method public j()Landroidx/collection/SparseArrayCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/c/e;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/oplus/anim/a;->g:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public k()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/c/d;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/oplus/anim/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public l()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/h;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/oplus/anim/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public m()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/oplus/anim/a;->l:F

    iget p0, p0, Lcom/oplus/anim/a;->k:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public n()F
    .locals 0

    .line 194
    iget p0, p0, Lcom/oplus/anim/a;->p:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveAnimationComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/oplus/anim/a;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/c/c/d;

    const-string v2, "\t"

    .line 201
    invoke-virtual {v1, v2}, Lcom/oplus/anim/c/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

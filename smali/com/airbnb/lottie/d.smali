.class public Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# instance fields
.field private final a:Lcom/airbnb/lottie/n;

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
            "Lcom/airbnb/lottie/c/c/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/airbnb/lottie/n;

    invoke-direct {v0}, Lcom/airbnb/lottie/n;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/airbnb/lottie/d;->o:I

    return-void
.end method


# virtual methods
.method public a(J)Lcom/airbnb/lottie/c/c/d;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/airbnb/lottie/d;->h:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/c/c/d;

    return-object p0
.end method

.method public a(I)V
    .locals 1

    .line 98
    iget v0, p0, Lcom/airbnb/lottie/d;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/d;->o:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/c/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/c/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/h;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    .line 73
    iput p2, p0, Lcom/airbnb/lottie/d;->k:F

    .line 74
    iput p3, p0, Lcom/airbnb/lottie/d;->l:F

    .line 75
    iput p4, p0, Lcom/airbnb/lottie/d;->m:F

    .line 76
    iput-object p5, p0, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    .line 77
    iput-object p6, p0, Lcom/airbnb/lottie/d;->h:Landroidx/collection/LongSparseArray;

    .line 78
    iput-object p7, p0, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    .line 79
    iput-object p8, p0, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    .line 80
    iput-object p9, p0, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    .line 81
    iput-object p10, p0, Lcom/airbnb/lottie/d;->e:Ljava/util/Map;

    .line 82
    iput-object p11, p0, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/airbnb/lottie/f/d;->b(Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/airbnb/lottie/d;->n:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/airbnb/lottie/d;->n:Z

    return p0
.end method

.method public b()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/airbnb/lottie/d;->o:I

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
            "Lcom/airbnb/lottie/c/c/d;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/airbnb/lottie/c/h;
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 180
    iget-object v2, p0, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/c/h;

    .line 181
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/c/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Lcom/airbnb/lottie/n;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n;

    return-object p0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    return-object p0
.end method

.method public e()F
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->m()F

    move-result v0

    iget p0, p0, Lcom/airbnb/lottie/d;->m:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public f()F
    .locals 0

    .line 143
    iget p0, p0, Lcom/airbnb/lottie/d;->k:F

    return p0
.end method

.method public g()F
    .locals 0

    .line 147
    iget p0, p0, Lcom/airbnb/lottie/d;->l:F

    return p0
.end method

.method public h()F
    .locals 0

    .line 151
    iget p0, p0, Lcom/airbnb/lottie/d;->m:F

    return p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    return-object p0
.end method

.method public j()Landroidx/collection/SparseArrayCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/c/d;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public k()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/c/c;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/airbnb/lottie/d;->e:Ljava/util/Map;

    return-object p0
.end method

.method public l()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    return-object p0
.end method

.method public m()F
    .locals 1

    .line 197
    iget v0, p0, Lcom/airbnb/lottie/d;->l:F

    iget p0, p0, Lcom/airbnb/lottie/d;->k:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/c/c/d;

    const-string v2, "\t"

    .line 204
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/c/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

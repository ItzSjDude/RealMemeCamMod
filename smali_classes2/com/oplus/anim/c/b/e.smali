.class public Lcom/oplus/anim/c/b/e;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/oplus/anim/c/b/f;

.field private final c:Lcom/oplus/anim/c/a/c;

.field private final d:Lcom/oplus/anim/c/a/d;

.field private final e:Lcom/oplus/anim/c/a/f;

.field private final f:Lcom/oplus/anim/c/a/f;

.field private final g:Lcom/oplus/anim/c/a/b;

.field private final h:Lcom/oplus/anim/c/b/p$a;

.field private final i:Lcom/oplus/anim/c/b/p$b;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/oplus/anim/c/a/b;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/c/b/f;Lcom/oplus/anim/c/a/c;Lcom/oplus/anim/c/a/d;Lcom/oplus/anim/c/a/f;Lcom/oplus/anim/c/a/f;Lcom/oplus/anim/c/a/b;Lcom/oplus/anim/c/b/p$a;Lcom/oplus/anim/c/b/p$b;FLjava/util/List;Lcom/oplus/anim/c/a/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/c/b/f;",
            "Lcom/oplus/anim/c/a/c;",
            "Lcom/oplus/anim/c/a/d;",
            "Lcom/oplus/anim/c/a/f;",
            "Lcom/oplus/anim/c/a/f;",
            "Lcom/oplus/anim/c/a/b;",
            "Lcom/oplus/anim/c/b/p$a;",
            "Lcom/oplus/anim/c/b/p$b;",
            "F",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/a/b;",
            ">;",
            "Lcom/oplus/anim/c/a/b;",
            "Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oplus/anim/c/b/e;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/oplus/anim/c/b/e;->b:Lcom/oplus/anim/c/b/f;

    .line 43
    iput-object p3, p0, Lcom/oplus/anim/c/b/e;->c:Lcom/oplus/anim/c/a/c;

    .line 44
    iput-object p4, p0, Lcom/oplus/anim/c/b/e;->d:Lcom/oplus/anim/c/a/d;

    .line 45
    iput-object p5, p0, Lcom/oplus/anim/c/b/e;->e:Lcom/oplus/anim/c/a/f;

    .line 46
    iput-object p6, p0, Lcom/oplus/anim/c/b/e;->f:Lcom/oplus/anim/c/a/f;

    .line 47
    iput-object p7, p0, Lcom/oplus/anim/c/b/e;->g:Lcom/oplus/anim/c/a/b;

    .line 48
    iput-object p8, p0, Lcom/oplus/anim/c/b/e;->h:Lcom/oplus/anim/c/b/p$a;

    .line 49
    iput-object p9, p0, Lcom/oplus/anim/c/b/e;->i:Lcom/oplus/anim/c/b/p$b;

    .line 50
    iput p10, p0, Lcom/oplus/anim/c/b/e;->j:F

    .line 51
    iput-object p11, p0, Lcom/oplus/anim/c/b/e;->k:Ljava/util/List;

    .line 52
    iput-object p12, p0, Lcom/oplus/anim/c/b/e;->l:Lcom/oplus/anim/c/a/b;

    .line 53
    iput-boolean p13, p0, Lcom/oplus/anim/c/b/e;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;)Lcom/oplus/anim/a/a/c;
    .locals 2

    .line 111
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientStroke to GradientStrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 114
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/i;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/i;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/e;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/b/f;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->b:Lcom/oplus/anim/c/b/f;

    return-object p0
.end method

.method public c()Lcom/oplus/anim/c/a/c;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->c:Lcom/oplus/anim/c/a/c;

    return-object p0
.end method

.method public d()Lcom/oplus/anim/c/a/d;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->d:Lcom/oplus/anim/c/a/d;

    return-object p0
.end method

.method public e()Lcom/oplus/anim/c/a/f;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->e:Lcom/oplus/anim/c/a/f;

    return-object p0
.end method

.method public f()Lcom/oplus/anim/c/a/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->f:Lcom/oplus/anim/c/a/f;

    return-object p0
.end method

.method public g()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->g:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public h()Lcom/oplus/anim/c/b/p$a;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->h:Lcom/oplus/anim/c/b/p$a;

    return-object p0
.end method

.method public i()Lcom/oplus/anim/c/b/p$b;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->i:Lcom/oplus/anim/c/b/p$b;

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/a/b;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->k:Ljava/util/List;

    return-object p0
.end method

.method public k()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/anim/c/b/e;->l:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public l()F
    .locals 0

    .line 102
    iget p0, p0, Lcom/oplus/anim/c/b/e;->j:F

    return p0
.end method

.method public m()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/e;->m:Z

    return p0
.end method

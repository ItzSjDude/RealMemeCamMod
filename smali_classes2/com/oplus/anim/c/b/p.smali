.class public Lcom/oplus/anim/c/b/p;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/c/b/p$b;,
        Lcom/oplus/anim/c/b/p$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/oplus/anim/c/a/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/oplus/anim/c/a/a;

.field private final e:Lcom/oplus/anim/c/a/d;

.field private final f:Lcom/oplus/anim/c/a/b;

.field private final g:Lcom/oplus/anim/c/b/p$a;

.field private final h:Lcom/oplus/anim/c/b/p$b;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/c/a/b;Ljava/util/List;Lcom/oplus/anim/c/a/a;Lcom/oplus/anim/c/a/d;Lcom/oplus/anim/c/a/b;Lcom/oplus/anim/c/b/p$a;Lcom/oplus/anim/c/b/p$b;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/c/a/b;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/a/b;",
            ">;",
            "Lcom/oplus/anim/c/a/a;",
            "Lcom/oplus/anim/c/a/d;",
            "Lcom/oplus/anim/c/a/b;",
            "Lcom/oplus/anim/c/b/p$a;",
            "Lcom/oplus/anim/c/b/p$b;",
            "FZ)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oplus/anim/c/b/p;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/oplus/anim/c/b/p;->b:Lcom/oplus/anim/c/a/b;

    .line 36
    iput-object p3, p0, Lcom/oplus/anim/c/b/p;->c:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/oplus/anim/c/b/p;->d:Lcom/oplus/anim/c/a/a;

    .line 38
    iput-object p5, p0, Lcom/oplus/anim/c/b/p;->e:Lcom/oplus/anim/c/a/d;

    .line 39
    iput-object p6, p0, Lcom/oplus/anim/c/b/p;->f:Lcom/oplus/anim/c/a/b;

    .line 40
    iput-object p7, p0, Lcom/oplus/anim/c/b/p;->g:Lcom/oplus/anim/c/b/p$a;

    .line 41
    iput-object p8, p0, Lcom/oplus/anim/c/b/p;->h:Lcom/oplus/anim/c/b/p$b;

    .line 42
    iput p9, p0, Lcom/oplus/anim/c/b/p;->i:F

    .line 43
    iput-boolean p10, p0, Lcom/oplus/anim/c/b/p;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;)Lcom/oplus/anim/a/a/c;
    .locals 2

    .line 48
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeStroke to StrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/r;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/r;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/p;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/a/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->d:Lcom/oplus/anim/c/a/a;

    return-object p0
.end method

.method public c()Lcom/oplus/anim/c/a/d;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->e:Lcom/oplus/anim/c/a/d;

    return-object p0
.end method

.method public d()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->f:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/a/b;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->c:Ljava/util/List;

    return-object p0
.end method

.method public f()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->b:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public g()Lcom/oplus/anim/c/b/p$a;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->g:Lcom/oplus/anim/c/b/p$a;

    return-object p0
.end method

.method public h()Lcom/oplus/anim/c/b/p$b;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oplus/anim/c/b/p;->h:Lcom/oplus/anim/c/b/p$b;

    return-object p0
.end method

.method public i()F
    .locals 0

    .line 87
    iget p0, p0, Lcom/oplus/anim/c/b/p;->i:F

    return p0
.end method

.method public j()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/p;->j:Z

    return p0
.end method

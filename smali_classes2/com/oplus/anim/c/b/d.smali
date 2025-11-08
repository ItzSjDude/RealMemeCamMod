.class public Lcom/oplus/anim/c/b/d;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# instance fields
.field private final a:Lcom/oplus/anim/c/b/f;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lcom/oplus/anim/c/a/c;

.field private final d:Lcom/oplus/anim/c/a/d;

.field private final e:Lcom/oplus/anim/c/a/f;

.field private final f:Lcom/oplus/anim/c/a/f;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/oplus/anim/c/a/b;

.field private final i:Lcom/oplus/anim/c/a/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/c/b/f;Landroid/graphics/Path$FillType;Lcom/oplus/anim/c/a/c;Lcom/oplus/anim/c/a/d;Lcom/oplus/anim/c/a/f;Lcom/oplus/anim/c/a/f;Lcom/oplus/anim/c/a/b;Lcom/oplus/anim/c/a/b;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/oplus/anim/c/b/d;->a:Lcom/oplus/anim/c/b/f;

    .line 38
    iput-object p3, p0, Lcom/oplus/anim/c/b/d;->b:Landroid/graphics/Path$FillType;

    .line 39
    iput-object p4, p0, Lcom/oplus/anim/c/b/d;->c:Lcom/oplus/anim/c/a/c;

    .line 40
    iput-object p5, p0, Lcom/oplus/anim/c/b/d;->d:Lcom/oplus/anim/c/a/d;

    .line 41
    iput-object p6, p0, Lcom/oplus/anim/c/b/d;->e:Lcom/oplus/anim/c/a/f;

    .line 42
    iput-object p7, p0, Lcom/oplus/anim/c/b/d;->f:Lcom/oplus/anim/c/a/f;

    .line 43
    iput-object p1, p0, Lcom/oplus/anim/c/b/d;->g:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/oplus/anim/c/b/d;->h:Lcom/oplus/anim/c/a/b;

    .line 45
    iput-object p9, p0, Lcom/oplus/anim/c/b/d;->i:Lcom/oplus/anim/c/a/b;

    .line 46
    iput-boolean p10, p0, Lcom/oplus/anim/c/b/d;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;)Lcom/oplus/anim/a/a/c;
    .locals 2

    .line 93
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientFill to GradientFillContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/h;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/h;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/d;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/b/f;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->a:Lcom/oplus/anim/c/b/f;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Lcom/oplus/anim/c/a/c;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->c:Lcom/oplus/anim/c/a/c;

    return-object p0
.end method

.method public e()Lcom/oplus/anim/c/a/d;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->d:Lcom/oplus/anim/c/a/d;

    return-object p0
.end method

.method public f()Lcom/oplus/anim/c/a/f;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->e:Lcom/oplus/anim/c/a/f;

    return-object p0
.end method

.method public g()Lcom/oplus/anim/c/a/f;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/oplus/anim/c/b/d;->f:Lcom/oplus/anim/c/a/f;

    return-object p0
.end method

.method public h()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/d;->j:Z

    return p0
.end method

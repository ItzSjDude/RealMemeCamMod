.class public Lcom/oplus/anim/c/a/h;
.super Lcom/oplus/anim/c/a/n;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/c/a/n<",
        "Lcom/oplus/anim/c/b/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/g/c<",
            "Lcom/oplus/anim/c/b/l;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/oplus/anim/c/a/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/anim/a/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/a/b/a<",
            "Lcom/oplus/anim/c/b/l;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 21
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableShapeValue create ShapeKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/c/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 24
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/b/l;

    iget-object p0, p0, Lcom/oplus/anim/c/a/h;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/a/b/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->b()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

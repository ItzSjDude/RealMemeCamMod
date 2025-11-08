.class public Lcom/oplus/anim/c/a/b;
.super Lcom/oplus/anim/c/a/n;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/c/a/n<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/c/a/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/g/c<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 17
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
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 22
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableFloatValue create FloatKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 25
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/b/c;

    iget-object p0, p0, Lcom/oplus/anim/c/a/b;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/a/b/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 0

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->b()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 0

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

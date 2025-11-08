.class public Lcom/oplus/anim/c/a/j;
.super Lcom/oplus/anim/c/a/n;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/c/a/n<",
        "Lcom/oplus/anim/c/b;",
        "Lcom/oplus/anim/c/b;",
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
            "Lcom/oplus/anim/c/b;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/oplus/anim/c/a/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/oplus/anim/a/b/a;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/oplus/anim/c/a/j;->d()Lcom/oplus/anim/a/b/n;

    move-result-object p0

    return-object p0
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

.method public d()Lcom/oplus/anim/a/b/n;
    .locals 2

    .line 18
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTextFrame create TextKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/c/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 21
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/b/n;

    iget-object p0, p0, Lcom/oplus/anim/c/a/j;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/a/b/n;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

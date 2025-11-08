.class public Lcom/oplus/anim/c/a/g;
.super Lcom/oplus/anim/c/a/n;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/c/a/n<",
        "Lcom/oplus/anim/g/d;",
        "Lcom/oplus/anim/g/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/oplus/anim/g/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/oplus/anim/g/d;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/oplus/anim/c/a/g;-><init>(Lcom/oplus/anim/g/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/g/d;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/oplus/anim/c/a/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/g/c<",
            "Lcom/oplus/anim/g/d;",
            ">;>;)V"
        }
    .end annotation

    .line 22
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
            "Lcom/oplus/anim/g/d;",
            "Lcom/oplus/anim/g/d;",
            ">;"
        }
    .end annotation

    .line 27
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableScaleValue create ScaleKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/c/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 30
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/b/k;

    iget-object p0, p0, Lcom/oplus/anim/c/a/g;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/a/b/k;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->b()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/oplus/anim/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

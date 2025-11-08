.class public Lcom/oplus/anim/a/b/n;
.super Lcom/oplus/anim/a/b/f;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/a/b/f<",
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

    .line 10
    invoke-direct {p0, p1}, Lcom/oplus/anim/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/oplus/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/a/b/n;->b(Lcom/oplus/anim/g/c;F)Lcom/oplus/anim/c/b;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/oplus/anim/g/c;F)Lcom/oplus/anim/c/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/g/c<",
            "Lcom/oplus/anim/c/b;",
            ">;F)",
            "Lcom/oplus/anim/c/b;"
        }
    .end annotation

    .line 15
    iget-object p0, p1, Lcom/oplus/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/anim/c/b;

    return-object p0
.end method

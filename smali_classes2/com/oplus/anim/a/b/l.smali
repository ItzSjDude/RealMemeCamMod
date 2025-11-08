.class public Lcom/oplus/anim/a/b/l;
.super Lcom/oplus/anim/a/b/a;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/a/b/a<",
        "Lcom/oplus/anim/c/b/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/oplus/anim/c/b/l;

.field private final d:Landroid/graphics/Path;


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
    invoke-direct {p0, p1}, Lcom/oplus/anim/a/b/a;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Lcom/oplus/anim/c/b/l;

    invoke-direct {p1}, Lcom/oplus/anim/c/b/l;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/a/b/l;->c:Lcom/oplus/anim/c/b/l;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/a/b/l;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/oplus/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/a/b/l;->b(Lcom/oplus/anim/g/c;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/oplus/anim/g/c;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/g/c<",
            "Lcom/oplus/anim/c/b/l;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 21
    iget-object v0, p1, Lcom/oplus/anim/g/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/anim/c/b/l;

    .line 22
    iget-object p1, p1, Lcom/oplus/anim/g/c;->d:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/anim/c/b/l;

    .line 24
    iget-object v1, p0, Lcom/oplus/anim/a/b/l;->c:Lcom/oplus/anim/c/b/l;

    invoke-virtual {v1, v0, p1, p2}, Lcom/oplus/anim/c/b/l;->a(Lcom/oplus/anim/c/b/l;Lcom/oplus/anim/c/b/l;F)V

    .line 25
    iget-object p1, p0, Lcom/oplus/anim/a/b/l;->c:Lcom/oplus/anim/c/b/l;

    iget-object p2, p0, Lcom/oplus/anim/a/b/l;->d:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/oplus/anim/f/e;->a(Lcom/oplus/anim/c/b/l;Landroid/graphics/Path;)V

    .line 26
    iget-object p0, p0, Lcom/oplus/anim/a/b/l;->d:Landroid/graphics/Path;

    return-object p0
.end method

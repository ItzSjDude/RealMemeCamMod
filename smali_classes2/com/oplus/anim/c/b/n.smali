.class public Lcom/oplus/anim/c/b/n;
.super Ljava/lang/Object;
.source "ShapeGroup.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/b/b;",
            ">;Z)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oplus/anim/c/b/n;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/oplus/anim/c/b/n;->b:Ljava/util/List;

    .line 20
    iput-boolean p3, p0, Lcom/oplus/anim/c/b/n;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;)Lcom/oplus/anim/a/a/c;
    .locals 2

    .line 37
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeGroup to ContentGroup, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 40
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/d;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/d;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/n;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/anim/c/b/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/b/b;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/oplus/anim/c/b/n;->b:Ljava/util/List;

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/n;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/c/b/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/anim/c/b/n;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

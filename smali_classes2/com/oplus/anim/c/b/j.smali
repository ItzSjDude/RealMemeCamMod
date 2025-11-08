.class public Lcom/oplus/anim/c/b/j;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/oplus/anim/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/oplus/anim/c/a/f;

.field private final d:Lcom/oplus/anim/c/a/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/c/a/m;Lcom/oplus/anim/c/a/f;Lcom/oplus/anim/c/a/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/c/a/f;",
            "Lcom/oplus/anim/c/a/b;",
            "Z)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oplus/anim/c/b/j;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oplus/anim/c/b/j;->b:Lcom/oplus/anim/c/a/m;

    .line 25
    iput-object p3, p0, Lcom/oplus/anim/c/b/j;->c:Lcom/oplus/anim/c/a/f;

    .line 26
    iput-object p4, p0, Lcom/oplus/anim/c/b/j;->d:Lcom/oplus/anim/c/a/b;

    .line 27
    iput-boolean p5, p0, Lcom/oplus/anim/c/b/j;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;)Lcom/oplus/anim/a/a/c;
    .locals 2

    .line 52
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape to RectangleContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/o;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/o;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/j;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/anim/c/b/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/anim/c/b/j;->d:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public c()Lcom/oplus/anim/c/a/f;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/anim/c/b/j;->c:Lcom/oplus/anim/c/a/f;

    return-object p0
.end method

.method public d()Lcom/oplus/anim/c/a/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/oplus/anim/c/b/j;->b:Lcom/oplus/anim/c/a/m;

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/j;->e:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/c/b/j;->b:Lcom/oplus/anim/c/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/anim/c/b/j;->c:Lcom/oplus/anim/c/a/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

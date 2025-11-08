.class public Lcom/oplus/anim/c/b/o;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/oplus/anim/c/a/h;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/oplus/anim/c/a/h;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oplus/anim/c/b/o;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/oplus/anim/c/b/o;->b:I

    .line 19
    iput-object p3, p0, Lcom/oplus/anim/c/b/o;->c:Lcom/oplus/anim/c/a/h;

    .line 20
    iput-boolean p4, p0, Lcom/oplus/anim/c/b/o;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;)Lcom/oplus/anim/a/a/c;
    .locals 2

    .line 33
    sget-boolean v0, Lcom/oplus/anim/f/f;->d:Z

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath to ShapeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 36
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/q;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/q;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/o;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/anim/c/b/o;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/a/h;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/anim/c/b/o;->c:Lcom/oplus/anim/c/a/h;

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/o;->d:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/c/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/anim/c/b/o;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

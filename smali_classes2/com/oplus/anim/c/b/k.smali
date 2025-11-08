.class public Lcom/oplus/anim/c/b/k;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/oplus/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/oplus/anim/c/a/b;

.field private final c:Lcom/oplus/anim/c/a/b;

.field private final d:Lcom/oplus/anim/c/a/l;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/c/a/b;Lcom/oplus/anim/c/a/b;Lcom/oplus/anim/c/a/l;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oplus/anim/c/b/k;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/oplus/anim/c/b/k;->b:Lcom/oplus/anim/c/a/b;

    .line 24
    iput-object p3, p0, Lcom/oplus/anim/c/b/k;->c:Lcom/oplus/anim/c/a/b;

    .line 25
    iput-object p4, p0, Lcom/oplus/anim/c/b/k;->d:Lcom/oplus/anim/c/a/l;

    .line 26
    iput-boolean p5, p0, Lcom/oplus/anim/c/b/k;->e:Z

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

    const-string v1, "Repeater to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/oplus/anim/a/a/p;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/a/a/p;-><init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/c/a;Lcom/oplus/anim/c/b/k;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/anim/c/b/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/anim/c/b/k;->b:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public c()Lcom/oplus/anim/c/a/b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/anim/c/b/k;->c:Lcom/oplus/anim/c/a/b;

    return-object p0
.end method

.method public d()Lcom/oplus/anim/c/a/l;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/anim/c/b/k;->d:Lcom/oplus/anim/c/a/l;

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/k;->e:Z

    return p0
.end method

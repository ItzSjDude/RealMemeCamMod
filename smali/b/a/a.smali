.class public Lb/a/a;
.super Lb/b/a;
.source "TestDecorator.java"

# interfaces
.implements Lb/b/d;


# instance fields
.field protected a:Lb/b/d;


# virtual methods
.method public a()I
    .locals 0

    .line 27
    iget-object p0, p0, Lb/a/a;->a:Lb/b/d;

    invoke-interface {p0}, Lb/b/d;->a()I

    move-result p0

    return p0
.end method

.method public a(Lb/b/h;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lb/a/a;->a:Lb/b/d;

    invoke-interface {p0, p1}, Lb/b/d;->b(Lb/b/h;)V

    return-void
.end method

.method public b()Lb/b/d;
    .locals 0

    .line 40
    iget-object p0, p0, Lb/a/a;->a:Lb/b/d;

    return-object p0
.end method

.method public b(Lb/b/h;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lb/a/a;->a(Lb/b/h;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lb/a/a;->a:Lb/b/d;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

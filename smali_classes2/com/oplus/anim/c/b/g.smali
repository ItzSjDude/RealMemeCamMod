.class public Lcom/oplus/anim/c/b/g;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/c/b/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/oplus/anim/c/b/g$a;

.field private final b:Lcom/oplus/anim/c/a/h;

.field private final c:Lcom/oplus/anim/c/a/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/oplus/anim/c/b/g$a;Lcom/oplus/anim/c/a/h;Lcom/oplus/anim/c/a/d;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oplus/anim/c/b/g;->a:Lcom/oplus/anim/c/b/g$a;

    .line 13
    iput-object p2, p0, Lcom/oplus/anim/c/b/g;->b:Lcom/oplus/anim/c/a/h;

    .line 14
    iput-object p3, p0, Lcom/oplus/anim/c/b/g;->c:Lcom/oplus/anim/c/a/d;

    .line 15
    iput-boolean p4, p0, Lcom/oplus/anim/c/b/g;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/anim/c/b/g$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/anim/c/b/g;->a:Lcom/oplus/anim/c/b/g$a;

    return-object p0
.end method

.method public b()Lcom/oplus/anim/c/a/h;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/anim/c/b/g;->b:Lcom/oplus/anim/c/a/h;

    return-object p0
.end method

.method public c()Lcom/oplus/anim/c/a/d;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/anim/c/b/g;->c:Lcom/oplus/anim/c/a/d;

    return-object p0
.end method

.method public d()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/oplus/anim/c/b/g;->d:Z

    return p0
.end method

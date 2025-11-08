.class public Lcom/oplus/camera/o/a/f;
.super Ljava/lang/Object;
.source "QrCodeDispatch.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/o/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/o/a/c;

    invoke-direct {v1}, Lcom/oplus/camera/o/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/o/a/d;

    invoke-direct {v1}, Lcom/oplus/camera/o/a/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/o/a/e;

    invoke-direct {v1}, Lcom/oplus/camera/o/a/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/o/a/g;

    invoke-direct {v1}, Lcom/oplus/camera/o/a/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    new-instance v0, Lcom/oplus/camera/o/a/b;

    invoke-direct {v0}, Lcom/oplus/camera/o/a/b;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public a(I)Lcom/oplus/camera/o/a/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/o/a/f;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/o/a/a;

    return-object p0
.end method

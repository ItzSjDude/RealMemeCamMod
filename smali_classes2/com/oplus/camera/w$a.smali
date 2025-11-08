.class public Lcom/oplus/camera/w$a;
.super Ljava/lang/Object;
.source "OplusPlaySound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/w$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/w$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/oplus/camera/w$a;->a:Ljava/util/List;

    new-instance v0, Lcom/oplus/camera/w$b;

    invoke-direct {v0, p1, p2}, Lcom/oplus/camera/w$b;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 268
    iget-object p0, p0, Lcom/oplus/camera/w$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/w$b;

    .line 269
    iget v2, v0, Lcom/oplus/camera/w$b;->a:I

    if-ne p1, v2, :cond_1

    .line 270
    iput-boolean v1, v0, Lcom/oplus/camera/w$b;->c:Z

    goto :goto_0

    .line 271
    :cond_1
    iget v1, v0, Lcom/oplus/camera/w$b;->b:I

    if-ne p1, v1, :cond_0

    .line 272
    iget-boolean v1, v0, Lcom/oplus/camera/w$b;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 273
    iput-boolean v2, v0, Lcom/oplus/camera/w$b;->c:Z

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    return v1
.end method

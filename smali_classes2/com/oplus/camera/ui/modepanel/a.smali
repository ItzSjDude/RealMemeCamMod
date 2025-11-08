.class public abstract Lcom/oplus/camera/ui/modepanel/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "BaseModeInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->a:Landroid/app/Activity;

    .line 34
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/a;->a:Landroid/app/Activity;

    .line 35
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 36
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    const/16 p1, 0x19

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(I)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/k;

    .line 47
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(I)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/a;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->a()Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public a(II)V
    .locals 4

    .line 82
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/modepanel/a;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/a;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/modepanel/k;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/k;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->a()Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemMoved(II)V

    return-void
.end method

.method public a(ILcom/oplus/camera/ui/modepanel/k;)V
    .locals 0

    .line 63
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/a;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/a;->b(ILjava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->a()Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)Lcom/oplus/camera/ui/modepanel/k;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/modepanel/k;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->c:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    :goto_0
    return-object p0
.end method

.method protected b(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/a;->c(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->a()Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemInserted(I)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/a;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/a;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

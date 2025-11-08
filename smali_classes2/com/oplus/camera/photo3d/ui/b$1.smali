.class Lcom/oplus/camera/photo3d/ui/b$1;
.super Ljava/lang/Object;
.source "GuideRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/photo3d/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/b;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/b$1;->b:Lcom/oplus/camera/photo3d/ui/b;

    iput p2, p0, Lcom/oplus/camera/photo3d/ui/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/b$1;->b:Lcom/oplus/camera/photo3d/ui/b;

    invoke-static {v1}, Lcom/oplus/camera/photo3d/ui/b;->a(Lcom/oplus/camera/photo3d/ui/b;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/photo3d/ui/b$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoItemAdapter"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/b$1;->b:Lcom/oplus/camera/photo3d/ui/b;

    invoke-static {v1}, Lcom/oplus/camera/photo3d/ui/b;->a(Lcom/oplus/camera/photo3d/ui/b;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/photo3d/ui/b$a;

    iget-object v1, v1, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    iget v2, p0, Lcom/oplus/camera/photo3d/ui/b$1;->a:I

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

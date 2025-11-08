.class public Lcom/oplus/camera/sticker/ui/a;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"


# instance fields
.field private a:Lcom/oplus/camera/sticker/ui/i;

.field private b:I

.field private c:Lcom/oplus/camera/sticker/ui/c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/sticker/ui/c;I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->a:Lcom/oplus/camera/sticker/ui/i;

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/oplus/camera/sticker/ui/a;->b:I

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->c:Lcom/oplus/camera/sticker/ui/c;

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->e:Landroid/view/LayoutInflater;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->g:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->h:Landroid/graphics/drawable/Drawable;

    .line 35
    iput v1, p0, Lcom/oplus/camera/sticker/ui/a;->i:I

    .line 36
    iput v1, p0, Lcom/oplus/camera/sticker/ui/a;->j:I

    .line 37
    iput v1, p0, Lcom/oplus/camera/sticker/ui/a;->k:I

    .line 38
    iput v1, p0, Lcom/oplus/camera/sticker/ui/a;->l:I

    .line 39
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/a;->m:Z

    .line 40
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/a;->n:Z

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/a;->c:Lcom/oplus/camera/sticker/ui/c;

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->e:Landroid/view/LayoutInflater;

    .line 47
    iput p3, p0, Lcom/oplus/camera/sticker/ui/a;->b:I

    .line 50
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ad9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/a;->k:I

    .line 51
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ad5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/a;->j:I

    .line 52
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ada

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/a;->i:I

    .line 53
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ad8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/sticker/ui/a;->l:I

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/ui/b;Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p1, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->a:Lcom/oplus/camera/sticker/ui/i;

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0}, Lcom/oplus/camera/sticker/ui/i;->f()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->a:Lcom/oplus/camera/sticker/ui/i;

    .line 218
    invoke-interface {v0}, Lcom/oplus/camera/sticker/ui/i;->f()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 219
    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/a;->n:Z

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/sticker/ui/b;->a(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 221
    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/a;->n:Z

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/sticker/ui/b;->a(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/oplus/camera/sticker/ui/a;->n:Z

    .line 165
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 199
    iget v0, p0, Lcom/oplus/camera/sticker/ui/a;->b:I

    if-eq v0, p1, :cond_0

    .line 200
    iput p1, p0, Lcom/oplus/camera/sticker/ui/a;->b:I

    .line 201
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(IILandroid/graphics/drawable/Drawable;ZLcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 1

    .line 184
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    if-ltz p1, :cond_0

    .line 185
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "state_icon"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p2, "sticker_item"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/ui/c;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->c:Lcom/oplus/camera/sticker/ui/c;

    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/ui/i;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->a:Lcom/oplus/camera/sticker/ui/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/a;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/a;->m:Z

    return-void
.end method

.method public b(I)Lcom/oplus/camera/sticker/data/StickerItem;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p1, "sticker_item"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/sticker/data/StickerItem;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCount()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 63
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    const-string p0, "GridAdapter"

    const-string v0, "getCount, myCategory only has the recycle bin sticker"

    .line 67
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return p0

    :cond_1
    return v1

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GridAdapter_getView_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/sticker/ui/a;->m:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f0c015b

    invoke-virtual {p2, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    iget v2, p0, Lcom/oplus/camera/sticker/ui/a;->i:I

    iget v3, p0, Lcom/oplus/camera/sticker/ui/a;->k:I

    iget v4, p0, Lcom/oplus/camera/sticker/ui/a;->j:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 102
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 103
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f090221

    .line 105
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/LoaddingProgress;

    const v3, 0x7f090364

    .line 106
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/RotateImageView;

    const v4, 0x7f0901cf

    .line 107
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 108
    new-instance v5, Lcom/oplus/camera/sticker/ui/b;

    invoke-direct {v5, v2, v3, v4}, Lcom/oplus/camera/sticker/ui/b;-><init>(Lcom/oplus/camera/ui/LoaddingProgress;Lcom/oplus/camera/ui/RotateImageView;Landroid/widget/ImageView;)V

    .line 109
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/oplus/camera/sticker/ui/b;

    .line 114
    :goto_0
    iget-boolean v2, p0, Lcom/oplus/camera/sticker/ui/a;->m:Z

    if-eqz v2, :cond_1

    .line 115
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/a;->m:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-object p2

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "state_icon"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 121
    iget-object v3, p0, Lcom/oplus/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "sticker_item"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/sticker/data/StickerItem;

    .line 123
    iget-object v4, p0, Lcom/oplus/camera/sticker/ui/a;->h:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/oplus/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08060e

    invoke-virtual {v4, v6, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/sticker/ui/a;->h:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/a;->c:Lcom/oplus/camera/sticker/ui/c;

    if-eqz p3, :cond_3

    .line 129
    new-instance p3, Lcom/oplus/camera/sticker/ui/d;

    invoke-direct {p3}, Lcom/oplus/camera/sticker/ui/d;-><init>()V

    .line 130
    invoke-virtual {p3, v5}, Lcom/oplus/camera/sticker/ui/d;->a(Lcom/oplus/camera/sticker/ui/b;)V

    .line 131
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/oplus/camera/sticker/ui/d;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/data/StickerItem;->isStickerNew()Z

    move-result v4

    invoke-virtual {p3, v4}, Lcom/oplus/camera/sticker/ui/d;->a(Z)V

    .line 133
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result v4

    invoke-virtual {p3, v4}, Lcom/oplus/camera/sticker/ui/d;->b(Z)V

    .line 134
    invoke-virtual {p3, v2}, Lcom/oplus/camera/sticker/ui/d;->a(I)V

    .line 135
    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/a;->c:Lcom/oplus/camera/sticker/ui/c;

    invoke-virtual {v3}, Lcom/oplus/camera/sticker/data/StickerItem;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v4

    const-string v6, "parse_url"

    invoke-virtual {v2, v4, v6, p3}, Lcom/oplus/camera/sticker/ui/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/sticker/ui/d;)V

    .line 138
    :cond_3
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v5, p3}, Lcom/oplus/camera/sticker/ui/a;->a(Lcom/oplus/camera/sticker/ui/b;Ljava/lang/String;)V

    .line 140
    iget-object p3, v5, Lcom/oplus/camera/sticker/ui/b;->b:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p3, :cond_5

    .line 141
    iget-object p3, v5, Lcom/oplus/camera/sticker/ui/b;->b:Lcom/oplus/camera/ui/RotateImageView;

    iget v2, p0, Lcom/oplus/camera/sticker/ui/a;->b:I

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 143
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/a;->g:Ljava/lang/String;

    invoke-static {p3}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    .line 144
    iget-object p3, v5, Lcom/oplus/camera/sticker/ui/b;->b:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v2, v2}, Lcom/oplus/camera/ui/RotateImageView;->setPadding(IIII)V

    goto :goto_1

    .line 146
    :cond_4
    iget-object p3, v5, Lcom/oplus/camera/sticker/ui/b;->b:Lcom/oplus/camera/ui/RotateImageView;

    iget v2, p0, Lcom/oplus/camera/sticker/ui/a;->l:I

    invoke-virtual {p3, v2, v2, v2, v2}, Lcom/oplus/camera/ui/RotateImageView;->setPadding(IIII)V

    .line 150
    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/a;->m:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/oplus/camera/sticker/ui/a;->n:Z

    .line 159
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

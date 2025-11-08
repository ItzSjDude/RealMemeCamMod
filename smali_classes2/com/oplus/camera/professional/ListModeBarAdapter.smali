.class public Lcom/oplus/camera/professional/ListModeBarAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListModeBarAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:[I

.field private d:[Ljava/lang/String;

.field private e:Lcom/oplus/camera/professional/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "img"

    const-string v1, "title"

    const-string v2, "mainTitle"

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->d:[Ljava/lang/String;

    const-string v0, "layout_inflater"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->a:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->b:Ljava/util/List;

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->a:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(ILandroid/view/View;)V

    return-object p2
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->d:[Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->c:[I

    .line 138
    array-length v0, v0

    const/16 v0, 0x66

    .line 143
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "mainTitle"

    .line 144
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    .line 145
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const-string v3, "main_item_key"

    .line 146
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    :goto_1
    check-cast v0, Lcom/oplus/camera/professional/l;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/l;->setItemTitleImage(I)V

    .line 149
    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/l;->setItemValueText(Ljava/lang/String;)V

    const-string v1, "main_item_animation"

    .line 151
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 154
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/l;->setItemAnimation(I)V

    :cond_4
    const-string v1, "main_item_index"

    .line 157
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 158
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/l;->a(Z)V

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->e:Lcom/oplus/camera/professional/q;

    if-eqz v1, :cond_6

    .line 161
    invoke-interface {v1, p1}, Lcom/oplus/camera/professional/q;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/professional/l;->a(IZ)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/l;->a(IZ)V

    .line 167
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->e:Lcom/oplus/camera/professional/q;

    invoke-interface {p0, p1}, Lcom/oplus/camera/professional/q;->b(I)Z

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/oplus/camera/professional/l;->b(ZZ)V

    :cond_6
    const p0, 0x7f0902d7

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x66

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 70
    instance-of p1, p0, Lcom/oplus/camera/professional/l;

    if-eqz p1, :cond_0

    .line 71
    check-cast p0, Lcom/oplus/camera/professional/l;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/l;->getItemValueText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 0

    const/16 p0, 0x66

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 92
    check-cast p0, Lcom/oplus/camera/professional/l;

    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/professional/l;->a(IZ)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const/16 p0, 0x66

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 87
    check-cast p0, Lcom/oplus/camera/professional/l;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/l;->setItemValueText(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    const/16 p0, 0x66

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 107
    check-cast p0, Lcom/oplus/camera/professional/l;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/l;->setTouched(Z)V

    return-void
.end method

.method public a(Landroid/view/View;ZZ)V
    .locals 0

    const/16 p0, 0x66

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 97
    check-cast p0, Lcom/oplus/camera/professional/l;

    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/professional/l;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/professional/q;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->e:Lcom/oplus/camera/professional/q;

    return-void
.end method

.method public a([I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->c:[I

    return-void
.end method

.method public b(Landroid/view/View;ZZ)V
    .locals 0

    const/16 p0, 0x66

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 102
    check-cast p0, Lcom/oplus/camera/professional/l;

    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/professional/l;->b(ZZ)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/professional/ListModeBarAdapter;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/oplus/camera/filmvideomode/m;
.super Landroid/widget/BaseAdapter;
.source "FilmSubMenuAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/filmvideomode/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/filmvideomode/n;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/m;->a:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/m;->b:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/m;->c:Landroid/view/LayoutInflater;

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/m;->a:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/m;->c:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/m;->b:Ljava/util/ArrayList;

    goto :goto_0

    .line 29
    :cond_0
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/m;->b:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/oplus/camera/filmvideomode/n;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/n;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/filmvideomode/n;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/m;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/m;->a(I)Lcom/oplus/camera/filmvideomode/n;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/m;->a(I)Lcom/oplus/camera/filmvideomode/n;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/m;->c:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00d4

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const p3, 0x7f090370

    .line 57
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 58
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09036f

    .line 60
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/widget/COUISwitch;

    .line 61
    invoke-virtual {p3, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setTag(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/n;->a()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setChecked(Z)V

    .line 63
    new-instance v0, Lcom/oplus/camera/filmvideomode/m$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/oplus/camera/filmvideomode/m$1;-><init>(Lcom/oplus/camera/filmvideomode/m;Lcom/oplus/camera/filmvideomode/n;Lcom/coui/appcompat/widget/COUISwitch;)V

    invoke-virtual {p3, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    new-instance v0, Lcom/oplus/camera/filmvideomode/m$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/oplus/camera/filmvideomode/m$2;-><init>(Lcom/oplus/camera/filmvideomode/m;Lcom/oplus/camera/filmvideomode/n;Lcom/coui/appcompat/widget/COUISwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

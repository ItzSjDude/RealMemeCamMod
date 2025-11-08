.class public Lcom/oplus/camera/ui/modepanel/o;
.super Lcom/oplus/camera/ui/modepanel/a;
.source "MoreModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/modepanel/o$a;,
        Lcom/oplus/camera/ui/modepanel/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/camera/ui/modepanel/a<",
        "Lcom/oplus/camera/ui/modepanel/o$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "o"


# instance fields
.field private c:Lcom/oplus/camera/ui/modepanel/o$a;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/o;->c:Lcom/oplus/camera/ui/modepanel/o$a;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->d:I

    .line 27
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/o;->f:Z

    const v0, 0x7f0c00f7

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/o;->g:I

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->h:I

    .line 33
    iput p2, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/modepanel/o$b;ILjava/util/List;)V
    .locals 3

    .line 93
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/modepanel/o;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p2

    .line 98
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/o;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/camera/ui/modepanel/k;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setImage(Landroid/graphics/Bitmap;)V

    const/4 p3, -0x1

    .line 101
    invoke-virtual {p2}, Lcom/oplus/camera/ui/modepanel/k;->d()I

    move-result v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/oplus/camera/ui/modepanel/o;->f:Z

    if-nez p3, :cond_2

    .line 102
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ui/RotateMoreItem;->a()Z

    move-result p3

    if-nez p3, :cond_3

    .line 103
    iget-object p3, p0, Lcom/oplus/camera/ui/modepanel/o;->a:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 104
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-ne v0, p3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 105
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setSubscriptHintRTL(Z)V

    .line 106
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/o;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    invoke-virtual {p2}, Lcom/oplus/camera/ui/modepanel/k;->d()I

    move-result v2

    .line 106
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setSubscriptHint(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 110
    :cond_2
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setSubscriptHint(Landroid/graphics/Bitmap;)V

    .line 113
    :cond_3
    :goto_1
    iget-boolean p3, p0, Lcom/oplus/camera/ui/modepanel/o;->f:Z

    if-eqz p3, :cond_5

    .line 114
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ui/RotateMoreItem;->getTargetDegree()I

    move-result p3

    if-eqz p3, :cond_4

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    goto :goto_2

    :cond_4
    move p0, v1

    .line 115
    :goto_2
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    invoke-virtual {p3, p0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->a(II)V

    goto :goto_3

    .line 118
    :cond_5
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p3

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/o;->d:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    invoke-virtual {p3, v0, p0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(II)V

    .line 121
    :goto_3
    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/o$b;->a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/RotateMoreItem;->setText(Ljava/lang/String;)V

    .line 122
    iget-object p0, p1, Lcom/oplus/camera/ui/modepanel/o$b;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/modepanel/k;->e()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object p0, p1, Lcom/oplus/camera/ui/modepanel/o$b;->itemView:Landroid/view/View;

    const p1, 0x7f090396

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/o;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/oplus/camera/ui/modepanel/o;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/modepanel/o;)Lcom/oplus/camera/ui/modepanel/o$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/o;->c:Lcom/oplus/camera/ui/modepanel/o$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/ui/modepanel/o$b;
    .locals 2

    .line 81
    sget-object p2, Lcom/oplus/camera/ui/modepanel/o;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateViewHolder, mMoreModeItemID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/o;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/o;->a:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/o;->g:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/oplus/camera/ui/modepanel/o$b;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/ui/modepanel/o$b;-><init>(Lcom/oplus/camera/ui/modepanel/o;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/o$a;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/o;->c:Lcom/oplus/camera/ui/modepanel/o$a;

    return-void
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;Z)V"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/modepanel/a;->a(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 47
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->d:I

    goto :goto_0

    .line 49
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    if-nez p1, :cond_1

    .line 50
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->d:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/o;->f:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 60
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 64
    :cond_0
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/o;->d:I

    .line 65
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    .line 67
    iget-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/o;->f:Z

    if-eqz p1, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/o;->notifyDataSetChanged()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/o;->a:Landroid/app/Activity;

    .line 169
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/o;->c:Lcom/oplus/camera/ui/modepanel/o$a;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->d:I

    .line 76
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->e:I

    return-void
.end method

.method public e(I)V
    .locals 3

    .line 152
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->h:I

    .line 154
    sget-object v0, Lcom/oplus/camera/ui/modepanel/o;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/o;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const p1, 0x7f0c00f7

    .line 162
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->g:I

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00f8

    .line 158
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/o;->g:I

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1

    .line 89
    check-cast p1, Lcom/oplus/camera/ui/modepanel/o$b;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/modepanel/o;->a(Lcom/oplus/camera/ui/modepanel/o$b;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/o;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/ui/modepanel/o$b;

    move-result-object p0

    return-object p0
.end method

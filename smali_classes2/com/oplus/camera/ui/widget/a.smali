.class public Lcom/oplus/camera/ui/widget/a;
.super Landroid/widget/LinearLayout;
.source "MultiCameraTypeSelectLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/ui/RotateMoreItem;

.field private b:Lcom/oplus/camera/ui/RotateMoreItem;

.field private c:Lcom/oplus/camera/ui/RotateMoreItem;

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/oplus/camera/ui/widget/a$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    .line 24
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    .line 25
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/widget/a;->d:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/widget/a;->e:I

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/oplus/camera/ui/widget/a;->f:I

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/a;->g:Lcom/oplus/camera/ui/widget/a$a;

    .line 31
    iput v0, p0, Lcom/oplus/camera/ui/widget/a;->h:I

    .line 51
    iput p2, p0, Lcom/oplus/camera/ui/widget/a;->h:I

    .line 52
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/a;->c()V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeType, mSelectedType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/widget/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiCameraTypeSelectLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/oplus/camera/ui/widget/a;->f:I

    if-eq v0, p1, :cond_0

    .line 129
    iput p1, p0, Lcom/oplus/camera/ui/widget/a;->f:I

    .line 131
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/a;->g:Lcom/oplus/camera/ui/widget/a$a;

    if-eqz p1, :cond_0

    .line 132
    iget p0, p0, Lcom/oplus/camera/ui/widget/a;->f:I

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/widget/a$a;->onTypeChanged(I)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 56
    iget v0, p0, Lcom/oplus/camera/ui/widget/a;->h:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const v0, 0x7f0c0118

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0117

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->setClipChildren(Z)V

    const v0, 0x7f09041d

    .line 60
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateMoreItem;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    .line 61
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setText(Ljava/lang/String;)V

    const v0, 0x7f090422

    .line 62
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateMoreItem;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setText(Ljava/lang/String;)V

    const v0, 0x7f090423

    .line 64
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateMoreItem;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setText(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/a;->e()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateMoreItem;->postInvalidate()V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateMoreItem;->postInvalidate()V

    .line 122
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->postInvalidate()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080596

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080592

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080594

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06020a

    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setTextColor(I)V

    .line 147
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setTextColor(I)V

    .line 148
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->b()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 71
    iget p2, p0, Lcom/oplus/camera/ui/widget/a;->e:I

    if-ne p2, p1, :cond_0

    return-void

    .line 75
    :cond_0
    iput p2, p0, Lcom/oplus/camera/ui/widget/a;->d:I

    .line 76
    iput p1, p0, Lcom/oplus/camera/ui/widget/a;->e:I

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    iget p2, p0, Lcom/oplus/camera/ui/widget/a;->d:I

    iget v0, p0, Lcom/oplus/camera/ui/widget/a;->e:I

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(II)V

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    iget p2, p0, Lcom/oplus/camera/ui/widget/a;->d:I

    iget v0, p0, Lcom/oplus/camera/ui/widget/a;->e:I

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(II)V

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    iget p2, p0, Lcom/oplus/camera/ui/widget/a;->d:I

    iget p0, p0, Lcom/oplus/camera/ui/widget/a;->e:I

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(II)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateMoreItem;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setFrameShow(Z)V

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateMoreItem;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setFrameShow(Z)V

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateMoreItem;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setFrameShow(Z)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const/4 p1, 0x2

    .line 109
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/a;->a(I)V

    .line 110
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/a;->d()V

    goto :goto_3

    .line 103
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/widget/a;->a(I)V

    .line 104
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/a;->d()V

    goto :goto_3

    .line 97
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/widget/a;->a(I)V

    .line 98
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/a;->d()V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09041d -> :sswitch_2
        0x7f090422 -> :sswitch_1
        0x7f090423 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public setOnTypeChangeListener(Lcom/oplus/camera/ui/widget/a$a;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/a;->g:Lcom/oplus/camera/ui/widget/a$a;

    return-void
.end method

.method public setType(I)V
    .locals 4

    .line 160
    iput p1, p0, Lcom/oplus/camera/ui/widget/a;->f:I

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/RotateMoreItem;->setFrameShow(Z)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/a;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/RotateMoreItem;->setFrameShow(Z)V

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/a;->c:Lcom/oplus/camera/ui/RotateMoreItem;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->setFrameShow(Z)V

    return-void
.end method

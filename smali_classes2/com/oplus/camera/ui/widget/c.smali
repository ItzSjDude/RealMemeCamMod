.class public Lcom/oplus/camera/ui/widget/c;
.super Lcom/coui/appcompat/widget/s;
.source "SuperColorToolTips.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/s;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->b:I

    .line 23
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->e:I

    .line 24
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->f:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 91
    :try_start_0
    const-class v0, Lcom/coui/appcompat/widget/s;

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    .line 96
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 97
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 100
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 113
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 115
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    .line 116
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 117
    :cond_3
    instance-of v5, v4, Landroid/widget/ScrollView;

    if-eqz v5, :cond_4

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 120
    instance-of v5, v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_5

    .line 121
    move-object v5, v4

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v4

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 123
    move-object v5, v4

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    invoke-virtual {v4}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v4

    .line 123
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 126
    :cond_4
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    .line 127
    check-cast v4, Landroid/view/ViewGroup;

    invoke-interface {v0, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->c:I

    .line 83
    iput p2, p0, Lcom/oplus/camera/ui/widget/c;->d:I

    return-void
.end method

.method public a(III)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->e:I

    .line 65
    iput p2, p0, Lcom/oplus/camera/ui/widget/c;->f:I

    .line 66
    iput p3, p0, Lcom/oplus/camera/ui/widget/c;->g:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/ui/widget/c;->d:I

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .line 38
    iget v0, p0, Lcom/oplus/camera/ui/widget/c;->e:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/ui/widget/c;->f:I

    if-lez v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/c;->b:I

    if-ltz v0, :cond_1

    .line 49
    invoke-super {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/s;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/widget/c;->c:I

    add-int/2addr p3, v0

    iget v0, p0, Lcom/oplus/camera/ui/widget/c;->d:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/s;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    .line 39
    :cond_2
    :goto_1
    iget p2, p0, Lcom/oplus/camera/ui/widget/c;->e:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/c;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/oplus/camera/ui/widget/c;->g:I

    const/4 p4, 0x0

    const/16 v0, 0x31

    if-le p2, p3, :cond_3

    .line 40
    iget p2, p0, Lcom/oplus/camera/ui/widget/c;->e:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/c;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-super {p0, p1, v0, p4, p2}, Lcom/coui/appcompat/widget/s;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 42
    :cond_3
    iget p2, p0, Lcom/oplus/camera/ui/widget/c;->f:I

    invoke-super {p0, p1, v0, p4, p2}, Lcom/coui/appcompat/widget/s;->showAtLocation(Landroid/view/View;III)V

    :goto_2
    return-void
.end method

.class Landroidx/recyclerview/widget/f$g;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .line 528
    iget v0, p0, Landroidx/recyclerview/widget/f$g;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->c:I

    iget p0, p0, Landroidx/recyclerview/widget/f$g;->a:I

    sub-int/2addr v1, p0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b()Z
    .locals 2

    .line 532
    iget v0, p0, Landroidx/recyclerview/widget/f$g;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->c:I

    iget p0, p0, Landroidx/recyclerview/widget/f$g;->a:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method c()I
    .locals 2

    .line 536
    iget v0, p0, Landroidx/recyclerview/widget/f$g;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->d:I

    iget p0, p0, Landroidx/recyclerview/widget/f$g;->b:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method d()Landroidx/recyclerview/widget/f$c;
    .locals 3

    .line 545
    invoke-virtual {p0}, Landroidx/recyclerview/widget/f$g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-boolean v0, p0, Landroidx/recyclerview/widget/f$g;->e:Z

    if-eqz v0, :cond_0

    .line 548
    new-instance v0, Landroidx/recyclerview/widget/f$c;

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/f$g;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f$g;->c()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/f$c;-><init>(III)V

    return-object v0

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/f$g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Landroidx/recyclerview/widget/f$c;

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/f$g;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f$g;->c()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/f$c;-><init>(III)V

    return-object v0

    .line 554
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/f$c;

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/f$g;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f$g;->c()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/f$c;-><init>(III)V

    return-object v0

    .line 559
    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/f$c;

    iget v1, p0, Landroidx/recyclerview/widget/f$g;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/f$g;->b:I

    iget p0, p0, Landroidx/recyclerview/widget/f$g;->c:I

    sub-int/2addr p0, v1

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/f$c;-><init>(III)V

    return-object v0
.end method

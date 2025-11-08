.class Lcom/oplus/camera/sticker/ui/h$13;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageScrollStateChanged, position: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerMenu"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    .line 377
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 378
    invoke-static {p2}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 379
    invoke-static {p2}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 380
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p2}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p2

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/e;->a(I)Lcom/oplus/camera/sticker/ui/h$b;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/oplus/camera/sticker/ui/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->f(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/g;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v2}, Lcom/oplus/camera/sticker/ui/h;->e(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$b;

    move-result-object v2

    iget-object v2, v2, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v0, v2, v0}, Lcom/oplus/camera/sticker/ui/g;->a(IILjava/lang/String;Z)V

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 393
    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 394
    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->f(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/g;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 395
    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 396
    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result v1

    if-eq v1, p1, :cond_8

    .line 397
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->n(Lcom/oplus/camera/sticker/ui/h;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 398
    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v2}, Lcom/oplus/camera/sticker/ui/h;->n(Lcom/oplus/camera/sticker/ui/h;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_7

    if-gt v1, v3, :cond_1

    if-gt v3, v2, :cond_1

    .line 404
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/h;->a(I)V

    goto/16 :goto_3

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result v1

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    .line 408
    iget-object v5, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 410
    invoke-static {v5}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_5

    add-int/lit8 v5, v1, -0x2

    if-eq v3, v5, :cond_5

    add-int/lit8 v1, v1, -0x3

    if-ne v3, v1, :cond_3

    .line 412
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 415
    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result v1

    if-ne v1, v5, :cond_3

    goto :goto_1

    .line 418
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result v1

    sub-int/2addr v1, v2

    if-le v3, v1, :cond_4

    .line 419
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v1

    add-int/lit8 v4, v3, -0x3

    invoke-virtual {v1, v4}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->scrollToPosition(I)V

    goto :goto_0

    .line 421
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v1

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->scrollToPosition(I)V

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1, v2}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/h;Z)Z

    .line 425
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->o(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/h$d;->a(I)V

    goto :goto_3

    .line 416
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->scrollToPosition(I)V

    goto :goto_3

    .line 411
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->scrollToPosition(I)V

    .line 429
    :goto_3
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/oplus/camera/sticker/ui/e;->a(I)Lcom/oplus/camera/sticker/ui/h$b;

    move-result-object v2

    iget-object v2, v2, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    goto :goto_4

    .line 431
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->scrollTo(II)V

    .line 432
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/camera/sticker/ui/e;->a(I)Lcom/oplus/camera/sticker/ui/h$b;

    move-result-object v2

    iget-object v2, v2, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    .line 435
    :goto_4
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0, p1}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/h;I)I

    .line 436
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/ui/j;->c(I)V

    .line 437
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/sticker/ui/e;->b(I)V

    .line 438
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$13;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->j(Lcom/oplus/camera/sticker/ui/h;)V

    :cond_8
    return-void
.end method

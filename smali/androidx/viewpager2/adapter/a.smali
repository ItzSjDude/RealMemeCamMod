.class public abstract Landroidx/viewpager2/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/viewpager2/adapter/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/adapter/a$c;,
        Landroidx/viewpager2/adapter/a$a;,
        Landroidx/viewpager2/adapter/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/viewpager2/adapter/b;",
        ">;",
        "Landroidx/viewpager2/adapter/c;"
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/e;

.field final b:Landroidx/fragment/app/h;

.field final c:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroidx/viewpager2/adapter/a$a;

.field private e:Landroidx/viewpager2/adapter/a$b;


# direct methods
.method private a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 383
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/h;

    new-instance v1, Landroidx/viewpager2/adapter/a$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/viewpager2/adapter/a$1;-><init>(Landroidx/viewpager2/adapter/a;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/h$a;Z)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 401
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_3

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return-void

    .line 409
    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    .line 410
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 417
    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 402
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(Landroidx/viewpager2/adapter/b;)V
    .locals 7

    .line 293
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Design assumption violated."

    if-eqz v0, :cond_8

    .line 297
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->a()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 298
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 319
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 325
    invoke-direct {p0, v0, v2}, Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    return-void

    .line 330
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, v2, :cond_3

    .line 332
    invoke-virtual {p0, v3, v2}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void

    .line 338
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 339
    invoke-virtual {p0, v3, v2}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    .line 344
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 345
    invoke-direct {p0, v0, v2}, Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 346
    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    .line 347
    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/a$a;->a(Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 349
    :try_start_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 350
    iget-object v3, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/h;

    invoke-virtual {v3}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->getItemId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    sget-object v3, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    .line 352
    invoke-virtual {p1, v0, v3}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Landroidx/fragment/app/k;->d()V

    .line 354
    iget-object p1, p0, Landroidx/viewpager2/adapter/a;->e:Landroidx/viewpager2/adapter/a$b;

    invoke-virtual {p1, v2}, Landroidx/viewpager2/adapter/a$b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    invoke-virtual {p0, v1}, Landroidx/viewpager2/adapter/a$a;->a(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    invoke-virtual {p0, v1}, Landroidx/viewpager2/adapter/a$a;->a(Ljava/util/List;)V

    .line 357
    throw p1

    .line 359
    :cond_6
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 362
    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/lifecycle/e;

    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Landroidx/viewpager2/adapter/a;Landroidx/viewpager2/adapter/b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    :goto_1
    return-void

    .line 295
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a()Z
    .locals 0

    .line 491
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->g()Z

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

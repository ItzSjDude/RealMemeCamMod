.class Lcom/oplus/camera/ui/d$13$1;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d$13;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d$13;)V
    .locals 0

    .line 2165
    iput-object p1, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2168
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    const v1, 0x7f090196

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2173
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-boolean v4, v4, Lcom/oplus/camera/ui/d$13;->a:Z

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->b(Z)V

    .line 2175
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bE()Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bE()Lcom/oplus/camera/ui/control/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->a(Landroid/graphics/Bitmap;)V

    .line 2179
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->T(Lcom/oplus/camera/ui/d;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->a(Ljava/util/List;)V

    .line 2181
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2182
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-array v4, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v5, v5, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v5}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v0, v4}, Lcom/oplus/camera/screen/b/a;->a([Landroid/view/View;)V

    .line 2185
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->U(Lcom/oplus/camera/ui/d;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0, v3}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    goto/16 :goto_0

    .line 2187
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 2189
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->V(Lcom/oplus/camera/ui/d;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2190
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/screen/b/a;->d(Landroid/app/Activity;)V

    .line 2191
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 2194
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    new-instance v4, Lcom/oplus/camera/ui/k;

    iget-object v5, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v5, v5, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v5}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v6, v6, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v6}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/oplus/camera/ui/k;-><init>(Landroid/content/Context;ILcom/oplus/camera/ui/CameraUIListener;)V

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/k;

    .line 2195
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    new-instance v4, Lcom/oplus/camera/ui/d$13$1$1;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/d$13$1$1;-><init>(Lcom/oplus/camera/ui/d$13$1;)V

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k$c;)V

    .line 2204
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-boolean v4, v4, Lcom/oplus/camera/ui/d$13;->a:Z

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->b(Z)V

    .line 2206
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bE()Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2207
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bE()Lcom/oplus/camera/ui/control/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->a(Landroid/graphics/Bitmap;)V

    .line 2210
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->T(Lcom/oplus/camera/ui/d;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/k;->a(Ljava/util/List;)V

    .line 2211
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    new-instance v10, Lcom/oplus/camera/ui/l;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v5

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    .line 2212
    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0705a2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    .line 2213
    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v10

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/oplus/camera/ui/l;-><init>(Landroid/content/Context;IIII)V

    .line 2211
    invoke-static {v0, v10}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/l;)Lcom/oplus/camera/ui/l;

    .line 2214
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->V(Lcom/oplus/camera/ui/d;)Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f09019c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Landroidx/viewpager2/widget/ViewPager2;)Landroidx/viewpager2/widget/ViewPager2;

    .line 2215
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->U(Lcom/oplus/camera/ui/d;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 2216
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->U(Lcom/oplus/camera/ui/d;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setClipToOutline(Z)V

    .line 2217
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->U(Lcom/oplus/camera/ui/d;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->W(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/l;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 2218
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->U(Lcom/oplus/camera/ui/d;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4, v3}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    .line 2219
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->U(Lcom/oplus/camera/ui/d;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    new-instance v4, Lcom/oplus/camera/ui/d$13$1$2;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/d$13$1$2;-><init>(Lcom/oplus/camera/ui/d$13$1;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 2237
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2238
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09019e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/inverse/InverseTextView;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 2241
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    .line 2243
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2244
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-array v2, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/oplus/camera/screen/b/a;->a([Landroid/view/View;)V

    .line 2247
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2248
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    iget-object v1, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v1, v1, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090198

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/j;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/j;)Lcom/oplus/camera/ui/j;

    .line 2249
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v1, v1, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v2, v2, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v3, v3, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v3}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v4, v4, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ComboPreferences;Landroid/app/Activity;Lcom/oplus/camera/ui/k;)V

    .line 2252
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->X(Lcom/oplus/camera/ui/d;)Landroidx/recyclerview/widget/RecyclerView$c;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2253
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->X(Lcom/oplus/camera/ui/d;)Landroidx/recyclerview/widget/RecyclerView$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/k;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_9
    :goto_0
    return-void
.end method

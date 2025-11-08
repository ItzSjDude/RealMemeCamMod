.class Landroidx/viewpager2/widget/ViewPager2$b;
.super Landroidx/viewpager2/widget/ViewPager2$a;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1297
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/h/a/d;)V
    .locals 0

    .line 1316
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->d()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1317
    sget-object p0, Landroidx/core/h/a/d$a;->n:Landroidx/core/h/a/d$a;

    invoke-virtual {p1, p0}, Landroidx/core/h/a/d;->b(Landroidx/core/h/a/d$a;)Z

    .line 1318
    sget-object p0, Landroidx/core/h/a/d$a;->m:Landroidx/core/h/a/d$a;

    invoke-virtual {p1, p0}, Landroidx/core/h/a/d;->b(Landroidx/core/h/a/d$a;)Z

    const/4 p0, 0x0

    .line 1319
    invoke-virtual {p1, p0}, Landroidx/core/h/a/d;->i(Z)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1300
    :cond_0
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 1302
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->d()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)Z
    .locals 0

    .line 1307
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$b;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1308
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 0

    .line 1330
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$b;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0

    .line 1331
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

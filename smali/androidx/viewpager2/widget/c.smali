.class final Landroidx/viewpager2/widget/c;
.super Ljava/lang/Object;
.source "FakeDrag.java"


# instance fields
.field private final a:Landroidx/viewpager2/widget/ViewPager2;

.field private final b:Landroidx/viewpager2/widget/e;

.field private final c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/e;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/viewpager2/widget/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    iput-object p2, p0, Landroidx/viewpager2/widget/c;->b:Landroidx/viewpager2/widget/e;

    .line 47
    iput-object p3, p0, Landroidx/viewpager2/widget/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/viewpager2/widget/c;->b:Landroidx/viewpager2/widget/e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/e;->d()Z

    move-result p0

    return p0
.end method

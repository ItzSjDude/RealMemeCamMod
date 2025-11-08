.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:Z

.field f:[I

.field final synthetic g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 3241
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3242
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, -0x1

    .line 3246
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    const/high16 v1, -0x80000000

    .line 3247
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    const/4 v1, 0x0

    .line 3248
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 3249
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 3250
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 3251
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz p0, :cond_0

    .line 3252
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .line 3273
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    .line 3274
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 3276
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    :goto_0
    return-void
.end method

.method a([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;)V
    .locals 5

    .line 3257
    array-length v0, p1

    .line 3258
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 3259
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3263
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method b()V
    .locals 1

    .line 3268
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    goto :goto_0

    .line 3269
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    return-void
.end method

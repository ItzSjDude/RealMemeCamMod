.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$c;,
        Landroidx/viewpager2/widget/ViewPager2$f;,
        Landroidx/viewpager2/widget/ViewPager2$b;,
        Landroidx/viewpager2/widget/ViewPager2$a;,
        Landroidx/viewpager2/widget/ViewPager2$g;,
        Landroidx/viewpager2/widget/ViewPager2$e;,
        Landroidx/viewpager2/widget/ViewPager2$j;,
        Landroidx/viewpager2/widget/ViewPager2$h;,
        Landroidx/viewpager2/widget/ViewPager2$d;,
        Landroidx/viewpager2/widget/ViewPager2$i;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;
    }
.end annotation


# static fields
.field static a:Z = true


# instance fields
.field b:I

.field c:Z

.field d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field e:Landroidx/recyclerview/widget/RecyclerView;

.field f:Landroidx/viewpager2/widget/e;

.field g:Landroidx/viewpager2/widget/ViewPager2$a;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;

.field private j:Landroidx/viewpager2/widget/b;

.field private k:Landroidx/recyclerview/widget/RecyclerView$c;

.field private l:I

.field private m:Landroid/os/Parcelable;

.field private n:Landroidx/recyclerview/widget/o;

.field private o:Landroidx/viewpager2/widget/b;

.field private p:Landroidx/viewpager2/widget/c;

.field private q:Landroidx/viewpager2/widget/d;

.field private r:Landroidx/recyclerview/widget/RecyclerView$f;

.field private s:Z

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroidx/viewpager2/widget/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 158
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroidx/viewpager2/widget/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    .line 125
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Landroidx/viewpager2/widget/b;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    .line 132
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    const/4 p3, 0x1

    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 153
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 168
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    .line 125
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Landroidx/viewpager2/widget/b;

    const/4 p4, 0x3

    invoke-direct {p3, p4}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    .line 132
    new-instance p4, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {p4, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 p4, -0x1

    .line 142
    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    const/4 p3, 0x1

    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 153
    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 175
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 179
    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$f;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$b;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$b;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    .line 183
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$i;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Landroidx/core/h/v;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 185
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 187
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$d;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$d;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 189
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 190
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->f()Landroidx/recyclerview/widget/RecyclerView$k;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$k;)V

    .line 198
    new-instance p1, Landroidx/viewpager2/widget/e;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/e;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    .line 200
    new-instance p1, Landroidx/viewpager2/widget/c;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0, p2, v0}, Landroidx/viewpager2/widget/c;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/e;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/c;

    .line 201
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$h;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$h;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/o;

    .line 202
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/o;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 207
    new-instance p1, Landroidx/viewpager2/widget/b;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    .line 208
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/e;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 212
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$2;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 230
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$3;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 242
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 243
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 246
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroidx/viewpager2/widget/b;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 247
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 251
    new-instance p1, Landroidx/viewpager2/widget/d;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/d;

    .line 252
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/d;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 254
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 469
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$a;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 292
    sget-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    sget-object v3, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Landroidx/core/h/v;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 296
    :try_start_0
    sget p1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    .line 297
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 296
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    throw p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 475
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$a;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_0
    return-void
.end method

.method private f()Landroidx/recyclerview/widget/RecyclerView$k;
    .locals 1

    .line 263
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private g()V
    .locals 4

    .line 339
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 347
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 348
    instance-of v3, v0, Landroidx/viewpager2/adapter/c;

    if-eqz v3, :cond_2

    .line 349
    move-object v3, v0

    check-cast v3, Landroidx/viewpager2/adapter/c;

    invoke-interface {v3, v2}, Landroidx/viewpager2/adapter/c;->a(Landroid/os/Parcelable;)V

    :cond_2
    const/4 v2, 0x0

    .line 351
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/os/Parcelable;

    :cond_3
    const/4 v2, 0x0

    .line 354
    iget v3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 355
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    .line 356
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 357
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$a;->c()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 536
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/o;

    if-eqz v0, :cond_2

    .line 540
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 546
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    .line 548
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/b;->onPageSelected(I)V

    :cond_1
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    return-void

    .line 537
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(IZ)V
    .locals 1

    .line 600
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    return-void

    .line 601
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 0

    .line 1149
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public a(Landroidx/viewpager2/widget/ViewPager2$e;)V
    .locals 0

    .line 869
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    return-void
.end method

.method b(IZ)V
    .locals 8

    .line 611
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 614
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 615
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    :cond_0
    return-void

    .line 619
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    .line 623
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 624
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 626
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 630
    :cond_3
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    return-void

    .line 638
    :cond_4
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    int-to-double v0, v0

    .line 639
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 640
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$a;->e()V

    .line 642
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/e;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 644
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->e()D

    move-result-wide v0

    .line 649
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/widget/e;->a(IZ)V

    if-nez p2, :cond_6

    .line 651
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_6
    int-to-double v2, p1

    sub-double v4, v2, v0

    .line 656
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_8

    .line 657
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    cmpl-double v0, v2, v0

    if-lez v0, :cond_7

    add-int/lit8 v0, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p1, 0x3

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 659
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$j;

    invoke-direct {p2, p1, p0}, Landroidx/viewpager2/widget/ViewPager2$j;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 661
    :cond_8
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method public b(Landroidx/viewpager2/widget/ViewPager2$e;)V
    .locals 0

    .line 879
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/b;->b(Landroidx/viewpager2/widget/ViewPager2$e;)V

    return-void
.end method

.method b()Z
    .locals 1

    .line 576
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 0

    .line 758
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/viewpager2/widget/c;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/c;->a()Z

    move-result p0

    return p0
.end method

.method public canScrollHorizontally(I)Z
    .locals 0

    .line 852
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public canScrollVertically(I)Z
    .locals 0

    .line 857
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    .line 800
    iget-boolean p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 364
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 365
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 366
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v1

    .line 367
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 371
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 374
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->g()V

    return-void
.end method

.method public e()V
    .locals 5

    .line 927
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/d;->a()Landroidx/viewpager2/widget/ViewPager2$g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->e()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    sub-double/2addr v0, v3

    double-to-float v0, v0

    .line 933
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 934
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/d;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/viewpager2/widget/d;->onPageScrolled(IFI)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 285
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 0

    .line 481
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 672
    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    return p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    .line 1189
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 847
    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 572
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method getPageSize()I
    .locals 2

    .line 555
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 556
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    .line 557
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    sub-int/2addr p0, v0

    return p0
.end method

.method public getScrollState()I
    .locals 0

    .line 684
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/e;->b()I

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 946
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 947
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 515
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    .line 516
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 520
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 521
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 522
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 523
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 525
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 526
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 529
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 497
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    .line 498
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 499
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 500
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 502
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 503
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 505
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 506
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 508
    invoke-static {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 509
    invoke-static {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p2

    .line 508
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 327
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 328
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 332
    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 333
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    .line 335
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/os/Parcelable;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 307
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 308
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 310
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 311
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 313
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 314
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    goto :goto_0

    .line 316
    :cond_1
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    .line 317
    instance-of v0, p0, Landroidx/viewpager2/adapter/c;

    if-eqz v0, :cond_2

    .line 318
    check-cast p0, Landroidx/viewpager2/adapter/c;

    invoke-interface {p0}, Landroidx/viewpager2/adapter/c;->b()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 487
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support direct child views"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 953
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$a;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$a;->b(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 956
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 2

    .line 457
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 458
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$a;->b(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 459
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 460
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 462
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->g()V

    .line 463
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 464
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 588
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 940
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 941
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$a;->g()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 833
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 835
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 567
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 568
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$a;->d()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$g;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 898
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-nez v1, :cond_0

    .line 899
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v1, 0x1

    .line 900
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 902
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    goto :goto_0

    .line 904
    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-eqz v1, :cond_2

    .line 905
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 906
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v0, 0x0

    .line 907
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 913
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/d;->a()Landroidx/viewpager2/widget/ViewPager2$g;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-void

    .line 916
    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/d;->a(Landroidx/viewpager2/widget/ViewPager2$g;)V

    .line 917
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->e()V

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    .line 789
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 790
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$a;->f()V

    return-void
.end method

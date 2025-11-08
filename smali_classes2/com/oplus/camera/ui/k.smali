.class public Lcom/oplus/camera/ui/k;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "GalleryPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/k$b;,
        Lcom/oplus/camera/ui/k$e;,
        Lcom/oplus/camera/ui/k$a;,
        Lcom/oplus/camera/ui/k$c;,
        Lcom/oplus/camera/ui/k$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/ui/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

.field private B:Landroid/widget/RelativeLayout;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/oplus/camera/ui/k$c;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/c/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Object;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/ui/k$d;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroidx/recyclerview/widget/RecyclerView;

.field private u:Landroid/os/Handler;

.field private v:Z

.field private w:Ljava/lang/Object;

.field private x:Lcom/oplus/camera/ui/CameraUIListener;

.field private volatile y:Z

.field private z:Lcom/oplus/camera/ui/k$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oplus/camera/ui/CameraUIListener;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/k;->a:I

    .line 66
    iput v0, p0, Lcom/oplus/camera/ui/k;->b:I

    .line 67
    iput v0, p0, Lcom/oplus/camera/ui/k;->c:I

    .line 68
    iput v0, p0, Lcom/oplus/camera/ui/k;->d:I

    .line 69
    iput v0, p0, Lcom/oplus/camera/ui/k;->e:I

    .line 70
    iput v0, p0, Lcom/oplus/camera/ui/k;->f:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    iput v1, p0, Lcom/oplus/camera/ui/k;->g:F

    .line 72
    iput-boolean v0, p0, Lcom/oplus/camera/ui/k;->h:Z

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, Lcom/oplus/camera/ui/k;->i:Z

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    .line 75
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    .line 76
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    .line 78
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->n:Lcom/oplus/camera/ui/k$c;

    .line 79
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->q:Ljava/util/HashMap;

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->r:Ljava/util/HashMap;

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->s:Ljava/util/HashMap;

    .line 84
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->u:Landroid/os/Handler;

    .line 86
    iput-boolean v0, p0, Lcom/oplus/camera/ui/k;->v:Z

    .line 87
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->w:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->x:Lcom/oplus/camera/ui/CameraUIListener;

    .line 89
    iput-boolean v0, p0, Lcom/oplus/camera/ui/k;->y:Z

    .line 90
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->z:Lcom/oplus/camera/ui/k$e;

    .line 91
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->A:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    .line 92
    iput-object v1, p0, Lcom/oplus/camera/ui/k;->B:Landroid/widget/RelativeLayout;

    .line 95
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    .line 96
    iput p2, p0, Lcom/oplus/camera/ui/k;->c:I

    .line 97
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705b9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/k;->a:I

    .line 98
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/k;->b:I

    .line 100
    iget p1, p0, Lcom/oplus/camera/ui/k;->a:I

    if-eqz p1, :cond_0

    .line 101
    iget p2, p0, Lcom/oplus/camera/ui/k;->b:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/k;->g:F

    .line 104
    :cond_0
    new-instance p1, Lcom/oplus/camera/ui/k$b;

    iget-object p2, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/k$b;-><init>(Lcom/oplus/camera/ui/k;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/k;->u:Landroid/os/Handler;

    .line 105
    iput-object p3, p0, Lcom/oplus/camera/ui/k;->x:Lcom/oplus/camera/ui/CameraUIListener;

    .line 106
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/k;->d:I

    .line 107
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/k;->e:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;[I)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/k;->a([I)I

    move-result p0

    return p0
.end method

.method private a([I)I
    .locals 5

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calSampleSize, imageBitmapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 304
    array-length v1, p1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, -0x1

    if-eq v3, v2, :cond_4

    const/4 v2, 0x1

    aget v4, p1, v2

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    aget v0, p1, v1

    .line 311
    aget p1, p1, v2

    .line 312
    iget p0, p0, Lcom/oplus/camera/ui/k;->a:I

    int-to-float v1, p0

    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    if-gt v0, v1, :cond_1

    if-le p1, p0, :cond_3

    .line 317
    :cond_1
    invoke-static {v0, p0}, Ljava/lang/Math;->floorDiv(II)I

    move-result p0

    .line 318
    invoke-static {p1, v1}, Ljava/lang/Math;->floorDiv(II)I

    move-result p1

    if-ge p1, p0, :cond_2

    move v2, p1

    goto :goto_0

    :cond_2
    move v2, p0

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->B:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Lcom/oplus/camera/ui/inverse/InverseLinearLayout;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->A:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V
    .locals 7

    .line 807
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 808
    new-instance v4, Lcom/oplus/c/a/d;

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    sget-object v1, Lcom/oplus/c/a/d$a;->TBL:Lcom/oplus/c/a/d$a;

    invoke-direct {v4, v0, v1}, Lcom/oplus/c/a/d;-><init>(Landroid/content/Context;Lcom/oplus/c/a/d$a;)V

    .line 809
    new-instance v6, Lcom/oplus/camera/ui/k$d;

    invoke-direct {v6, p0, v4, p3}, Lcom/oplus/camera/ui/k$d;-><init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/d/b/b;Lcom/oplus/camera/ui/k$a;)V

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->q:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->r:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->s:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->d(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/k$12;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/k$12;-><init>(Lcom/oplus/camera/ui/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->f(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/k$2;

    invoke-direct {v1, p0, v4, p3}, Lcom/oplus/camera/ui/k$2;-><init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/d;Lcom/oplus/camera/ui/k$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    new-instance p3, Lcom/oplus/camera/ui/k$3;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/k$3;-><init>(Lcom/oplus/camera/ui/k;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;Lcom/oplus/c/a/d;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$d;)V

    const-string p1, "GalleryPreviewAdapter prepareVideoPlayer"

    invoke-direct {p0, p3, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 815
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    .line 992
    iget-boolean v0, p0, Lcom/oplus/camera/ui/k;->v:Z

    if-eqz v0, :cond_0

    .line 993
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    const p1, 0x7f10044d

    invoke-static {p0, p1}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1000
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    const/4 v1, -0x1

    if-gt p2, v1, :cond_1

    goto :goto_2

    .line 1004
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/c/a/b/a;

    .line 1007
    invoke-virtual {v1}, Lcom/oplus/c/a/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0901a3

    .line 1008
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f09019f

    .line 1010
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    const-string v2, "GalleryPreviewAdapter"

    if-nez v1, :cond_3

    const-string p0, "onItemClick, current View is null"

    .line 1014
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v3, 0x1

    .line 1019
    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1021
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1022
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1024
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick, fail to get DrawingCache, width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    .line 1028
    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1029
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->n:Lcom/oplus/camera/ui/k$c;

    invoke-interface {p0, p1, v0, p2}, Lcom/oplus/camera/ui/k$c;->a(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 4

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 331
    iget p3, p0, Lcom/oplus/camera/ui/k;->g:F

    sub-float p3, p2, p3

    float-to-double v0, p3

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double p3, v0, v2

    if-lez p3, :cond_0

    .line 332
    iget p3, p0, Lcom/oplus/camera/ui/k;->b:I

    int-to-float v0, p3

    div-float/2addr v0, p2

    .line 333
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_0
    iget p3, p0, Lcom/oplus/camera/ui/k;->a:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 336
    iget p2, p0, Lcom/oplus/camera/ui/k;->a:I

    .line 337
    iget v0, p0, Lcom/oplus/camera/ui/k;->b:I

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    .line 340
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 342
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 343
    iget p2, p0, Lcom/oplus/camera/ui/k;->d:I

    add-int/2addr p2, v0

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const p2, 0x7f0901a3

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    if-ne p2, p3, :cond_1

    .line 346
    iget p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/oplus/camera/ui/k;->f:I

    .line 349
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/oplus/c/a/b/a;I)V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 780
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, p2

    .line 782
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/b/a;

    .line 784
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 787
    :cond_0
    new-instance p1, Lcom/oplus/camera/ui/k$11;

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/k$11;-><init>(Lcom/oplus/camera/ui/k;I)V

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 780
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/k;->a(Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Landroid/view/View;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/k;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Landroid/view/View;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/k;->a(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/c/a/b/a;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Ljava/lang/Runnable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/k;->a(ZLcom/oplus/camera/ui/k$a;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 930
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 873
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/d;

    .line 874
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->r:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseVideoPlayer, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GalleryPreviewAdapter"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0}, Lcom/oplus/c/a/d;->d()V

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 884
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->s:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/c/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/c/a/b/a;

    move-result-object v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMediaItem, mediaItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryPreviewAdapter"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    .line 563
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    invoke-virtual {v0, p2}, Lcom/oplus/c/a/b/a;->a(I)V

    .line 567
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 568
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2f

    .line 569
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "COVER"

    .line 571
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "insertMediaItem, not CShot Cover"

    .line 572
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 578
    :cond_3
    new-instance p2, Lcom/oplus/camera/ui/k$9;

    invoke-direct {p2, p0, p1, v0}, Lcom/oplus/camera/ui/k$9;-><init>(Lcom/oplus/camera/ui/k;Ljava/lang/String;Lcom/oplus/c/a/b/a;)V

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ZLcom/oplus/camera/ui/k$a;)V
    .locals 1

    .line 858
    new-instance v0, Lcom/oplus/camera/ui/k$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/camera/ui/k$4;-><init>(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ZZLcom/oplus/camera/ui/k$a;)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p1, :cond_2

    move v0, v1

    .line 183
    :cond_2
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->a(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->b(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->c(Lcom/oplus/camera/ui/k$a;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 186
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->d(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 189
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->e(Lcom/oplus/camera/ui/k$a;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/k;->A:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    .line 190
    invoke-static {p3}, Lcom/oplus/camera/ui/k$a;->f(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/k;->B:Landroid/widget/RelativeLayout;

    .line 191
    iget-boolean p1, p0, Lcom/oplus/camera/ui/k;->v:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/k;->c(Z)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->A:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    .line 194
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->B:Landroid/widget/RelativeLayout;

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/ui/k;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/ui/k$a;Lcom/oplus/c/a/b/a;)V
    .locals 2

    .line 201
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->a(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->g(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/k;->a(Landroid/view/View;II)V

    goto :goto_0

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/k;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 205
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->a(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->g(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/k;->a(Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/oplus/camera/ui/k;->y:Z

    goto :goto_0

    .line 209
    :cond_1
    new-instance v0, Lcom/oplus/camera/ui/k$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/oplus/camera/ui/k$1;-><init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V

    const-string p1, "GalleryPreviewAdapter setImage"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    .line 502
    new-instance v0, Lcom/oplus/camera/ui/k$8;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/k$8;-><init>(Lcom/oplus/camera/ui/k;Z)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(I)Lcom/oplus/c/a/b/a;
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 150
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/b/a;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->j()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    move v0, p1

    :goto_0
    if-ltz v0, :cond_3

    .line 159
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/c/a/b/a;

    invoke-virtual {v3}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/c/a/b/a;

    invoke-virtual {v2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    return-object p0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->w:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->u:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->A:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/k;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->B:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/k;)Ljava/util/HashMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->e()Lcom/oplus/c/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/c/a/d;

    if-eqz v1, :cond_1

    .line 539
    invoke-virtual {v1}, Lcom/oplus/c/a/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    invoke-virtual {v1}, Lcom/oplus/c/a/d;->c()V

    .line 542
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/k$d;

    if-eqz p0, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k$d;->b()V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 650
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Pre Build"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 652
    new-instance v1, Lcom/oplus/camera/ui/k$e;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/k$e;-><init>(Lcom/oplus/camera/ui/k;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/k;->z:Lcom/oplus/camera/ui/k$e;

    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/k$e;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->z:Lcom/oplus/camera/ui/k$e;

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->z:Lcom/oplus/camera/ui/k$e;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/oplus/camera/ui/k$e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lcom/oplus/camera/ui/k;->z:Lcom/oplus/camera/ui/k$e;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/k;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/ui/k;->k()V

    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/ui/k;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/ui/k;->h:Z

    return p0
.end method

.method static synthetic o(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->x:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/ui/k;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/ui/k;->v:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/oplus/c/a/b/a;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 723
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    return-object p0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/ui/k$a;
    .locals 3

    const-string v0, "GalleryPreviewAdapter"

    const-string v1, "onCreateViewHolder"

    .line 113
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 116
    new-instance v0, Lcom/oplus/camera/ui/k$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/camera/ui/k$a;-><init>(Lcom/oplus/camera/ui/k;Landroid/view/View;I)V

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 484
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    .line 487
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurThumbImage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryPreviewAdapter"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;Z)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    .line 687
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 688
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/k;->k:Landroid/graphics/Bitmap;

    const/16 v0, 0x2f

    .line 689
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    new-instance v11, Lcom/oplus/c/a/b/a;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "-1"

    move-object v2, v11

    move-object v3, v0

    invoke-direct/range {v2 .. v10}, Lcom/oplus/c/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJZZ)V

    .line 693
    iget-object v2, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 694
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    .line 697
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 701
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->d()V

    .line 703
    iget-object v2, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 704
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v3, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .line 706
    iget-object v4, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 708
    iput v1, v0, Landroid/os/Message;->what:I

    .line 709
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 710
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 711
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addThumbnail, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", path: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dataList size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    .line 715
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryPreviewAdapter"

    .line 714
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 712
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/inverse/InverseLinearLayout;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1063
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1064
    iget v0, p0, Lcom/oplus/camera/ui/k;->f:I

    iget v1, p0, Lcom/oplus/camera/ui/k;->e:I

    if-le v0, v1, :cond_1

    .line 1065
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    const/4 p0, 0x1

    .line 1066
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;->setInverseColor(Z)V

    goto :goto_0

    .line 1068
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 368
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 369
    invoke-direct {p0}, Lcom/oplus/camera/ui/k;->l()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/k$a;I)V
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder, position:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/k;->d(I)Lcom/oplus/c/a/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "onBindViewHolder, mediaItem is null"

    .line 130
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    .line 135
    invoke-direct {p0, p2, v2, p1}, Lcom/oplus/camera/ui/k;->a(ZZLcom/oplus/camera/ui/k$a;)V

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k$a;Lcom/oplus/c/a/b/a;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/c/a/b/a;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->k()Z

    move-result p2

    invoke-direct {p0, v2, p2, p1}, Lcom/oplus/camera/ui/k;->a(ZZLcom/oplus/camera/ui/k$a;)V

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k$a;Lcom/oplus/c/a/b/a;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/k$a;Lcom/oplus/c/a/b/a;)V
    .locals 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideo, video path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->b()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 256
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->b()I

    move-result v0

    .line 257
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->c()I

    move-result v2

    .line 259
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->a()I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->c()I

    move-result v0

    .line 261
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->b()I

    move-result v2

    .line 264
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->c(Lcom/oplus/camera/ui/k$a;)Landroid/view/TextureView;

    move-result-object v3

    invoke-direct {p0, v3, v2, v0}, Lcom/oplus/camera/ui/k;->a(Landroid/view/View;II)V

    .line 267
    :cond_1
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->e(Lcom/oplus/camera/ui/k$a;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/inverse/InverseLinearLayout;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideo, id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rotation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p2}, Lcom/oplus/c/a/b/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->c(Lcom/oplus/camera/ui/k$a;)Landroid/view/TextureView;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/k$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/ui/k$5;-><init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/k$c;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->n:Lcom/oplus/camera/ui/k$c;

    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 453
    iget-object p2, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 454
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/c/a/b/a;

    invoke-virtual {p1}, Lcom/oplus/c/a/b/a;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 455
    new-instance p1, Lcom/oplus/camera/ui/k$6;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/k$6;-><init>(Lcom/oplus/camera/ui/k;)V

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 470
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->aR()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 471
    new-instance p2, Lcom/oplus/camera/ui/k$7;

    invoke-direct {p2, p0, p1, p3}, Lcom/oplus/camera/ui/k$7;-><init>(Lcom/oplus/camera/ui/k;Ljava/lang/String;I)V

    const-string p1, "GalleryPreviewAdapter addItem"

    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/c/a/b/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/oplus/camera/ui/k;->i:Z

    if-nez p1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 422
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->notifyDataSetChanged()V

    return-void

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    .line 434
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataList, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", first mediaItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", last mediaItem: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    .line 434
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    move p1, v2

    .line 444
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/b/a;

    .line 446
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 449
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/oplus/camera/ui/k;->notifyItemRangeChanged(II)V

    return-void

    :catchall_1
    move-exception p0

    .line 440
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public a(Z)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShouldShowGallery, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iput-boolean p1, p0, Lcom/oplus/camera/ui/k;->i:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/oplus/camera/ui/k;->i:Z

    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/oplus/camera/ui/k;->v:Z

    .line 492
    invoke-direct {p0}, Lcom/oplus/camera/ui/k;->j()V

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/k;->c(Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeItem, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/b/a;

    .line 761
    new-instance v1, Lcom/oplus/camera/ui/k$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/oplus/camera/ui/k$10;-><init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;I)V

    const-string p1, "GalleryPreviewAdapter removemediaItem"

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/ui/k;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oplus/camera/ui/k$a;)V
    .locals 2

    .line 374
    invoke-static {p1}, Lcom/oplus/camera/ui/k$a;->a(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1033
    iput-boolean p1, p0, Lcom/oplus/camera/ui/k;->h:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/oplus/camera/ui/k;->v:Z

    const/4 v0, 0x1

    .line 498
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/k;->c(Z)V

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    invoke-virtual {p0}, Lcom/oplus/c/a/b/a;->j()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 664
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/c/a/b/a;

    invoke-virtual {v1}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 668
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 670
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/c/a/b/a;

    .line 672
    iget-object v3, p0, Lcom/oplus/camera/ui/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 676
    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 678
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->u:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 668
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public e()Lcom/oplus/c/a/b/a;
    .locals 2

    .line 727
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->i()I

    move-result v0

    .line 729
    iget-object v1, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()Lcom/oplus/c/a/b/a;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/k;->b(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 399
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/c/a/b/a;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 386
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/c/a/b/a;

    invoke-virtual {p0}, Lcom/oplus/c/a/b/a;->k()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public h()Z
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/k;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->f()Lcom/oplus/c/a/b/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1044
    invoke-virtual {p0}, Lcom/oplus/c/a/b/a;->j()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public i()I
    .locals 1

    .line 1074
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1078
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1081
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$j;->h()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 354
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 355
    iput-object p1, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 356
    iget-object p1, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 357
    iget-object p0, p0, Lcom/oplus/camera/ui/k;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 51
    check-cast p1, Lcom/oplus/camera/ui/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/k;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/ui/k$a;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 362
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 363
    invoke-direct {p0}, Lcom/oplus/camera/ui/k;->l()V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/oplus/camera/ui/k$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k$a;)V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/oplus/camera/ui/k$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k$a;)V

    return-void
.end method

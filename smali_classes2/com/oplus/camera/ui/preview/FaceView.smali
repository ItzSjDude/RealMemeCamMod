.class public Lcom/oplus/camera/ui/preview/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/m;


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:[Landroid/hardware/camera2/params/Face;

.field private F:[Landroid/hardware/camera2/params/Face;

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/animation/ValueAnimator;

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:F

.field private volatile Q:Z

.field private R:I

.field private volatile S:I

.field private T:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private U:I

.field private V:Lcom/oplus/camera/ui/preview/k;

.field private W:F

.field private a:I

.field private aa:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Rect;

.field private h:[Landroid/graphics/Rect;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/RectF;

.field private k:[Landroid/hardware/camera2/params/Face;

.field private l:[Landroid/hardware/camera2/params/Face;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:[I

.field private p:[I

.field private q:[I

.field private r:J

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 75
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->d:Z

    .line 77
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    .line 85
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->n:I

    const-wide/16 v1, 0x0

    .line 89
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->r:J

    .line 90
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    .line 91
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->t:Z

    const/4 v3, 0x1

    .line 92
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    .line 93
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->v:Z

    .line 94
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->w:J

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    .line 96
    iput v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 97
    iput v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    .line 98
    iput v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    .line 99
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->B:I

    .line 100
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    .line 101
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    .line 102
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    .line 103
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    .line 104
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    .line 107
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    .line 108
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    const/16 v4, 0x20

    .line 109
    iput v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    const/16 v4, 0xff

    .line 110
    iput v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    .line 111
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    .line 112
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    .line 113
    iput v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    .line 114
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->Q:Z

    .line 115
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->R:I

    .line 116
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->S:I

    .line 117
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    .line 118
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->U:I

    .line 119
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    .line 120
    iput v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->W:F

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->aa:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700ae

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->R:I

    .line 126
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    .line 127
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 129
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 132
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    .line 134
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    .line 135
    new-instance p2, Lcom/oplus/camera/ui/preview/k;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/k;-><init>(Lcom/oplus/camera/ui/preview/FaceView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070d26

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->W:F

    const p2, 0x7f0804a0

    .line 137
    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->aa:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->k()V

    :cond_0
    return-void
.end method

.method private a(II)I
    .locals 0

    sub-int/2addr p2, p1

    .line 272
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private a(IIII)I
    .locals 0

    sub-int/2addr p3, p1

    mul-int/2addr p3, p3

    sub-int/2addr p4, p2

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p0, p3

    .line 276
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private a(Landroid/graphics/Rect;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 295
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 296
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method private a(Landroid/hardware/camera2/params/Face;)I
    .locals 1

    .line 284
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 285
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method private a(I)V
    .locals 6

    .line 880
    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->B:I

    const/high16 v2, 0x42c80000    # 100.0f

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->y:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    div-float/2addr v0, v2

    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 886
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->B:I

    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    .line 889
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 890
    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 891
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 892
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 893
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 894
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 895
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 896
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 897
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 898
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 899
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 3

    .line 977
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->v:Z

    if-nez v0, :cond_0

    return-void

    .line 981
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 983
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 984
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 987
    :cond_2
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 988
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 989
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 990
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 993
    :cond_4
    :goto_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 994
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 995
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 996
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 999
    :cond_6
    :goto_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 1000
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getBottom()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 1001
    :cond_7
    iget p0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_8

    .line 1002
    iput v1, p1, Landroid/graphics/RectF;->top:F

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/FaceView;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->a(I)V

    return-void
.end method

.method private a([Landroid/hardware/camera2/params/Face;)V
    .locals 11

    .line 197
    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->n:I

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_1

    .line 200
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->n:I

    .line 201
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->o:[I

    .line 202
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->p:[I

    .line 203
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->q:[I

    move v0, v3

    .line 205
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 206
    aget-object v1, p1, v0

    .line 207
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->o:[I

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v5, v6}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v5

    aput v5, v4, v0

    .line 208
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->p:[I

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v5, v6}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v5

    aput v5, v4, v0

    .line 209
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->q:[I

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/hardware/camera2/params/Face;)I

    move-result v1

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    move v0, v2

    :goto_1
    move v1, v0

    move v0, v3

    .line 217
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 218
    aget-object v4, p1, v0

    .line 219
    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v5, v6}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v5

    .line 220
    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v6

    .line 221
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/hardware/camera2/params/Face;)I

    move-result v4

    .line 225
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/FaceView;->q:[I

    aget v8, v7, v0

    const v9, 0x3e99999a    # 0.3f

    if-lez v8, :cond_3

    int-to-float v8, v4

    .line 226
    aget v7, v7, v0

    int-to-float v7, v7

    div-float/2addr v8, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v7

    if-gez v10, :cond_2

    div-float v8, v7, v8

    :cond_2
    sub-float v7, v8, v7

    goto :goto_3

    :cond_3
    move v7, v9

    .line 235
    :goto_3
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->o:[I

    aget v8, v8, v0

    iget-object v10, p0, Lcom/oplus/camera/ui/preview/FaceView;->p:[I

    aget v10, v10, v0

    invoke-direct {p0, v5, v6, v8, v10}, Lcom/oplus/camera/ui/preview/FaceView;->a(IIII)I

    move-result v8

    const/16 v10, 0x104

    if-le v8, v10, :cond_4

    .line 237
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    :goto_4
    move v1, v2

    goto :goto_5

    :cond_4
    cmpl-float v7, v7, v9

    if-ltz v7, :cond_5

    .line 240
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 244
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/FaceView;->o:[I

    aput v5, v7, v0

    .line 245
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->p:[I

    aput v6, v5, v0

    .line 246
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->q:[I

    aput v4, v5, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 250
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-nez v1, :cond_8

    .line 252
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    if-eqz p1, :cond_8

    iget-wide v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->r:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0xbb8

    cmp-long p1, v4, v0

    if-lez p1, :cond_8

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    if-nez p1, :cond_8

    .line 253
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    .line 255
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz p0, :cond_a

    .line 256
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    goto :goto_6

    .line 259
    :cond_8
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-nez p1, :cond_9

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->w:J

    .line 262
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz p1, :cond_9

    .line 263
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 267
    :cond_9
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    :cond_a
    :goto_6
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/FaceView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/FaceView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    return p1
.end method

.method private a([Landroid/hardware/camera2/params/Face;[Landroid/hardware/camera2/params/Face;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 638
    array-length v1, p1

    if-lez v1, :cond_2

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    move v1, v0

    move v2, v1

    .line 639
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 640
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 641
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v4

    .line 642
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v5, v3}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v3

    .line 643
    aget-object v5, p1, v1

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/hardware/camera2/params/Face;)I

    move-result v5

    move v6, v0

    .line 645
    :goto_1
    array-length v7, p2

    if-ge v6, v7, :cond_1

    const/4 v7, -0x1

    .line 646
    aget-object v8, p2, v1

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v8

    if-eq v7, v8, :cond_0

    aget-object v7, p1, v1

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    aget-object v8, p2, v6

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 647
    aget-object v7, p2, v6

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 648
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v8, v9}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v8

    .line 649
    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v9, v7}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v7

    .line 650
    aget-object v6, p2, v6

    invoke-direct {p0, v6}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/hardware/camera2/params/Face;)I

    move-result v6

    .line 652
    invoke-direct {p0, v4, v3, v8, v7}, Lcom/oplus/camera/ui/preview/FaceView;->a(IIII)I

    move-result v3

    if-nez v3, :cond_1

    .line 653
    invoke-direct {p0, v5, v6}, Lcom/oplus/camera/ui/preview/FaceView;->a(II)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 663
    array-length p0, p2

    if-ne v2, p0, :cond_4

    array-length p0, p1

    if-eq v2, p0, :cond_6

    :cond_4
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_3
    return v0
.end method

.method private b(II)I
    .locals 0

    add-int/2addr p1, p2

    .line 280
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/FaceView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/FaceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private b([Landroid/hardware/camera2/params/Face;)V
    .locals 14

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->a([Landroid/hardware/camera2/params/Face;[Landroid/hardware/camera2/params/Face;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    .line 675
    iput v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    const/4 v1, 0x0

    .line 676
    iput v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    .line 677
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    .line 678
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    .line 679
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 682
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    if-eqz v2, :cond_8

    array-length p1, p1

    if-lez p1, :cond_8

    array-length p1, v2

    if-lez p1, :cond_8

    move p1, v1

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    array-length v3, v2

    if-ge p1, v3, :cond_8

    .line 687
    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 688
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v3

    .line 689
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v4

    .line 690
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/hardware/camera2/params/Face;)I

    move-result v5

    move v6, v1

    .line 692
    :goto_1
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    array-length v8, v7

    if-ge v6, v8, :cond_7

    const/4 v8, -0x1

    .line 693
    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    if-eq v8, v7, :cond_6

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    aget-object v7, v7, v6

    .line 694
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    iget-object v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    .line 695
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 696
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 697
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v8, v9}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v8

    .line 698
    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v9, v10}, Lcom/oplus/camera/ui/preview/FaceView;->b(II)I

    move-result v9

    .line 699
    iget-object v10, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    aget-object v10, v10, v6

    invoke-direct {p0, v10}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/hardware/camera2/params/Face;)I

    move-result v10

    .line 700
    invoke-direct {p0, v5, v10}, Lcom/oplus/camera/ui/preview/FaceView;->a(II)I

    .line 701
    invoke-direct {p0, v3, v4, v8, v9}, Lcom/oplus/camera/ui/preview/FaceView;->a(IIII)I

    move-result v8

    const/4 v9, 0x0

    if-lez v5, :cond_2

    int-to-float v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    int-to-float v11, v5

    div-float/2addr v9, v11

    cmpg-float v11, v9, v10

    if-gez v11, :cond_1

    div-float v9, v10, v9

    :cond_1
    sub-float/2addr v9, v10

    :cond_2
    const/4 v10, 0x2

    if-gt v8, v10, :cond_3

    const v10, 0x3c23d70a    # 0.01f

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v8, v8

    const/high16 v10, 0x41f00000    # 30.0f

    div-float/2addr v8, v10

    const/high16 v10, 0x42000000    # 32.0f

    mul-float/2addr v8, v10

    float-to-int v8, v8

    const/16 v11, 0x60

    .line 719
    invoke-static {v8, v0, v11}, Lcom/oplus/camera/util/Util;->a(III)I

    move-result v8

    mul-float/2addr v9, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/16 v10, 0xa0

    .line 721
    invoke-static {v9, v0, v10}, Lcom/oplus/camera/util/Util;->a(III)I

    move-result v9

    .line 724
    iget v10, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    if-le v8, v10, :cond_4

    .line 725
    iput v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    .line 728
    :cond_4
    iget v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    if-le v9, v8, :cond_5

    .line 729
    iput v9, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    :cond_5
    const/4 v8, 0x1

    shl-int/2addr v8, v6

    .line 738
    iput v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    .line 739
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v13

    invoke-direct {v9, v10, v11, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 748
    :cond_8
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    if-eqz p1, :cond_9

    .line 749
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 751
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    array-length v0, p1

    if-ge v1, v0, :cond_9

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    aget-object v3, v3, v1

    .line 753
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    aget-object v5, v5, v1

    .line 754
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 752
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/FaceView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/FaceView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/FaceView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/FaceView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/FaceView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->B:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/FaceView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    return p0
.end method

.method private h()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private i()V
    .locals 3

    .line 617
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 621
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    const/16 v1, 0xff

    .line 622
    iput v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 623
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/ui/preview/FaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 624
    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    div-int/lit8 v2, v1, 0x10

    add-int/2addr v2, v0

    iput v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->B:I

    const/4 v0, 0x0

    .line 625
    iput v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->C:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 626
    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->B:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->y:F

    .line 628
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    int-to-long v1, v1

    .line 629
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 630
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    .line 769
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 773
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    .line 775
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 779
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 780
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    .line 781
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 4

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 794
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    .line 795
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->L:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 796
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 797
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/preview/FaceView$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/FaceView$1;-><init>(Lcom/oplus/camera/ui/preview/FaceView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 821
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/preview/FaceView$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/FaceView$2;-><init>(Lcom/oplus/camera/ui/preview/FaceView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 845
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    .line 846
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 848
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/FaceView$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/FaceView$3;-><init>(Lcom/oplus/camera/ui/preview/FaceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 856
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/FaceView$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/FaceView$4;-><init>(Lcom/oplus/camera/ui/preview/FaceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private l()V
    .locals 2

    .line 910
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 914
    iput v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    const/4 v0, 0x0

    .line 915
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->E:[Landroid/hardware/camera2/params/Face;

    .line 916
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->F:[Landroid/hardware/camera2/params/Face;

    .line 917
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->l:[Landroid/hardware/camera2/params/Face;

    .line 918
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    .line 920
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 928
    :cond_2
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->J:Landroid/animation/ValueAnimator;

    .line 929
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->K:Landroid/animation/ValueAnimator;

    .line 931
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 932
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 933
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->G:Ljava/util/ArrayList;

    .line 936
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 937
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 938
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    .line 941
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 942
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 943
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->I:Ljava/util/HashMap;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->b:I

    .line 327
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    .line 349
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/k;->a(Landroid/util/Size;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    .line 390
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/k;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(ZF)V
    .locals 1

    .line 972
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->v:Z

    .line 973
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->x:F

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    const-string p1, "FaceView"

    const-string p2, "showSuccess()"

    .line 404
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    return-void
.end method

.method public a([Landroid/hardware/camera2/params/Face;[I)V
    .locals 5

    .line 145
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/preview/k;->a([I)V

    if-eqz p1, :cond_8

    .line 151
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/k;->b()Z

    move-result p2

    if-nez p2, :cond_8

    .line 152
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->l:[Landroid/hardware/camera2/params/Face;

    .line 153
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    .line 154
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->a([Landroid/hardware/camera2/params/Face;)V

    .line 156
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->h()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 157
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    if-eqz p1, :cond_1

    return-void

    .line 161
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    .line 166
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->b([Landroid/hardware/camera2/params/Face;)V

    .line 169
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->D:I

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    if-nez p1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->i()V

    goto/16 :goto_1

    .line 171
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->w:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x64

    cmp-long p1, p1, v0

    const/16 p2, 0xff

    if-lez p1, :cond_5

    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    if-ne p1, p2, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->t:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_4

    array-length p1, p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-nez p1, :cond_5

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->j()V

    goto :goto_1

    .line 176
    :cond_5
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->N:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->l:[Landroid/hardware/camera2/params/Face;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/FaceView;->a([Landroid/hardware/camera2/params/Face;[Landroid/hardware/camera2/params/Face;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-eqz p1, :cond_8

    .line 177
    iput p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    .line 178
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 180
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    array-length v0, p2

    if-ge p1, v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    aget-object v3, v3, p1

    .line 182
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 185
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    goto :goto_1

    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    :cond_8
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_0

    const-string v0, "FaceView"

    const-string v1, "clear()"

    .line 421
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    const/4 v0, 0x0

    .line 424
    iput v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->n:I

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 436
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    .line 437
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "FaceView"

    const-string v1, "pause()"

    .line 442
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->e:Z

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "FaceView"

    const-string v1, "resume()"

    .line 448
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->e:Z

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->e:Z

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    .line 456
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    .line 457
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    .line 458
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    .line 459
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    .line 460
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/FaceView;->l()V

    .line 462
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/k;->d()V

    .line 466
    :cond_0
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    return-void
.end method

.method public f()Z
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->O:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public g()V
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    if-eqz p0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/k;->a()V

    :cond_0
    return-void
.end method

.method public getFaceRects()[Landroid/graphics/Rect;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->t:Z

    .line 475
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_1

    .line 478
    array-length v1, v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 482
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 485
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/ui/preview/k;->a(Landroid/graphics/Canvas;)V

    if-lez v1, :cond_14

    .line 488
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 489
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->c:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    iget-boolean v6, p0, Lcom/oplus/camera/ui/preview/FaceView;->d:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 490
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->a:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 491
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 492
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 491
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 493
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 497
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    move v2, v0

    move v3, v2

    :goto_3
    if-ge v2, v1, :cond_7

    .line 502
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 503
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 505
    :cond_5
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->k:[Landroid/hardware/camera2/params/Face;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 512
    :goto_4
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/FaceView;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 513
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/FaceView;->f:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 519
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 520
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/oplus/camera/ui/preview/FaceView;->j:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 521
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/graphics/Rect;)I

    move-result v5

    if-lt v5, v3, :cond_6

    move v3, v5

    .line 527
    :cond_6
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 530
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    array-length v3, v2

    if-lez v3, :cond_8

    .line 531
    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 534
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->U:I

    if-le v1, v2, :cond_9

    .line 535
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_5

    .line 538
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->l:[Landroid/hardware/camera2/params/Face;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    array-length v3, v3

    array-length v2, v2

    if-eq v3, v2, :cond_a

    .line 539
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 540
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 543
    :cond_a
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_f

    move v1, v0

    .line 544
    :goto_6
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->h:[Landroid/graphics/Rect;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 551
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->T:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Rect;

    .line 552
    array-length v9, v8

    if-le v9, v1, :cond_b

    .line 553
    aget-object v9, v8, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_7

    .line 556
    :cond_c
    aget-object v9, v8, v1

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v9

    .line 557
    aget-object v9, v8, v1

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    .line 558
    aget-object v9, v8, v1

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v9

    .line 559
    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_e

    .line 565
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    .line 566
    new-instance v8, Landroid/graphics/RectF;

    div-int/2addr v4, v3

    int-to-float v4, v4

    div-int/2addr v5, v3

    int-to-float v5, v5

    div-int/2addr v6, v3

    int-to-float v6, v6

    div-int/2addr v7, v3

    int-to-float v3, v7

    invoke-direct {v8, v4, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 579
    :cond_f
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_9

    .line 583
    :cond_10
    :goto_8
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 584
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->u:Z

    if-eqz v1, :cond_12

    .line 585
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    if-nez v1, :cond_11

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->r:J

    :cond_11
    const/4 v1, 0x1

    .line 589
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->s:Z

    .line 590
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->t:Z

    .line 591
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 592
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 593
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/graphics/RectF;)V

    .line 594
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->aa:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 595
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->aa:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 596
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->aa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    :goto_9
    return-void

    .line 601
    :cond_14
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/oplus/camera/ui/preview/FaceView;->M:I

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    :cond_15
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 606
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 609
    :cond_16
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->a:I

    .line 312
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/k;->a(I)V

    return-void
.end method

.method public setEISScale(F)V
    .locals 2

    .line 357
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    .line 358
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->U:I

    return-void
.end method

.method public setFacePointAnimationListener(Lcom/oplus/camera/ui/preview/k$b;)V
    .locals 0

    .line 966
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    if-eqz p0, :cond_0

    .line 967
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/k;->a(Lcom/oplus/camera/ui/preview/k$b;)V

    :cond_0
    return-void
.end method

.method public setFaceSlenderZoomValue(F)V
    .locals 2

    .line 375
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    .line 376
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->U:I

    return-void
.end method

.method public setMainFaceIndex(I)V
    .locals 0

    .line 952
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->S:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->c:Z

    .line 332
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView;->V:Lcom/oplus/camera/ui/preview/k;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/k;->a(Z)V

    return-void
.end method

.method public setRearMirrorEnable(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->d:Z

    return-void
.end method

.method public setShowBeauty3DFace(Z)V
    .locals 0

    .line 948
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->Q:Z

    return-void
.end method

.method public setZoomValue(F)V
    .locals 2

    .line 366
    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    .line 367
    iget p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->z:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->P:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/preview/FaceView;->A:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/oplus/camera/ui/preview/FaceView;->U:I

    return-void
.end method

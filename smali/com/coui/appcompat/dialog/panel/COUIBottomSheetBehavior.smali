.class public Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.source "COUIBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;,
        Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;,
        Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final E:I


# instance fields
.field private A:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private B:Z

.field private C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior<",
            "TV;>.b;"
        }
    .end annotation
.end field

.field private D:Landroid/animation/ValueAnimator;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:I

.field private J:Z

.field private final K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;",
            ">;"
        }
    .end annotation
.end field

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/coui/appcompat/dialog/panel/g;

.field private Q:Z

.field private R:Z

.field private S:I

.field private final T:Landroidx/customview/a/c$a;

.field a:I

.field b:I

.field c:I

.field d:F

.field e:I

.field f:F

.field g:Z

.field h:I

.field i:Landroidx/customview/a/c;

.field j:I

.field k:I

.field l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Z

.field p:Lcom/coui/appcompat/dialog/panel/e;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:F

.field private u:I

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->E:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 345
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    const/4 v1, 0x1

    .line 235
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    .line 237
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->s:Z

    const/4 v2, 0x0

    .line 272
    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 285
    iput v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 289
    iput v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->f:F

    .line 295
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    const/4 v1, 0x4

    .line 297
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    .line 343
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->S:I

    .line 1460
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$5;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->T:Landroidx/customview/a/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    const/4 v1, 0x1

    .line 235
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    .line 237
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->s:Z

    const/4 v2, 0x0

    .line 272
    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 285
    iput v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 289
    iput v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->f:F

    .line 295
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    const/4 v4, 0x4

    .line 297
    iput v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    .line 343
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->S:I

    .line 1460
    new-instance v4, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$5;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$5;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)V

    iput-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->T:Landroidx/customview/a/c$a;

    .line 350
    sget-object v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 351
    sget v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->x:Z

    .line 352
    sget v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    .line 355
    invoke-static {p1, v4, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 357
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0, p1, p2, v5}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 361
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->f()V

    .line 363
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt p2, v5, :cond_1

    .line 364
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v4, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->f:F

    .line 367
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v4, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/4 v3, -0x1

    if-eqz p2, :cond_2

    .line 368
    iget v5, p2, Landroid/util/TypedValue;->data:I

    if-ne v5, v3, :cond_2

    .line 369
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(I)V

    goto :goto_1

    .line 371
    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 372
    invoke-virtual {v4, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 371
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(I)V

    .line 375
    :goto_1
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setHideable(Z)V

    .line 376
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    .line 377
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 376
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    .line 378
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 379
    invoke-virtual {v4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 378
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setFitToContents(Z)V

    .line 380
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 381
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 380
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Z)V

    .line 382
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setDraggable(Z)V

    .line 383
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v4, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setSaveFlags(I)V

    .line 384
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 385
    invoke-virtual {v4, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 384
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 387
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v4, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 388
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 389
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_2

    .line 391
    :cond_3
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    .line 392
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 391
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setExpandedOffset(I)V

    .line 395
    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->t:F

    .line 398
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->R:Z

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->S:I

    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Landroid/view/View;)I
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0
.end method

.method private a(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 872
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->v:Z

    if-nez p1, :cond_1

    .line 873
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->v:Z

    goto :goto_1

    .line 876
    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->v:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 877
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->v:Z

    .line 878
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    :goto_1
    if-eqz v0, :cond_4

    .line 883
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    .line 884
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c()V

    .line 885
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 886
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 889
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c(I)V

    goto :goto_2

    .line 891
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1313
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .locals 2

    .line 1321
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->x:Z

    if-eqz v0, :cond_1

    .line 1322
    sget v0, Lcom/google/android/material/R$attr;->bottomSheetStyle:I

    sget v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->E:I

    .line 1323
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 1324
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->A:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1326
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->A:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1327
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1330
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1333
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 1334
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010031

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1335
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget p1, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 1416
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;

    const-string v1, "offsetTopAndBottom"

    invoke-direct {v0, p0, v1, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Ljava/lang/String;Landroid/view/View;)V

    .line 1430
    new-instance v1, Landroidx/dynamicanimation/a/b;

    invoke-direct {v1, p1, v0}, Landroidx/dynamicanimation/a/b;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/a/d;)V

    .line 1431
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g()F

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/a/b;->c(F)Landroidx/dynamicanimation/a/b;

    move-result-object v0

    const v1, 0x459c4000    # 5000.0f

    .line 1432
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/a/b;->d(F)Landroidx/dynamicanimation/a/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 1433
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/a/b;->a(F)Landroidx/dynamicanimation/a/b;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    .line 1434
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/a/b;->b(F)Landroidx/dynamicanimation/a/b;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$4;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)V

    .line 1435
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/a/b;->a(Landroidx/dynamicanimation/a/c$b;)Landroidx/dynamicanimation/a/c;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/a/b;

    .line 1441
    invoke-virtual {p0}, Landroidx/dynamicanimation/a/b;->a()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    if-nez v0, :cond_0

    .line 1447
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;->a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    iput p2, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;->a:I

    .line 1452
    invoke-static {p1, v0}, Landroidx/core/h/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1453
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;->a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;Z)Z

    goto :goto_0

    .line 1456
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->C:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$b;->a:I

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/h/a/d$a;",
            "I)V"
        }
    .end annotation

    .line 1905
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;

    invoke-direct {v0, p0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;I)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/a/d$a;Ljava/lang/CharSequence;Landroidx/core/h/a/g;)V

    return-void
.end method

.method private a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 2

    .line 1356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 1360
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    :cond_0
    return-void
.end method

.method private a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;)V
    .locals 3

    .line 1261
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1265
    :cond_1
    iget v0, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->peekHeight:I

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    .line 1267
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 1269
    :cond_3
    iget-boolean v0, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->fitToContents:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    .line 1271
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    .line 1272
    :cond_5
    iget-boolean v0, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    .line 1274
    :cond_6
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 1276
    :cond_7
    iget-boolean p1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->F:Z

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->Q:Z

    return p1
.end method

.method private b()I
    .locals 2

    .line 1232
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->v:Z

    if-eqz v0, :cond_0

    .line 1233
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->w:I

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->j:I

    mul-int/lit8 p0, p0, 0x9

    div-int/lit8 p0, p0, 0x10

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1235
    :cond_0
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    return p0
.end method

.method private b(Landroid/view/View;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1922
    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 1923
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->S:I

    return p0
.end method

.method private b(Z)V
    .locals 7

    .line 1814
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1818
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1819
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    .line 1823
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1824
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1825
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    .line 1826
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->O:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 1827
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->O:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    .line 1835
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1836
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    .line 1842
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_5

    .line 1843
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->O:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    :cond_5
    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->s:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    .line 1846
    invoke-static {v4, v5}, Landroidx/core/h/v;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1850
    :cond_6
    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->s:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->O:Ljava/util/Map;

    if-eqz v5, :cond_7

    .line 1852
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1854
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->O:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/h/v;->b(Landroid/view/View;I)V

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 1860
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->O:Ljava/util/Map;

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->R:Z

    return p1
.end method

.method private c()V
    .locals 2

    .line 1239
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b()I

    move-result v0

    .line 1241
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz v1, :cond_0

    .line 1242
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    goto :goto_0

    .line 1244
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1154
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1155
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/core/h/v;->D(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1157
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$1;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1165
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->settleToState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    return p0
.end method

.method static synthetic d(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/dialog/panel/g;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->P:Lcom/coui/appcompat/dialog/panel/g;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1249
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    return-void
.end method

.method private d(I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1216
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->B:Z

    if-eq v1, p1, :cond_4

    .line 1217
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->B:Z

    .line 1218
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 1219
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    sub-float/2addr v1, p1

    .line 1224
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    aput v1, v0, v3

    aput p1, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1225
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, -0x1

    .line 1253
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->n:I

    .line 1254
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1256
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    return p0
.end method

.method static synthetic f(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)F
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g()F

    move-result p0

    return p0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x2

    .line 1341
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    .line 1342
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1343
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$2;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private g()F
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 1369
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->t:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1370
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->n:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    return p0
.end method

.method private h()V
    .locals 5

    .line 1865
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1868
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x80000

    .line 1872
    invoke-static {v0, v1}, Landroidx/core/h/v;->c(Landroid/view/View;I)V

    const/high16 v1, 0x40000

    .line 1873
    invoke-static {v0, v1}, Landroidx/core/h/v;->c(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    .line 1874
    invoke-static {v0, v1}, Landroidx/core/h/v;->c(Landroid/view/View;I)V

    .line 1876
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 1877
    sget-object v1, Landroidx/core/h/a/d$a;->u:Landroidx/core/h/a/d$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V

    .line 1880
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 1888
    :cond_3
    sget-object v1, Landroidx/core/h/a/d$a;->t:Landroidx/core/h/a/d$a;

    invoke-direct {p0, v0, v1, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V

    .line 1890
    sget-object v1, Landroidx/core/h/a/d$a;->s:Landroidx/core/h/a/d$a;

    invoke-direct {p0, v0, v1, v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V

    goto :goto_0

    .line 1895
    :cond_4
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz v1, :cond_5

    move v2, v4

    .line 1896
    :cond_5
    sget-object v1, Landroidx/core/h/a/d$a;->s:Landroidx/core/h/a/d$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V

    goto :goto_0

    .line 1882
    :cond_6
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz v1, :cond_7

    move v2, v3

    .line 1883
    :cond_7
    sget-object v1, Landroidx/core/h/a/d$a;->t:Landroidx/core/h/a/d$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->F:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 856
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(IZ)V

    return-void
.end method

.method public a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;)V
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/coui/appcompat/dialog/panel/e;)V
    .locals 0

    .line 1944
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->p:Lcom/coui/appcompat/dialog/panel/e;

    return-void
.end method

.method public a(Lcom/coui/appcompat/dialog/panel/g;)V
    .locals 0

    .line 1966
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->P:Lcom/coui/appcompat/dialog/panel/g;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1009
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->F:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 1953
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->R:Z

    return p0
.end method

.method public b(I)V
    .locals 1

    .line 1112
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 1117
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1121
    :cond_1
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    :cond_2
    return-void

    .line 1125
    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c(I)V

    return-void
.end method

.method public disableShapeAnimations()V
    .locals 1

    const/4 v0, 0x0

    .line 1672
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->D:Landroid/animation/ValueAnimator;

    return-void
.end method

.method dispatchOnSlide(I)V
    .locals 3

    .line 1644
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1645
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1646
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    if-gt p1, v1, :cond_1

    .line 1647
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    .line 1649
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_1

    .line 1647
    :cond_1
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    :goto_1
    div-float/2addr p1, v1

    const/4 v1, 0x0

    .line 1650
    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1651
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;

    invoke-virtual {v2, v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;->a(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1296
    invoke-static {p1}, Landroidx/core/h/v;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1299
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1300
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1301
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1302
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedOffset()I
    .locals 1

    .line 969
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a:I

    :goto_0
    return p0
.end method

.method public getHalfExpandedRatio()F
    .locals 0

    .line 941
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d:F

    return p0
.end method

.method public getPeekHeight()I
    .locals 1

    .line 907
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->v:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->u:I

    :goto_0
    return p0
.end method

.method getPeekHeightMin()I
    .locals 0

    .line 1658
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->w:I

    return p0
.end method

.method public getSaveFlags()I
    .locals 0

    .line 1059
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    return p0
.end method

.method public getSkipCollapsed()Z
    .locals 0

    .line 1021
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->F:Z

    return p0
.end method

.method public getState()I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1178
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    return p0
.end method

.method public isDraggable()Z
    .locals 0

    .line 1036
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    return p0
.end method

.method public isFitToContents()Z
    .locals 0

    .line 820
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    return p0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 0

    .line 1145
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->z:Z

    return p0
.end method

.method public isHideable()Z
    .locals 0

    .line 997
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    return p0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 0

    .line 424
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 428
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    .line 433
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onDetachedFromLayoutParams()V

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 436
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 509
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 513
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e()V

    .line 518
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 519
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    .line 521
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_4

    goto :goto_2

    .line 524
    :cond_3
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->P:Lcom/coui/appcompat/dialog/panel/g;

    if-eqz p2, :cond_4

    .line 525
    invoke-interface {p2}, Lcom/coui/appcompat/dialog/panel/g;->a()V

    .line 528
    :cond_4
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->o:Z

    .line 529
    iput v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->n:I

    .line 531
    iget-boolean p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    if-eqz p2, :cond_9

    .line 532
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    return v1

    .line 537
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->M:I

    .line 538
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    .line 541
    iget v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-eq v6, v5, :cond_7

    .line 542
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_6
    move-object v6, v3

    :goto_0
    if-eqz v6, :cond_7

    .line 543
    iget v7, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->M:I

    iget v8, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    invoke-virtual {p1, v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 544
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->n:I

    .line 545
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->o:Z

    .line 548
    :cond_7
    iget v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->n:I

    if-ne v6, v4, :cond_8

    iget v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->M:I

    iget v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    .line 550
    invoke-virtual {p1, p2, v4, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_8

    move p2, v2

    goto :goto_1

    :cond_8
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    .line 554
    :cond_9
    :goto_2
    iget-boolean p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz p2, :cond_a

    .line 556
    invoke-virtual {p2, p3}, Landroidx/customview/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_a

    return v2

    .line 562
    :cond_a
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_b
    if-eqz v3, :cond_d

    if-ne v0, v5, :cond_c

    if-eqz v3, :cond_c

    .line 564
    iget-boolean p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    if-nez p2, :cond_c

    iget p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-eq p2, v2, :cond_c

    iget p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->M:I

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    .line 568
    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    int-to-float p1, p1

    .line 570
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {p0}, Landroidx/customview/a/c;->d()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_c

    move v1, v2

    :cond_c
    return v1

    :cond_d
    if-ne v0, v5, :cond_e

    .line 572
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    if-nez p1, :cond_e

    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-eq p1, v2, :cond_e

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    int-to-float p1, p1

    .line 576
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {p0}, Landroidx/customview/a/c;->d()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_e

    move v1, v2

    :cond_e
    return v1

    .line 510
    :cond_f
    :goto_3
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 442
    invoke-static {p1}, Landroidx/core/h/v;->t(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/h/v;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 449
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->w:I

    .line 450
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 451
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 454
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_1

    .line 455
    invoke-static {p2, v0}, Landroidx/core/h/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_5

    .line 460
    iget v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->f:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    .line 461
    invoke-static {p2}, Landroidx/core/h/v;->o(Landroid/view/View;)F

    move-result v4

    .line 460
    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 463
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-ne v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->B:Z

    .line 464
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->y:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->B:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 466
    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h()V

    .line 467
    invoke-static {p2}, Landroidx/core/h/v;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    .line 469
    invoke-static {p2, v1}, Landroidx/core/h/v;->b(Landroid/view/View;I)V

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    if-nez v0, :cond_7

    .line 473
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->T:Landroidx/customview/a/c$a;

    invoke-static {p1, v0}, Landroidx/customview/a/c;->a(Landroid/view/ViewGroup;Landroidx/customview/a/c$a;)Landroidx/customview/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    .line 476
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 478
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 480
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->j:I

    .line 481
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    .line 482
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->Q:Z

    if-nez p1, :cond_8

    .line 483
    invoke-direct {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(Landroid/view/View;)I

    move-result p1

    .line 484
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr p3, v4

    sub-int/2addr p3, p1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    .line 486
    :cond_8
    iput-boolean v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->Q:Z

    .line 487
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d()V

    .line 488
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c()V

    .line 490
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-ne p1, v2, :cond_9

    .line 491
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    goto :goto_2

    :cond_9
    const/4 p3, 0x6

    if-ne p1, p3, :cond_a

    .line 493
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    invoke-static {p2, p1}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    goto :goto_2

    .line 494
    :cond_a
    iget-boolean p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eqz p3, :cond_b

    const/4 p3, 0x5

    if-ne p1, p3, :cond_b

    .line 495
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    invoke-static {p2, p1}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    goto :goto_2

    .line 496
    :cond_b
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_c

    .line 497
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    invoke-static {p2, p1}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    goto :goto_2

    :cond_c
    if-eq p1, v1, :cond_d

    const/4 p3, 0x2

    if-ne p1, p3, :cond_e

    .line 499
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    .line 502
    :cond_e
    :goto_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 808
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p4, :cond_2

    return-void

    .line 641
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_5

    .line 644
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    if-ge p7, p3, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    .line 646
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    const/4 p3, 0x3

    .line 647
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 649
    :cond_3
    iget-boolean p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    if-nez p3, :cond_4

    return-void

    .line 654
    :cond_4
    aput p5, p6, p1

    neg-int p3, p5

    .line 655
    invoke-static {p2, p3}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    .line 656
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_5
    if-gez p5, :cond_a

    const/4 v0, -0x1

    .line 659
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_a

    .line 660
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    if-le p7, p3, :cond_7

    iget-boolean p7, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eqz p7, :cond_6

    goto :goto_1

    :cond_6
    sub-int/2addr p4, p3

    .line 673
    aput p4, p6, p1

    .line 674
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    const/4 p3, 0x4

    .line 675
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 661
    :cond_7
    :goto_1
    iget-boolean p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    if-nez p3, :cond_8

    return-void

    .line 666
    :cond_8
    aput p5, p6, p1

    const/16 p3, -0x64

    if-ge p5, p3, :cond_9

    int-to-float p3, p5

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    move p5, p3

    :cond_9
    neg-int p3, p5

    .line 670
    invoke-static {p2, p3}, Landroidx/core/h/v;->e(Landroid/view/View;I)V

    .line 671
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    .line 679
    :cond_a
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    .line 680
    iput p5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->I:I

    .line 681
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->J:Z

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 410
    check-cast p3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;

    .line 411
    invoke-virtual {p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 413
    invoke-direct {p0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;)V

    .line 415
    iget p1, p3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget p1, p3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget p1, p3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;->state:I

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 416
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 404
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    .line 619
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->I:I

    .line 620
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->J:Z

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 690
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    .line 691
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    return-void

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_11

    .line 695
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_11

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->J:Z

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 701
    :cond_1
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->I:I

    const/4 p3, 0x5

    const/4 p4, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x6

    if-lez p1, :cond_4

    .line 702
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz p1, :cond_2

    .line 703
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    goto/16 :goto_3

    .line 706
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 707
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    if-le p1, p3, :cond_3

    move p1, p3

    goto/16 :goto_1

    .line 711
    :cond_3
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a:I

    goto/16 :goto_3

    .line 715
    :cond_4
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 716
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->p:Lcom/coui/appcompat/dialog/panel/e;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/coui/appcompat/dialog/panel/e;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 717
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    .line 719
    iput-boolean p4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->R:Z

    goto/16 :goto_3

    .line 721
    :cond_5
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->R:Z

    :goto_0
    move v0, p3

    goto/16 :goto_3

    .line 725
    :cond_6
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->I:I

    if-nez p1, :cond_c

    .line 726
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 727
    iget-boolean p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz p3, :cond_8

    .line 728
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p3, p1, :cond_7

    .line 729
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    goto :goto_3

    .line 732
    :cond_7
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    goto :goto_2

    .line 736
    :cond_8
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    if-ge p1, p3, :cond_a

    .line 737
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p1, p3, :cond_9

    .line 738
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a:I

    goto :goto_3

    .line 741
    :cond_9
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    goto :goto_1

    :cond_a
    sub-int p3, p1, p3

    .line 745
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p3, p1, :cond_b

    .line 746
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    goto :goto_1

    .line 749
    :cond_b
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    goto :goto_2

    .line 755
    :cond_c
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz p1, :cond_f

    .line 756
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->p:Lcom/coui/appcompat/dialog/panel/e;

    if-eqz p1, :cond_e

    .line 757
    invoke-interface {p1}, Lcom/coui/appcompat/dialog/panel/e;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 758
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    goto :goto_3

    .line 761
    :cond_d
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    goto :goto_0

    .line 765
    :cond_e
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    goto :goto_2

    .line 770
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 771
    iget p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p3, p1, :cond_10

    .line 772
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    :goto_1
    move v0, v2

    goto :goto_3

    .line 775
    :cond_10
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    :goto_2
    move v0, v1

    .line 780
    :goto_3
    invoke-virtual {p0, p2, v0, p1, p4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 781
    iput-boolean p4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->J:Z

    :cond_11
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 586
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 587
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {v0, p3}, Landroidx/customview/a/c;->b(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    .line 595
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e()V

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 598
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    .line 600
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 603
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    if-nez p1, :cond_5

    .line 604
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->N:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroidx/customview/a/c;->d()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 605
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/a/c;->a(Landroid/view/View;I)V

    .line 608
    :cond_5
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->H:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 1032
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->G:Z

    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 958
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a:I

    return-void

    .line 956
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset must be greater than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFitToContents(Z)V
    .locals 1

    .line 831
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 834
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    .line 838
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c()V

    .line 842
    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    .line 844
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h()V

    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0

    .line 1138
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->z:Z

    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    .line 925
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d:F

    .line 928
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d()V

    :cond_0
    return-void

    .line 923
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ratio must be a float value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHideable(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 980
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eq v0, p1, :cond_1

    .line 981
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-nez p1, :cond_0

    .line 982
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 984
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(I)V

    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h()V

    :cond_1
    return-void
.end method

.method public setSaveFlags(I)V
    .locals 0

    .line 1048
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->q:I

    return-void
.end method

.method setStateInternal(I)V
    .locals 3

    .line 1182
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1185
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    .line 1187
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 1191
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    .line 1197
    invoke-direct {p0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1199
    :cond_4
    invoke-direct {p0, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(Z)V

    .line 1202
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d(I)V

    .line 1203
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 1204
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->K:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;

    invoke-virtual {v1, v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;->a(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1206
    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h()V

    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .locals 0

    .line 1810
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->s:Z

    return-void
.end method

.method settleToState(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1376
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 1378
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->c:I

    .line 1379
    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->r:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b:I

    if-gt v1, v2, :cond_1

    move p2, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 1385
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    goto :goto_0

    .line 1386
    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 1387
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->k:I

    :goto_0
    const/4 v1, 0x0

    .line 1391
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void

    .line 1389
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state argument: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4

    .line 1281
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1284
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 1288
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b()I

    move-result v0

    .line 1289
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    .line 1290
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->e:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getState()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p4, v0, p3}, Landroidx/customview/a/c;->a(II)Z

    move-result p3

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->i:Landroidx/customview/a/c;

    .line 1399
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p4, p1, v0, p3}, Landroidx/customview/a/c;->a(Landroid/view/View;II)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_2

    const/4 p3, 0x2

    .line 1401
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    .line 1403
    invoke-direct {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->d(I)V

    .line 1404
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->g()F

    move-result p3

    const/4 p4, 0x5

    if-ne p2, p4, :cond_1

    const p4, 0x461c4000    # 10000.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    .line 1406
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;)V

    goto :goto_1

    .line 1408
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 1411
    :cond_2
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :goto_1
    return-void
.end method

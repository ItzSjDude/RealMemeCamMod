.class public Lcom/coui/appcompat/dialog/app/a;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/a$c;,
        Lcom/coui/appcompat/dialog/app/a$a;,
        Lcom/coui/appcompat/dialog/app/a$d;,
        Lcom/coui/appcompat/dialog/app/a$b;
    }
.end annotation


# instance fields
.field A:Z

.field B:I

.field private final C:Landroid/content/Context;

.field private final D:I

.field private E:Landroid/view/View;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Z

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:I

.field private P:Landroid/graphics/drawable/Drawable;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/view/View;

.field private U:I

.field private V:Z

.field private W:I

.field private X:I

.field private final Y:Landroid/view/View$OnClickListener;

.field final a:Landroidx/appcompat/app/f;

.field final b:Landroid/view/Window;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Landroid/widget/ListView;

.field f:Landroid/widget/Button;

.field g:Ljava/lang/CharSequence;

.field h:Landroid/os/Message;

.field i:Landroid/widget/Button;

.field j:Ljava/lang/CharSequence;

.field k:Landroid/os/Message;

.field l:Landroid/widget/Button;

.field m:Ljava/lang/CharSequence;

.field n:Landroid/os/Message;

.field o:Landroid/widget/ScrollView;

.field p:Landroid/widget/ListAdapter;

.field q:I

.field protected r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:Landroid/os/Handler;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/f;Landroid/view/Window;)V
    .locals 3

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/a;->K:Z

    .line 125
    iput v0, p0, Lcom/coui/appcompat/dialog/app/a;->O:I

    const/4 v1, -0x1

    .line 135
    iput v1, p0, Lcom/coui/appcompat/dialog/app/a;->q:I

    .line 146
    iput v0, p0, Lcom/coui/appcompat/dialog/app/a;->W:I

    .line 148
    iput v0, p0, Lcom/coui/appcompat/dialog/app/a;->X:I

    .line 154
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/a;->x:Z

    .line 174
    new-instance v1, Lcom/coui/appcompat/dialog/app/a$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/a$1;-><init>(Lcom/coui/appcompat/dialog/app/a;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->Y:Landroid/view/View$OnClickListener;

    .line 239
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->C:Landroid/content/Context;

    .line 240
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/a;->a:Landroidx/appcompat/app/f;

    .line 241
    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    .line 242
    new-instance p3, Lcom/coui/appcompat/dialog/app/a$b;

    invoke-direct {p3, p2}, Lcom/coui/appcompat/dialog/app/a$b;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/a;->w:Landroid/os/Handler;

    .line 244
    sget-object p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog:[I

    sget v1, Lcoui/support/appcompat/R$attr;->couiAlertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 247
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->r:I

    .line 248
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_layoutBackgroundTint:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->B:I

    .line 249
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->U:I

    .line 251
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->s:I

    .line 252
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->t:I

    .line 253
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_singleChoiceItemLayout:I

    .line 254
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->u:I

    .line 255
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->v:I

    .line 256
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/dialog/app/a;->V:Z

    .line 257
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->D:I

    .line 259
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/f;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_1

    .line 537
    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    .line 538
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 541
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 546
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 547
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 548
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 553
    :cond_2
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_3

    .line 554
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 557
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method static a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 845
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 844
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 849
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 848
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 2

    .line 654
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget p4, Lcoui/support/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {p2, p4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 655
    iget-object p4, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget v0, Lcoui/support/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 657
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 662
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p4, :cond_8

    .line 665
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_2

    .line 670
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p2, v0

    :cond_2
    if-eqz p4, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 674
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p4, v0

    :cond_3
    if-nez p2, :cond_4

    if-eqz p4, :cond_8

    .line 682
    :cond_4
    iget-object p3, p0, Lcom/coui/appcompat/dialog/app/a;->d:Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    .line 694
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    new-instance p3, Lcom/coui/appcompat/dialog/app/a$2;

    invoke-direct {p3, p0, p2, p4}, Lcom/coui/appcompat/dialog/app/a$2;-><init>(Lcom/coui/appcompat/dialog/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 700
    :cond_5
    iget-object p3, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    if-eqz p3, :cond_6

    .line 702
    new-instance p1, Lcom/coui/appcompat/dialog/app/a$3;

    invoke-direct {p1, p0, p2, p4}, Lcom/coui/appcompat/dialog/app/a$3;-><init>(Lcom/coui/appcompat/dialog/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 714
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    new-instance p3, Lcom/coui/appcompat/dialog/app/a$4;

    invoke-direct {p3, p0, p2, p4}, Lcom/coui/appcompat/dialog/app/a$4;-><init>(Lcom/coui/appcompat/dialog/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 723
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p4, :cond_8

    .line 726
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/Button;)V
    .locals 1

    .line 924
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    .line 925
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 926
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 927
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    .line 225
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcoui/support/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 227
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 270
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 274
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 278
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 279
    invoke-static {v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 5

    .line 735
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->E:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/a;->F:I

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->C:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 739
    iget v2, p0, Lcom/coui/appcompat/dialog/app/a;->F:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 745
    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 746
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_6

    .line 751
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget v2, Lcoui/support/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 752
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/a;->K:Z

    if-eqz v0, :cond_5

    .line 755
    iget v0, p0, Lcom/coui/appcompat/dialog/app/a;->G:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/a;->H:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/a;->I:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/a;->J:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 759
    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    if-eqz p0, :cond_7

    .line 760
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 p0, 0x8

    .line 763
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/a;->b()I

    move-result v0

    .line 292
    invoke-static {}, Lcom/coui/appcompat/a/t;->a()Lcom/coui/appcompat/a/t;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/a;->C:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/a/t;->a(Landroid/content/Context;)V

    .line 293
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/f;->setContentView(I)V

    .line 294
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/a;->d()V

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->E:Landroid/view/View;

    .line 345
    iput p1, p0, Lcom/coui/appcompat/dialog/app/a;->F:I

    const/4 p1, 0x0

    .line 346
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/a;->K:Z

    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 409
    iget-object p4, p0, Lcom/coui/appcompat/dialog/app/a;->w:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 415
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/a;->g:Ljava/lang/CharSequence;

    .line 416
    iput-object p4, p0, Lcom/coui/appcompat/dialog/app/a;->h:Landroid/os/Message;

    .line 417
    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/a;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 433
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 421
    :cond_2
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/a;->j:Ljava/lang/CharSequence;

    .line 422
    iput-object p4, p0, Lcom/coui/appcompat/dialog/app/a;->k:Landroid/os/Message;

    .line 423
    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/a;->M:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 427
    :cond_3
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/a;->m:Ljava/lang/CharSequence;

    .line 428
    iput-object p4, p0, Lcom/coui/appcompat/dialog/app/a;->n:Landroid/os/Message;

    .line 429
    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/a;->N:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 463
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->P:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 464
    iput v0, p0, Lcom/coui/appcompat/dialog/app/a;->O:I

    .line 466
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 471
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->E:Landroid/view/View;

    const/4 p1, 0x0

    .line 377
    iput p1, p0, Lcom/coui/appcompat/dialog/app/a;->F:I

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/a;->K:Z

    .line 379
    iput p2, p0, Lcom/coui/appcompat/dialog/app/a;->G:I

    .line 380
    iput p3, p0, Lcom/coui/appcompat/dialog/app/a;->H:I

    .line 381
    iput p4, p0, Lcom/coui/appcompat/dialog/app/a;->I:I

    .line 382
    iput p5, p0, Lcom/coui/appcompat/dialog/app/a;->J:I

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 5

    .line 768
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->T:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 770
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 773
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/a;->T:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 776
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget p1, Lcoui/support/appcompat/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 777
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    .line 781
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 782
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/a;->V:Z

    if-eqz v0, :cond_3

    .line 784
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget v0, Lcoui/support/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->R:Landroid/widget/TextView;

    .line 785
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget p1, p0, Lcom/coui/appcompat/dialog/app/a;->O:I

    if-eqz p1, :cond_1

    .line 791
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 792
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->P:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 793
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 797
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    .line 798
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    .line 799
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    .line 800
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 797
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 801
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 805
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget v2, Lcoui/support/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 806
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->c:Ljava/lang/CharSequence;

    .line 314
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->R:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected b()I
    .locals 3

    .line 298
    iget v0, p0, Lcom/coui/appcompat/dialog/app/a;->U:I

    if-nez v0, :cond_0

    .line 299
    iget p0, p0, Lcom/coui/appcompat/dialog/app/a;->r:I

    return p0

    .line 301
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/dialog/app/a;->W:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 304
    :cond_1
    iget p0, p0, Lcom/coui/appcompat/dialog/app/a;->r:I

    return p0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->P:Landroid/graphics/drawable/Drawable;

    .line 445
    iput p1, p0, Lcom/coui/appcompat/dialog/app/a;->O:I

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 449
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->Q:Landroid/widget/ImageView;

    iget p0, p0, Lcom/coui/appcompat/dialog/app/a;->O:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 452
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->T:Landroid/view/View;

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    .line 815
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 816
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 819
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->S:Landroid/widget/TextView;

    .line 820
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->S:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 825
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 827
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/a;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 830
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 831
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 832
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 833
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 834
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 837
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->d:Ljava/lang/CharSequence;

    .line 333
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->S:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)I
    .locals 2

    .line 484
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 485
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->C:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 486
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public c()Landroid/widget/ListView;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    return-object p0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a;->E:Landroid/view/View;

    const/4 p1, 0x0

    .line 356
    iput p1, p0, Lcom/coui/appcompat/dialog/app/a;->F:I

    .line 357
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/a;->K:Z

    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    .line 858
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    .line 859
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->L:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 866
    iget v5, p0, Lcom/coui/appcompat/dialog/app/a;->D:I

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_0
    const v5, 0x102001a

    .line 873
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    .line 874
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/a;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->j:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->M:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 877
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 879
    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 881
    iget v6, p0, Lcom/coui/appcompat/dialog/app/a;->D:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 882
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/a;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 884
    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    const v5, 0x102001b

    .line 888
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    .line 889
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/a;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->m:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->N:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    .line 892
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 894
    :cond_4
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/a;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 896
    iget v6, p0, Lcom/coui/appcompat/dialog/app/a;->D:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 897
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 899
    :cond_5
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 903
    :goto_2
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->C:Landroid/content/Context;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v1, :cond_6

    .line 909
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 911
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 913
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/widget/Button;)V

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v4

    :goto_4
    if-nez v1, :cond_a

    .line 919
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public d(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->f:Landroid/widget/Button;

    return-object p0

    .line 506
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->i:Landroid/widget/Button;

    return-object p0

    .line 508
    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->l:Landroid/widget/Button;

    return-object p0
.end method

.method protected d()V
    .locals 9

    .line 561
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->b:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    sget v1, Lcoui/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 563
    sget v2, Lcoui/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 564
    sget v3, Lcoui/support/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 568
    sget v4, Lcoui/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 569
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/a;->d(Landroid/view/ViewGroup;)V

    .line 571
    sget v4, Lcoui/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 572
    sget v5, Lcoui/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 573
    sget v6, Lcoui/support/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 576
    invoke-direct {p0, v4, v1}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 577
    invoke-direct {p0, v5, v2}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 578
    invoke-direct {p0, v6, v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 580
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/dialog/app/a;->b(Landroid/view/ViewGroup;)V

    .line 581
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/dialog/app/a;->c(Landroid/view/ViewGroup;)V

    .line 582
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 587
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz v3, :cond_2

    .line 589
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 594
    sget v4, Lcoui/support/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 596
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v7, :cond_7

    .line 603
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    .line 604
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    :cond_4
    const/4 v4, 0x0

    .line 609
    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/a;->d:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    if-eqz v8, :cond_6

    .line 610
    :cond_5
    sget v4, Lcoui/support/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_8

    .line 614
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 618
    sget v1, Lcoui/support/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 620
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    instance-of v4, v1, Lcom/coui/appcompat/dialog/app/a$d;

    if-eqz v4, :cond_9

    .line 626
    check-cast v1, Lcom/coui/appcompat/dialog/app/a$d;

    invoke-virtual {v1, v7, v3}, Lcom/coui/appcompat/dialog/app/a$d;->a(ZZ)V

    :cond_9
    if-nez v0, :cond_c

    .line 631
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->o:Landroid/widget/ScrollView;

    :goto_4
    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    const/4 v6, 0x2

    :cond_b
    or-int v1, v7, v6

    const/4 v3, 0x3

    .line 635
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/coui/appcompat/dialog/app/a;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 640
    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    .line 641
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    .line 642
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 643
    iget p0, p0, Lcom/coui/appcompat/dialog/app/a;->q:I

    const/4 v1, -0x1

    if-le p0, v1, :cond_d

    .line 645
    invoke-virtual {v0, p0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 646
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_d
    return-void
.end method

.method public e()I
    .locals 0

    .line 936
    iget p0, p0, Lcom/coui/appcompat/dialog/app/a;->X:I

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 946
    iput p1, p0, Lcom/coui/appcompat/dialog/app/a;->X:I

    return-void
.end method

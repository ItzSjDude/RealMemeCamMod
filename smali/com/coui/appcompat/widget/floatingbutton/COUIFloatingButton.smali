.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
.super Landroid/widget/LinearLayout;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "COUIFloatingButton"

.field private static final b:Landroid/view/animation/PathInterpolator;


# instance fields
.field private c:F

.field private final d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/floatingbutton/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/google/android/material/imageview/ShapeableImageView;

.field private h:F

.field private i:I

.field private j:I

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/animation/ValueAnimator;

.field private m:Landroid/view/animation/PathInterpolator;

.field private n:Landroid/view/animation/PathInterpolator;

.field private o:Landroid/view/animation/PathInterpolator;

.field private p:Landroid/view/animation/PathInterpolator;

.field private q:Landroid/view/animation/PathInterpolator;

.field private r:Z

.field private s:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;

.field private t:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

.field private u:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

.field private v:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

.field private w:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 153
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;F)F
    .locals 0

    .line 95
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c:F

    return p1
.end method

.method private a(I)I
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 1

    .line 1765
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 1766
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(Lcom/coui/appcompat/widget/floatingbutton/a;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/widget/floatingbutton/a;",
            "Ljava/util/Iterator<",
            "Lcom/coui/appcompat/widget/floatingbutton/a;",
            ">;Z)",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 448
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 450
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeView(Landroid/view/View;)V

    return-object p3

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->h()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/a;IIZ)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/floatingbutton/a;III)V
    .locals 14

    move-object v1, p0

    .line 1121
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1122
    new-instance v4, Landroidx/dynamicanimation/a/f;

    sget-object v0, Landroidx/dynamicanimation/a/c;->b:Landroidx/dynamicanimation/a/c$d;

    const/4 v2, 0x0

    move-object v5, p1

    invoke-direct {v4, p1, v0, v2}, Landroidx/dynamicanimation/a/f;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/a/d;F)V

    .line 1123
    invoke-virtual {v4}, Landroidx/dynamicanimation/a/f;->e()Landroidx/dynamicanimation/a/g;

    move-result-object v0

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/a/g;->a(F)Landroidx/dynamicanimation/a/g;

    .line 1124
    invoke-virtual {v4}, Landroidx/dynamicanimation/a/f;->e()Landroidx/dynamicanimation/a/g;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/a/g;->b(F)Landroidx/dynamicanimation/a/g;

    .line 1125
    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/a/f;->g(F)Landroidx/dynamicanimation/a/c;

    .line 1127
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x2

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    const-string v8, "scaleX"

    invoke-static {v0, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1128
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v6

    new-array v9, v3, [F

    fill-array-data v9, :array_1

    const-string v10, "scaleY"

    invoke-static {v6, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1130
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v9

    new-array v11, v3, [F

    fill-array-data v11, :array_2

    invoke-static {v9, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1131
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v9

    new-array v11, v3, [F

    fill-array-data v11, :array_3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1133
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v10

    new-array v11, v3, [F

    fill-array-data v11, :array_4

    const-string v12, "alpha"

    invoke-static {v10, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1135
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v11

    new-array v13, v3, [F

    fill-array-data v13, :array_5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1136
    iget-object v12, v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x15e

    .line 1137
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v12, 0x5

    .line 1139
    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v6, v12, v0

    aput-object v10, v12, v3

    const/4 v0, 0x3

    aput-object v8, v12, v0

    const/4 v0, 0x4

    aput-object v9, v12, v0

    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1140
    iget-object v0, v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x12c

    .line 1141
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move/from16 v0, p2

    int-to-long v8, v0

    .line 1142
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1143
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, ""

    if-eq v0, v3, :cond_1

    .line 1144
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/cardview/a/a;->setPivotX(F)V

    .line 1146
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/cardview/a/a;->setPivotY(F)V

    goto :goto_0

    .line 1148
    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/cardview/a/a;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/cardview/a/a;->setPivotX(F)V

    .line 1149
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/cardview/a/a;->setPivotY(F)V

    .line 1153
    :cond_1
    :goto_0
    new-instance v8, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$2;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v11

    move-object v5, p1

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$2;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/a/f;Lcom/coui/appcompat/widget/floatingbutton/a;I)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1180
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/coui/appcompat/widget/floatingbutton/a;IIIZ)V
    .locals 8

    .line 1185
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1186
    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(I)I

    move-result v1

    if-eqz p5, :cond_0

    .line 1189
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_0
    const/4 v0, 0x1

    .line 1191
    new-array v0, v0, [F

    const/4 v2, 0x0

    int-to-float v1, v1

    aput v1, v0, v2

    const-string v1, "translationY"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p2

    .line 1192
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    int-to-long v1, p4

    .line 1193
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1194
    iget-object p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1196
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v1, ""

    if-eq p2, v1, :cond_2

    .line 1197
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1198
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/cardview/a/a;->setPivotX(F)V

    .line 1199
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/a/a;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroidx/cardview/a/a;->setPivotY(F)V

    goto :goto_0

    .line 1201
    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/a/a;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroidx/cardview/a/a;->setPivotX(F)V

    .line 1202
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/a/a;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroidx/cardview/a/a;->setPivotY(F)V

    .line 1206
    :cond_2
    :goto_0
    new-instance p2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    move v5, p5

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;IZLcom/coui/appcompat/widget/floatingbutton/a;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1243
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/floatingbutton/a;IIZ)V
    .locals 7

    .line 1251
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1253
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 1254
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1256
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v3

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1257
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object v3

    new-array v5, v0, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1259
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v4

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1261
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonLabelBackground()Landroidx/cardview/a/a;

    move-result-object p1

    new-array v5, v0, [F

    fill-array-data v5, :array_5

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1262
    iget-object v5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->o:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xc8

    .line 1263
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x5

    .line 1265
    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    const/4 p4, 0x1

    aput-object v1, v5, p4

    aput-object v4, v5, v0

    const/4 p4, 0x3

    aput-object v3, v5, p4

    const/4 p4, 0x4

    aput-object v2, v5, p4

    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1266
    iget-object p4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p3, p3

    .line 1267
    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1268
    new-instance p3, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1284
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b()V

    .line 239
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p0}, Landroidx/core/h/v;->n(Landroid/view/View;)Landroidx/core/h/z;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/h/z;->c(F)Landroidx/core/h/z;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/core/h/z;->a(J)Landroidx/core/h/z;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/h/z;->c()V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    .line 893
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 894
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Landroid/view/View;FZ)V

    goto :goto_0

    .line 896
    :cond_0
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 897
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 898
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ZZIZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 875
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->s:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;

    if-eqz v0, :cond_0

    .line 876
    invoke-interface {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;->a()Z

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 882
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 883
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(ZZIZ)V

    .line 884
    invoke-direct {p0, p2, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(ZZ)V

    .line 885
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->j()V

    .line 887
    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->s:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;

    if-eqz p0, :cond_3

    .line 888
    invoke-interface {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;->a(Z)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    return p1
.end method

.method private b(I)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 2

    .line 927
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/a;

    .line 928
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 742
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    .line 744
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 745
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    long-to-float p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    .line 746
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    if-nez p1, :cond_1

    .line 747
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 751
    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    if-nez p1, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->clearAnimation()V

    :cond_2
    return-void
.end method

.method private b(ZZIZ)V
    .locals 8

    .line 946
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 947
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 950
    iget-object p3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    add-int/lit8 p4, v0, -0x1

    sub-int/2addr p4, p1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/widget/floatingbutton/a;

    .line 952
    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i:I

    if-eqz v2, :cond_1

    .line 953
    invoke-direct {p0, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->f(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    .line 954
    invoke-virtual {p3, v2}, Lcom/coui/appcompat/widget/floatingbutton/a;->setVisibility(I)V

    if-eqz p2, :cond_2

    mul-int/lit8 v3, p1, 0x32

    .line 956
    invoke-direct {p0, p3, v3, p4, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;III)V

    goto :goto_1

    .line 959
    :cond_0
    invoke-virtual {p3, v1}, Lcom/coui/appcompat/widget/floatingbutton/a;->setVisibility(I)V

    if-eqz p2, :cond_2

    mul-int/lit8 v2, p1, 0x32

    .line 961
    invoke-direct {p0, p3, v2, p4, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;III)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v2, p1, 0x32

    .line 966
    invoke-direct {p0, p3, v2, p4, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;III)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 970
    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$102(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_2
    if-ge p1, v0, :cond_6

    .line 973
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/coui/appcompat/widget/floatingbutton/a;

    if-eqz p2, :cond_5

    mul-int/lit8 v4, p1, 0x32

    move-object v2, p0

    move v5, p1

    move v6, p3

    move v7, p4

    .line 975
    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;IIIZ)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 979
    :cond_6
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$102(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d(I)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)I
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->w:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;

    return-object p0
.end method

.method private c(I)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 937
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/widget/floatingbutton/a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g()V

    return-void
.end method

.method private d(I)Z
    .locals 2

    .line 1292
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c(I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1294
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private e(I)Z
    .locals 1

    .line 1300
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c(I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1302
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    return p0
.end method

.method static synthetic f(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private f(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 1747
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1750
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1751
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(I)I

    move-result p1

    int-to-float p1, p1

    .line 1752
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 1753
    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i:I

    iget p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->j:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private g(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1757
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x4c

    add-int/lit8 p1, p1, 0x5c

    int-to-float p1, p1

    .line 1761
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->s:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b()V

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object p0
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x1

    .line 706
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(Z)V

    .line 708
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/coui/appcompat/a/f;->a(Landroid/view/View;)Lcom/coui/appcompat/widget/floatingbutton/b;

    move-result-object v0

    .line 709
    invoke-static {}, Lcom/coui/appcompat/a/f;->a()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    .line 710
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->l:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$7;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 721
    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 727
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic i(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Ljava/lang/Runnable;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    .line 732
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(Z)V

    .line 733
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->r:Z

    if-eqz v0, :cond_0

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c:F

    invoke-static {v0, v1}, Lcom/coui/appcompat/a/f;->a(Landroid/view/View;F)Lcom/coui/appcompat/widget/floatingbutton/b;

    move-result-object v0

    .line 738
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic j(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->u:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 907
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 908
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 909
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->couiGreenTintControlNormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 912
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 914
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p0, v2, v0}, Lcom/coui/appcompat/a/d;->a(Landroid/content/Context;II)I

    move-result p0

    .line 913
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/r;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 912
    invoke-virtual {v1, p0}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private k()Z
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Z)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 1332
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->h:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1333
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x12c

    .line 1334
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 8

    .line 1046
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Landroidx/core/h/v;->n(Landroid/view/View;)Landroidx/core/h/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/h/z;->b()V

    const/4 v0, 0x2

    .line 1047
    new-array v1, v0, [F

    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1048
    invoke-virtual {v2}, Lcom/google/android/material/imageview/ShapeableImageView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const-string v4, "alpha"

    .line 1047
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1049
    new-array v4, v0, [F

    iget-object v5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1050
    invoke-virtual {v5}, Lcom/google/android/material/imageview/ShapeableImageView;->getScaleX()F

    move-result v5

    aput v5, v4, v3

    const v5, 0x3f19999a    # 0.6f

    aput v5, v4, v2

    const-string v6, "scaleX"

    .line 1049
    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1051
    new-array v6, v0, [F

    iget-object v7, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1052
    invoke-virtual {v7}, Lcom/google/android/material/imageview/ShapeableImageView;->getScaleY()F

    move-result v7

    aput v7, v6, v3

    aput v5, v6, v2

    const-string v5, "scaleY"

    .line 1051
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x3

    .line 1053
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v3

    aput-object v4, v6, v2

    aput-object v5, v6, v0

    invoke-static {v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1058
    sget-object v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    .line 1059
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1061
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1062
    new-instance p1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 1

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZI)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZI)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 6

    .line 297
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 299
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->createFabWithLabelView(Landroid/content/Context;)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p1

    .line 302
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getOrientation()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->setOrientation(I)V

    .line 303
    iget-object p3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->v:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/widget/floatingbutton/a;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;)V

    .line 304
    invoke-virtual {p1, p4}, Lcom/coui/appcompat/widget/floatingbutton/a;->setVisibility(I)V

    .line 305
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(I)I

    move-result p3

    if-nez p2, :cond_2

    .line 307
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingStart()I

    move-result p4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_floating_button_item_first_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/a;->setPaddingRelative(IIII)V

    .line 308
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingStart()I

    move-result p4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_floating_button_item_normal_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/a;->setPaddingRelative(IIII)V

    .line 311
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addView(Landroid/view/View;I)V

    .line 313
    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x0

    const/16 v4, 0x12c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 314
    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;IIIZ)V

    return-object p1
.end method

.method public a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/a;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    return-object v0

    .line 393
    :cond_1
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getVisibility()I

    move-result v1

    .line 394
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 395
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(I)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p1

    invoke-direct {p0, p1, v0, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 396
    invoke-virtual {p0, p2, v2, v4, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZI)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/coui/appcompat/widget/floatingbutton/a;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 252
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 512
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(ZZIZ)V

    return-void
.end method

.method public a(Landroid/view/View;FZ)V
    .locals 3

    .line 1319
    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->h:F

    .line 1320
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const-string p2, "rotation"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1321
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->p:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    const-wide/16 p2, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x12c

    .line 1322
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1323
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public a(ZIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(ZZIZ)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    .line 538
    invoke-direct {p0, v0, v1, v2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(ZZIZ)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 3

    .line 1013
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Landroidx/core/h/v;->n(Landroid/view/View;)Landroidx/core/h/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/h/z;->b()V

    .line 1014
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1016
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1017
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1018
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b:Landroid/view/animation/PathInterpolator;

    .line 1019
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 1020
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    .line 1021
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public f()Landroid/animation/ValueAnimator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/a;

    .line 476
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMainFloatingButton()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object p0
.end method

.method public getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1344
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 768
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 769
    check-cast p1, Landroid/os/Bundle;

    .line 770
    const-class v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    if-eqz v0, :cond_0

    .line 772
    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 773
    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 776
    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 777
    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Z

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(ZZIZ)V

    :cond_0
    const-string v0, "superState"

    .line 779
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 781
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$1102(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 761
    const-class v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 762
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    const-string v1, "superState"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 793
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getMainFloatingButton()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setEnabled(Z)V

    return-void
.end method

.method public setFloatingButtonClickListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->w:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;

    return-void
.end method

.method public setFloatingButtonExpandEnable(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 669
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$5;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 683
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->f:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 627
    invoke-direct {p0, p1, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(ZZ)V

    return-void
.end method

.method public setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$302(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 648
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->j()V

    return-void
.end method

.method public setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;)V
    .locals 2

    .line 487
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->t:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->t:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->u:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

    :cond_0
    const/4 p1, 0x0

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/a;

    .line 495
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->v:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/a;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnChangeListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->s:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$b;

    return-void
.end method

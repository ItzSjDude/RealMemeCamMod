.class public Lcom/oplus/camera/ui/menu/facebeauty/g;
.super Ljava/lang/Object;
.source "FaceBeautyMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oplus/camera/ui/OplusNumSeekBar$a;
.implements Lcom/oplus/camera/ui/menu/facebeauty/d$a;
.implements Lcom/oplus/camera/ui/menu/facebeauty/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/facebeauty/g$a;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private B:Lcom/oplus/camera/ui/preview/a/f;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Landroid/animation/AnimatorListenerAdapter;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/oplus/camera/ui/CameraUIListener;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/animation/PathInterpolator;

.field private s:Landroid/view/animation/PathInterpolator;

.field private t:Landroid/app/Activity;

.field private u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

.field private v:Lcom/oplus/camera/ui/menu/facebeauty/f;

.field private w:Lcom/oplus/camera/ui/menu/facebeauty/e;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Landroid/animation/AnimatorSet;

.field private z:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/facebeauty/g$a;ILcom/oplus/camera/ui/CameraUIListener;)V
    .locals 8

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->a:I

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    .line 51
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->d:I

    .line 52
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->e:I

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    .line 55
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->g:I

    .line 56
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->h:I

    .line 57
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->i:I

    .line 58
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->j:I

    const/16 v2, 0x8

    .line 59
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->k:[I

    .line 61
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->l:Z

    .line 62
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    .line 64
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->p:Z

    const/4 v2, 0x1

    .line 66
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    .line 68
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f2b851f    # 0.67f

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->r:Landroid/view/animation/PathInterpolator;

    .line 69
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->s:Landroid/view/animation/PathInterpolator;

    .line 71
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    .line 72
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 73
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    .line 74
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    .line 75
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    .line 76
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    .line 77
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    .line 78
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->A:Landroid/animation/AnimatorSet;

    .line 79
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->B:Lcom/oplus/camera/ui/preview/a/f;

    .line 80
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    .line 81
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    .line 82
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->E:Z

    .line 83
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->F:Z

    .line 84
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->G:Z

    .line 86
    new-instance v0, Lcom/oplus/camera/ui/menu/facebeauty/g$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/g;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->H:Landroid/animation/AnimatorListenerAdapter;

    .line 118
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 121
    iput p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->c:I

    .line 122
    iput-object p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070494

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->a:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private A()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->b(I)V

    const/4 v0, 0x1

    .line 710
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    return-void
.end method

.method private B()V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->b(I)V

    .line 715
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    return-void
.end method

.method private C()V
    .locals 6

    .line 766
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->q()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 773
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 774
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    .line 775
    iget-boolean v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->G:Z

    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setLightBgColor(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->s()V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz v0, :cond_2

    .line 785
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->q()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 788
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 791
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 792
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    .line 793
    iget-boolean v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->G:Z

    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setLightBgColor(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private D()Z
    .locals 7

    .line 879
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->e()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget v5, v0, v3

    .line 880
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v6, v4}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result v6

    if-eq v6, v5, :cond_1

    const v5, -0x186a0

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private E()V
    .locals 4

    .line 954
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 958
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->q()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->s()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->s()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 965
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private F()V
    .locals 5

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1054
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->k:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 1055
    aget v3, v3, v2

    if-lez v3, :cond_0

    .line 1056
    sget-object v3, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->CUSTOM_BEAUTY_CLICK_NUMS:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->k:[I

    aget v4, v4, v2

    .line 1057
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-static {v3, v4}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->k:[I

    aput v1, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->g:I

    if-lez v2, :cond_2

    .line 1063
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_rest_show"

    invoke-static {v3, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->g:I

    .line 1067
    :cond_2
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->h:I

    if-lez v2, :cond_3

    .line 1068
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_rest_ok"

    invoke-static {v3, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->h:I

    .line 1072
    :cond_3
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->i:I

    if-lez v2, :cond_4

    .line 1074
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_rest_cancel"

    .line 1073
    invoke-static {v3, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->i:I

    .line 1078
    :cond_4
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->j:I

    if-lez v2, :cond_5

    .line 1080
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_common_show"

    .line 1079
    invoke-static {v3, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->j:I

    .line 1084
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1085
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menuClick"

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x2

    .line 1008
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1009
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 1010
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1012
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->v()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [F

    .line 1013
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->w()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 1012
    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1014
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1015
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1017
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    .line 1018
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1019
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1020
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 1022
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6

    .line 1026
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 1030
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1031
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 1032
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1034
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->v()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    .line 1035
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->w()I

    move-result v5

    int-to-float v5, v5

    aput v5, v0, v3

    .line 1034
    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1036
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 1037
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1039
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->A:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_1

    .line 1042
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->A:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->H:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1045
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1046
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 1048
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Lcom/oplus/camera/ui/menu/facebeauty/a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 872
    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/facebeauty/a;->a()V

    :cond_0
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/facebeauty/d;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->q()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 900
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 906
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 907
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    if-eqz p2, :cond_3

    .line 911
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->v()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array v1, p2, [F

    const/4 v2, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->w()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 911
    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 913
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    .line 914
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 916
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 917
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 918
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 920
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    .line 921
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 922
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 923
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/ui/menu/facebeauty/g$4;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$4;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/g;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 947
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 949
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->E()V

    :goto_1
    return-void

    .line 901
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "openFaceBeautyTab, menu: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", tabView is null, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceBeautyMenu"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/g;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/g;Lcom/oplus/camera/ui/menu/facebeauty/a;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/a;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/g;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/facebeauty/g;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    return p0
.end method

.method private b(II)V
    .locals 1

    if-gtz p1, :cond_0

    .line 686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportMakeupDCS, index is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceBeautyMenu"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string p1, "makeup_clear"

    goto :goto_0

    .line 691
    :cond_0
    sget-object v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->sKeyMakeupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    .line 695
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method private b(Lcom/oplus/camera/ui/menu/facebeauty/d;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 972
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->q()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 976
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 983
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 984
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 988
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->v()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    .line 989
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->w()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, p1

    .line 988
    invoke-static {v0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 990
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 991
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 993
    new-array p2, v1, [F

    fill-array-data p2, :array_0

    const-string v1, "alpha"

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 994
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 995
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 997
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    .line 998
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 999
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->H:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1000
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    .line 1002
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void

    .line 977
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closeFaceBeautyTab, menu: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mBeautyTabExitAnimationSet.isStarted(): "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    .line 978
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", so return"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceBeautyMenu"

    .line 977
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    return-object p0
.end method

.method private c(IZ)V
    .locals 3

    .line 655
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 656
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->onMakeupValueChanged(IIZ)V

    if-eqz p2, :cond_3

    .line 660
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(II)V

    goto :goto_0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v0

    if-ltz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v2

    invoke-interface {v0, v2, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(IIZ)V

    if-eqz p2, :cond_3

    .line 666
    sget-object p2, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2, p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(IIZ)V

    .line 673
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 674
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->A()V

    goto :goto_0

    .line 675
    :cond_2
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 676
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->B()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/e;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/a;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->y()Lcom/oplus/camera/ui/menu/facebeauty/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/g$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method

.method private i(Z)V
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    .line 737
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ae()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->q()V

    .line 741
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->C()V

    .line 743
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->v()V

    .line 746
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v0

    .line 747
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 749
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v3, v0, v1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 751
    invoke-interface {v3}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->e()[I

    move-result-object v3

    .line 750
    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I)V

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->o(Z)V

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->p(Z)V

    goto :goto_2

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v3, -0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->u()V

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->o(Z)V

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->p(Z)V

    .line 761
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/d;Z)V

    .line 762
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(Z)V

    return-void
.end method

.method private j(Z)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-nez v0, :cond_0

    return-void

    .line 804
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FaceBeautyMenu"

    const-string v1, "closeCustomBeautyMenu, isThumbOnDragging"

    .line 805
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b()V

    :cond_1
    if-eqz p1, :cond_2

    .line 811
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(Lcom/oplus/camera/ui/menu/facebeauty/d;Z)V

    .line 812
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->d(Z)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->d(Z)V

    .line 815
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/a;)V

    :goto_0
    return-void
.end method

.method private k(Z)V
    .locals 6

    .line 820
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    .line 823
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->t()Z

    move-result v0

    .line 824
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->r()Z

    move-result v3

    .line 825
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    iget-boolean v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/menu/facebeauty/e;->b(Z)V

    .line 826
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v4, v3, v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a(ZZ)V

    .line 827
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v3, v2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 828
    invoke-interface {v3}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->d()I

    move-result v3

    .line 827
    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a(II)V

    .line 829
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->C()V

    .line 831
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FaceBeautyMenu"

    const-string v2, "closeCustomBeautyMenu, isThumbOnDragging"

    .line 832
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b()V

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/d;Z)V

    .line 838
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->c(Z)V

    .line 840
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->j:I

    :cond_2
    return-void
.end method

.method private l(Z)V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FaceBeautyMenu"

    const-string v1, "closeCommonBeautyMenu, isThumbOnDragging"

    .line 856
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b()V

    :cond_1
    if-eqz p1, :cond_2

    .line 862
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(Lcom/oplus/camera/ui/menu/facebeauty/d;Z)V

    .line 863
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->d(Z)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->d(Z)V

    .line 866
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/a;)V

    :goto_0
    return-void
.end method

.method private y()Lcom/oplus/camera/ui/menu/facebeauty/a;
    .locals 2

    .line 362
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    return-object p0

    .line 364
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    return-object p0
.end method

.method private z()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    const v1, 0x7f100147

    invoke-static {v0, v1}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;I)V

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a()V

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(ZZ)V

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v3, v2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 495
    invoke-interface {v4}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->e()[I

    move-result-object v4

    .line 494
    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I)V

    .line 496
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->h:I

    const-string v0, "self_smooth_reset"

    .line 498
    invoke-virtual {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public a(IZ)I
    .locals 0

    if-gez p1, :cond_0

    .line 1133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getValueAtIndex, index: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", so return 0!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceBeautyMenu"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1139
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->c(I)I

    move-result p0

    return p0

    .line 1142
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->d(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    .line 267
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    const/4 p1, 0x1

    .line 268
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->F:Z

    .line 269
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->E:Z

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick, position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mMenuType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mbCurrentTapMakeup: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceBeautyMenu"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "onItemClick, isAnimationRunning"

    .line 564
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onItemClick, isThumbOnDragging"

    .line 570
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b()V

    return-void

    .line 577
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_7

    .line 578
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    if-eqz p1, :cond_5

    .line 579
    invoke-virtual {p0, p2, v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(IZ)V

    .line 580
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 581
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1, p2, v0}, Lcom/oplus/camera/ui/CameraUIListener;->onMakeupTypeChanged(IZ)V

    if-nez p2, :cond_2

    .line 584
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 585
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 589
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    if-nez p1, :cond_3

    .line 590
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    .line 591
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;)V

    .line 592
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->v()V

    .line 595
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->c(I)I

    move-result p1

    .line 596
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 597
    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->f()[I

    move-result-object v1

    .line 596
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(I[I)V

    .line 600
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->c(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b(II)V

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, -0x2

    .line 603
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result p1

    .line 606
    sget-object v1, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    xor-int/2addr v2, v0

    invoke-virtual {p0, v1, p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Ljava/lang/String;IZ)V

    .line 608
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    if-nez v1, :cond_6

    .line 609
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->A()V

    .line 610
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;)V

    .line 611
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->v()V

    .line 612
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->D()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->p(Z)V

    .line 615
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    invoke-virtual {v1, p2, v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 616
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v2}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->e()[I

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I)V

    .line 618
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->k:[I

    array-length p1, p0

    if-ge p2, p1, :cond_7

    .line 619
    aget p1, p0, p2

    add-int/2addr p1, v0

    aput p1, p0, p2

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/OplusNumSeekBar;I)V
    .locals 0

    .line 632
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/e;->n(Z)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_1

    .line 635
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->n(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/OplusNumSeekBar;IZ)V
    .locals 0

    const/4 p1, 0x0

    .line 627
    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(IZ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/f;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->B:Lcom/oplus/camera/ui/preview/a/f;

    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 2

    .line 1091
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 1094
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    goto :goto_0

    .line 1096
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildMenuSelect()V

    :goto_0
    const/4 p3, 0x2

    .line 1099
    iput p3, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 1100
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 1101
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 1102
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 1103
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->c:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1104
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->B()Z

    move-result p1

    xor-int/2addr p1, v1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 1105
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ao()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1106
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->d:I

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "front"

    goto :goto_1

    :cond_1
    const-string p0, "rear"

    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 1107
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->c()Z

    move-result p0

    return p0
.end method

.method public a(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    .line 1148
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->f()[I

    move-result-object p0

    return-object p0

    .line 1151
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->e()[I

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 1117
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->h()I

    move-result p0

    return p0
.end method

.method public b(I)Landroid/view/View;
    .locals 11

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLayout, menuType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMenuType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    .line 136
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    .line 138
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    if-eq v0, p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->y()Lcom/oplus/camera/ui/menu/facebeauty/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/facebeauty/a;->a()V

    .line 146
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->F:Z

    if-eqz p1, :cond_4

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz p1, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a()V

    .line 166
    :cond_3
    new-instance p1, Lcom/oplus/camera/ui/menu/facebeauty/e;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    iget v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    iget v7, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/oplus/camera/ui/menu/facebeauty/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/OplusNumSeekBar$a;Lcom/oplus/camera/ui/menu/facebeauty/d$a;II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    .line 168
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->B:Lcom/oplus/camera/ui/preview/a/f;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a(Lcom/oplus/camera/ui/preview/a/f;)V

    .line 169
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->F:Z

    .line 172
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->s()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 148
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->E:Z

    if-eqz p1, :cond_8

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p1, :cond_7

    .line 150
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a()V

    .line 153
    :cond_7
    new-instance p1, Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->B:Lcom/oplus/camera/ui/preview/a/f;

    iget v9, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    iget v10, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v10}, Lcom/oplus/camera/ui/menu/facebeauty/f;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Lcom/oplus/camera/ui/menu/facebeauty/f$a;Lcom/oplus/camera/ui/OplusNumSeekBar$a;Lcom/oplus/camera/ui/menu/facebeauty/d$a;Lcom/oplus/camera/ui/preview/a/f;II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    .line 155
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->E:Z

    .line 158
    :cond_8
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->y()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public b(IZ)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->onMakeupTypeChanged(IZ)V

    .line 512
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->t:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 513
    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/g$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/g$3;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/g;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)V
    .locals 1

    const/4 p1, 0x1

    .line 641
    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(IZ)V

    .line 643
    iget p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    if-ne p1, p2, :cond_0

    .line 644
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->D()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->p(Z)V

    .line 647
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz p2, :cond_1

    .line 648
    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->n(Z)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_2

    .line 650
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->n(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTapChange, currentMakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    .line 1160
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->n:Z

    if-eqz p1, :cond_1

    .line 1161
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ae()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->o:Z

    .line 1162
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->l(I)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperCameraId, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->d:I

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 214
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    .line 216
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz p1, :cond_2

    .line 227
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->b(Z)V

    .line 228
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->d()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p1, :cond_2

    .line 219
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Z)V

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 1122
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aJ()Z

    move-result p0

    return p0
.end method

.method public d(I)V
    .locals 2

    .line 845
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz v0, :cond_0

    .line 846
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->d()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a(II)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMenuOpen, menuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->l:Z

    return-void
.end method

.method public d()Z
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    return p0
.end method

.method public e(I)V
    .locals 2

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewLayoutSizeChanged, previewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->e:I

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMenuType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->k(Z)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->i(Z)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 180
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->f()V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->f()V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->t()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->a(IZ)V

    .line 1185
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_1

    .line 1186
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1189
    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->a(IZ)V

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/animation/Animator;)V

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/animation/Animator;)V

    .line 295
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 302
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->p:Z

    .line 306
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->l(Z)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->j(Z)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 195
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->g()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->g()V

    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->p:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1213
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->G:Z

    return-void
.end method

.method public h()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->q:Z

    return p0
.end method

.method public i()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 240
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->b(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public j()Z
    .locals 3

    .line 337
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 338
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 340
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->m()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public k()V
    .locals 3

    .line 353
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v2, v1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->z()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->t()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public m()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->y:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->z:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->A:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->B:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz v0, :cond_4

    .line 387
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->b()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_7

    .line 389
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const/4 p0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()Z
    .locals 0

    .line 398
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->l:Z

    return p0
.end method

.method public o()Z
    .locals 2

    .line 410
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->w:Lcom/oplus/camera/ui/menu/facebeauty/e;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 421
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->m()Z

    move-result v0

    const-string v1, "FaceBeautyMenu"

    if-eqz v0, :cond_0

    const-string p0, "onClick, isAnimationRunning"

    .line 422
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onClick, isThumbOnDragging so return"

    .line 428
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 433
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "onClick, reset face beauty"

    .line 475
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->D()Z

    move-result p1

    if-nez p1, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->z()V

    .line 481
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(ILandroidx/recyclerview/widget/RecyclerView$n;)Z

    goto :goto_1

    :pswitch_1
    const-string v0, "onClick, close face beauty"

    .line 435
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 440
    new-instance v2, Lcom/oplus/camera/ui/menu/facebeauty/g$2;

    invoke-direct {v2, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g$2;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;)V

    .line 450
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;Z)V

    .line 451
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->B()V

    .line 452
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4, v3}, Lcom/oplus/camera/ui/menu/facebeauty/f;->o(Z)V

    .line 453
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->p(Z)V

    .line 454
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    const/4 v5, -0x3

    invoke-virtual {v4, v5, v3, v3}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    goto :goto_0

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->A()V

    .line 457
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Landroid/view/View;)V

    .line 458
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/facebeauty/f;->v()V

    .line 459
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->D()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/menu/facebeauty/f;->p(Z)V

    .line 460
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4, v3, v3, v3}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 461
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v5, v3}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    .line 462
    invoke-interface {v6}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->e()[I

    move-result-object v6

    .line 461
    invoke-virtual {v4, v5, v6}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I)V

    .line 465
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    invoke-virtual {v4, v1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(ILandroidx/recyclerview/widget/RecyclerView$n;)Z

    move-result v2

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 468
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->u:Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(Landroid/view/View;)V

    :cond_4
    const-string p1, "self_smooth_clear"

    .line 471
    invoke-virtual {p0, p1, v3, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Ljava/lang/String;IZ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09016e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->F()V

    return-void
.end method

.method public q()V
    .locals 6

    .line 502
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->s()Z

    move-result v1

    .line 503
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->t()Z

    move-result v2

    .line 504
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->r()Z

    move-result v3

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIListener;->ae()I

    move-result v4

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    .line 506
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->ag()Z

    move-result v5

    .line 505
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(ZZZIZ)V

    return-void
.end method

.method public r()Z
    .locals 1

    .line 719
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    const-string v0, "func_face_beauty_process"

    .line 720
    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s()Z
    .locals 1

    .line 724
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    const-string v0, "key_support_makeup"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t()Z
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->f:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->z()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()Z
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->t()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method protected v()Ljava/lang/String;
    .locals 1

    .line 1197
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "translationX"

    goto :goto_0

    :cond_0
    const-string p0, "translationY"

    :goto_0
    return-object p0
.end method

.method protected w()I
    .locals 2

    .line 1205
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->C:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10e

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->D:I

    if-eq v0, v1, :cond_0

    .line 1206
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->a:I

    neg-int p0, p0

    return p0

    .line 1209
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->a:I

    return p0
.end method

.method public x()V
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g;->v:Lcom/oplus/camera/ui/menu/facebeauty/f;

    if-eqz p0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->s()V

    :cond_0
    return-void
.end method

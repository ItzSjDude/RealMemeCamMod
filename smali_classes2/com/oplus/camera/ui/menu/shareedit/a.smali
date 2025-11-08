.class public Lcom/oplus/camera/ui/menu/shareedit/a;
.super Ljava/lang/Object;
.source "ShareEditThumbMenu.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/shareedit/a$a;,
        Lcom/oplus/camera/ui/menu/shareedit/a$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/PathInterpolator;

.field private static final b:Landroid/view/animation/PathInterpolator;


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:Landroid/widget/RelativeLayout$LayoutParams;

.field private I:Landroid/widget/RelativeLayout$LayoutParams;

.field private J:Landroid/widget/RelativeLayout$LayoutParams;

.field private K:Landroid/widget/RelativeLayout$LayoutParams;

.field private L:Landroid/widget/RelativeLayout$LayoutParams;

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:Landroid/widget/RelativeLayout;

.field private R:Landroid/widget/PopupWindow;

.field private S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

.field private T:Lcom/oplus/camera/ui/RotateImageView;

.field private U:Lcom/oplus/camera/ui/RotateImageView;

.field private V:Lcom/oplus/camera/ui/RotateImageView;

.field private W:Lcom/oplus/camera/ui/control/ThumbImageView;

.field private X:Lcom/oplus/camera/ui/control/ThumbImageView;

.field private Y:Lcom/oplus/camera/ui/control/a;

.field private Z:Z

.field private aA:[Z

.field private aB:[I

.field private aC:[Landroid/view/View;

.field private aD:Lcom/oplus/camera/ui/menu/shareedit/a$b;

.field private aE:Lcom/oplus/camera/ui/CameraUIListener;

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:F

.field private aM:Landroid/animation/ValueAnimator;

.field private aN:Landroid/animation/ValueAnimator;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

.field private ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

.field private al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

.field private am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

.field private an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

.field private ao:Landroid/graphics/drawable/GradientDrawable;

.field private ap:F

.field private aq:F

.field private ar:Lcom/oplus/camera/Camera;

.field private as:J

.field private at:Lcom/oplus/camera/ui/menu/shareedit/b;

.field private au:Landroid/os/Handler;

.field private av:Lcom/oplus/camera/ui/control/e;

.field private aw:Landroid/view/animation/Interpolator;

.field private ax:Lcom/oplus/camera/ComboPreferences;

.field private ay:Landroid/content/SharedPreferences;

.field private az:Z

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/menu/shareedit/a;->a:Landroid/view/animation/PathInterpolator;

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/menu/shareedit/a;->b:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout;Lcom/oplus/camera/ui/control/a;Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/menu/shareedit/a$b;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/control/ThumbImageView;)V
    .locals 16

    move-object/from16 v0, p0

    .line 313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 109
    iput v1, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    .line 110
    iput v1, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->d:I

    const/4 v2, 0x0

    .line 112
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->e:F

    .line 113
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->f:F

    .line 114
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->g:F

    .line 115
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->h:F

    .line 116
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    .line 117
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->j:F

    .line 118
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->k:F

    .line 119
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->l:F

    .line 120
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->m:F

    const/4 v3, 0x0

    .line 121
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->n:I

    .line 122
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->o:I

    .line 123
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->p:I

    .line 124
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->q:I

    .line 125
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->r:I

    .line 126
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->s:I

    .line 127
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->t:I

    .line 128
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->u:I

    .line 129
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    .line 130
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    .line 131
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->x:I

    .line 132
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->y:I

    .line 133
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->z:I

    .line 134
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->A:I

    .line 135
    iput v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->B:I

    .line 136
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->C:F

    .line 137
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->D:F

    .line 138
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->E:F

    .line 139
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->F:F

    .line 140
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->G:F

    const/4 v4, 0x0

    .line 142
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->I:Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->J:Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->K:Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->L:Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->M:F

    .line 148
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->N:F

    .line 149
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->O:F

    .line 150
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->P:F

    .line 151
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    .line 152
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    .line 153
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    .line 154
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    .line 155
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    .line 156
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    .line 157
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 158
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 159
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    .line 160
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->Z:Z

    .line 161
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aa:Z

    .line 162
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    .line 163
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    .line 164
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    .line 165
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ae:Z

    .line 166
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->af:Z

    .line 168
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ag:Z

    .line 169
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    .line 170
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ai:Z

    .line 171
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 172
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 173
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 174
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 175
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 176
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result v5

    iput v5, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ap:F

    .line 178
    iget v5, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    iput v5, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aq:F

    .line 179
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const-wide/16 v5, 0x0

    .line 180
    iput-wide v5, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->as:J

    .line 181
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->at:Lcom/oplus/camera/ui/menu/shareedit/b;

    .line 182
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    .line 183
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    .line 184
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aw:Landroid/view/animation/Interpolator;

    .line 185
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    .line 186
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ay:Landroid/content/SharedPreferences;

    .line 187
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    const/4 v5, 0x4

    .line 189
    new-array v6, v5, [Z

    fill-array-data v6, :array_0

    iput-object v6, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    .line 190
    new-array v5, v5, [I

    fill-array-data v5, :array_1

    iput-object v5, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aB:[I

    .line 191
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    .line 192
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aD:Lcom/oplus/camera/ui/menu/shareedit/a$b;

    .line 193
    iput-object v4, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    .line 194
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aF:Z

    .line 195
    iput-boolean v1, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    .line 196
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aH:Z

    .line 197
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aI:Z

    .line 198
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    .line 199
    iput-boolean v3, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aK:Z

    .line 200
    iput v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aL:F

    move-object/from16 v2, p1

    .line 314
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    move-object/from16 v2, p5

    .line 315
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aD:Lcom/oplus/camera/ui/menu/shareedit/a$b;

    move-object/from16 v2, p6

    .line 316
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    move-object/from16 v2, p7

    .line 317
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    move-object/from16 v2, p4

    .line 318
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    .line 319
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    const-string v4, "soloop_info"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ay:Landroid/content/SharedPreferences;

    .line 321
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ay:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    move-object/from16 v2, p2

    .line 322
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    .line 323
    move-object/from16 v2, p3

    check-cast v2, Lcom/oplus/camera/Camera;

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    .line 324
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/control/a;->t()Lcom/oplus/camera/ui/control/e;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    .line 325
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    .line 326
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    .line 327
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aI:Z

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->n()V

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->o()V

    .line 330
    new-instance v2, Lcom/oplus/camera/ui/menu/shareedit/b;

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/ui/menu/shareedit/b;-><init>(FF)V

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->at:Lcom/oplus/camera/ui/menu/shareedit/b;

    .line 331
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x0

    const v5, 0x3eae147b    # 0.34f

    const v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->aw:Landroid/view/animation/Interpolator;

    .line 333
    new-instance v2, Lcom/oplus/camera/ui/menu/shareedit/a$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/oplus/camera/ui/menu/shareedit/a$8;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    .line 348
    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(ZZ)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x7f0903b4
        0x7f090333
        0x7f090140
        0x7f09034c
    .end array-data
.end method

.method static synthetic A(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    return p0
.end method

.method private A()V
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 847
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b()V

    const/16 v0, 0xff

    .line 849
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    const/4 v0, 0x4

    .line 850
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 852
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$15;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$15;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 861
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aq:F

    .line 866
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 867
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->v()V

    .line 868
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 869
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private B()V
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 874
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b()V

    const/16 v0, 0xff

    .line 876
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    const/4 v0, 0x4

    .line 877
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 879
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$2;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 888
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aq:F

    .line 893
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 894
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->v()V

    .line 895
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 896
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic B(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ae:Z

    return p0
.end method

.method private C()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->clearAnimation()V

    .line 901
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic C(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->af:Z

    return p0
.end method

.method static synthetic D(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->z()V

    return-void
.end method

.method private D()Z
    .locals 1

    .line 943
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E()V
    .locals 4

    .line 947
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 948
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    const-wide/16 v2, 0xb23

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->E()V

    return-void
.end method

.method static synthetic F(Lcom/oplus/camera/ui/menu/shareedit/a;)F
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->y()F

    move-result p0

    return p0
.end method

.method private F()V
    .locals 4

    .line 1169
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->t()Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1175
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v1

    .line 1177
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1181
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->l()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1185
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    .line 1189
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "image/*"

    goto :goto_0

    :cond_3
    const-string v0, "video/*"

    :goto_0
    move-object v3, v0

    .line 1192
    :cond_4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 1193
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1195
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x10008000

    .line 1196
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1199
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->I()V

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1203
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/Camera;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpSystemShare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareEditThumbMenu"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic G(Lcom/oplus/camera/ui/menu/shareedit/a;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aq:F

    return p0
.end method

.method private G()V
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->t()Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1216
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    .line 1218
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/net/Uri;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1222
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1224
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "edit_skill"

    const-string v2, "doodle"

    .line 1226
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "finish_operate"

    const-string v2, "save,share"

    .line 1227
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-virtual {v0}, Lcom/oplus/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "isInternalSdcard"

    .line 1229
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "editor_state_item"

    const-string v3, "graffiti"

    .line 1230
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1234
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x10008000

    .line 1235
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1238
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->I()V

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1242
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const v0, 0x7f010092

    const v1, 0x7f010041

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/Camera;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareEditThumbMenu"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic H(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    return-object p0
.end method

.method private H()V
    .locals 4

    .line 1249
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->t()Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1255
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    .line 1257
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/net/Uri;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1261
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "oplusos.intent.action.SOLOOP_VIDEO_EDITOR"

    .line 1262
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "id_list"

    .line 1266
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "tab_name"

    const-string v2, "template"

    .line 1267
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "use_template"

    .line 1268
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1270
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x10008000

    .line 1271
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1274
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->I()V

    .line 1277
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1278
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    .line 1279
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1280
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-ne v0, p0, :cond_3

    const p0, 0x7f010090

    goto :goto_0

    :cond_3
    const p0, 0x7f01008c

    :goto_0
    const/4 v0, 0x0

    .line 1278
    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/Camera;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpSoloop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareEditThumbMenu"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private I()V
    .locals 3

    const-string v0, "ShareEditThumbMenu"

    .line 1287
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1291
    :cond_0
    new-instance p0, Landroid/view/OplusWindowManager;

    invoke-direct {p0}, Landroid/view/OplusWindowManager;-><init>()V

    :try_start_0
    const-string v1, "unlockOrShowSecurity"

    .line 1294
    invoke-virtual {p0, v1}, Landroid/view/OplusWindowManager;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "OplusWindowManager error:"

    .line 1298
    invoke-static {v0, v1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OplusWindowManager exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic I(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    return-void
.end method

.method static synthetic J(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/menu/shareedit/a$b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aD:Lcom/oplus/camera/ui/menu/shareedit/a$b;

    return-object p0
.end method

.method private J()Z
    .locals 0

    .line 1326
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/m/b;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1327
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/m/b;->g()Z

    move-result p0

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

.method static synthetic K(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->w()V

    return-void
.end method

.method private K()Z
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 1465
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 1466
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 1467
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 1468
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;)Z

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

.method private L()Z
    .locals 2

    .line 1541
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ay:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "key_is_soloop_in_market"

    .line 1542
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic L(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aK:Z

    return p0
.end method

.method static synthetic M(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->F()V

    return-void
.end method

.method private M()Z
    .locals 0

    const-string p0, "com.oplus.show.soloop.support"

    .line 1549
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private N()V
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aM:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1605
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->P()V

    .line 1608
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aM:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic N(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->G()V

    return-void
.end method

.method private O()V
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aN:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1613
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->Q()V

    .line 1616
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic O(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->M()Z

    move-result p0

    return p0
.end method

.method private P()V
    .locals 3

    const/4 v0, 0x2

    .line 1620
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aM:Landroid/animation/ValueAnimator;

    .line 1621
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aM:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/shareedit/a$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$6;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1631
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aM:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1632
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aM:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/oplus/camera/ui/menu/shareedit/a;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method static synthetic P(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->H()V

    return-void
.end method

.method static synthetic Q(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/ThumbImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    return-object p0
.end method

.method private Q()V
    .locals 3

    const/4 v0, 0x2

    .line 1636
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aN:Landroid/animation/ValueAnimator;

    .line 1637
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aN:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/shareedit/a$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$7;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1647
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aN:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x127

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1648
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aN:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/oplus/camera/ui/menu/shareedit/a;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic R(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/ThumbImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    return-object p0
.end method

.method private a(F)F
    .locals 1

    .line 529
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->C:F

    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->D:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/a;F)F
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(F)F

    move-result p0

    return p0
.end method

.method private a(I)I
    .locals 0

    .line 205
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "\\."

    .line 1141
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1143
    array-length p1, p0

    const/4 v1, 0x1

    if-le v1, p1, :cond_1

    goto :goto_3

    .line 1147
    :cond_1
    array-length p1, p0

    sub-int/2addr p1, v1

    aget-object p0, p0, p1

    const-string p1, "jpeg"

    .line 1149
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "jpg"

    .line 1150
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "raw"

    .line 1152
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "dng"

    .line 1153
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "heic_8bits"

    .line 1155
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "heic_10bits"

    .line 1156
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "heic"

    .line 1157
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "mp4"

    .line 1159
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "video/mp4"

    return-object p0

    :cond_5
    const-string p1, "3gp"

    .line 1161
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "video/3gp"

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    :goto_0
    const-string p0, "image/heic"

    return-object p0

    :cond_8
    :goto_1
    const-string p0, "image/x-adobe-dng"

    return-object p0

    :cond_9
    :goto_2
    const-string p0, "image/jpeg"

    return-object p0

    :cond_a
    :goto_3
    return-object v0
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V
    .locals 1

    .line 666
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    int-to-float p0, p0

    const v0, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 667
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V
    .locals 1

    .line 656
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    int-to-float p0, p0

    const v0, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x1

    int-to-float p0, p3

    int-to-float p3, p4

    sub-float/2addr p3, p0

    mul-float/2addr p3, p5

    add-float/2addr p0, p3

    float-to-int p0, p0

    .line 657
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 658
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p0, p5

    if-gez p0, :cond_0

    if-eqz p6, :cond_0

    const/4 p0, 0x0

    .line 661
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/a;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V

    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1332
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 1335
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFileOk: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShareEditThumbMenu"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Landroid/net/Uri;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1307
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-virtual {v1}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 1309
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->J()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1318
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 1310
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onThumbNailClick, imageCaptureListIsEmpty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/m/b;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", imageSaveListIsEmpty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/m/b;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isUriValid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShareEditThumbMenu"

    .line 1310
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Lcom/oplus/camera/ui/menu/shareedit/a$a;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1472
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aF:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/a;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    return-object p0
.end method

.method private b(F)V
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 907
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    return-void

    .line 911
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->k:F

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 912
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->k:F

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result v0

    add-float/2addr v0, p1

    .line 913
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    goto :goto_0

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    const v0, -0x435c28f6    # -0.02f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    .line 915
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    .line 916
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 917
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    goto :goto_0

    .line 919
    :cond_2
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    .line 922
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result p1

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->A:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    const/4 p1, 0x2

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-ne p1, v1, :cond_3

    .line 923
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    .line 924
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->u()V

    :cond_3
    const/4 p1, 0x3

    .line 927
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result p1

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->B:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_4

    const/4 p1, 0x0

    .line 928
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    .line 929
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->r()V

    :cond_4
    return-void
.end method

.method private b(I)V
    .locals 2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBgAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to -> :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareEditThumbMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/shareedit/a;F)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/shareedit/a;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/shareedit/a;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->e:F

    return p0
.end method

.method private c(F)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-int p1, p1

    .line 938
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 939
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to -> :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareEditThumbMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    return-void
.end method

.method private c(Lcom/oplus/camera/ui/control/e;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    .line 462
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    if-nez p1, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    .line 467
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ap:F

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/shareedit/a;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->d(Z)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    return p0
.end method

.method private d(Lcom/oplus/camera/ui/control/e;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    .line 473
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    if-nez p1, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->l()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    .line 478
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ap:F

    return-void
.end method

.method private d(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 514
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    .line 515
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->L:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->n:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->J:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->p:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->K:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->r:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V

    if-eqz p1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->d()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ae:Z

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->D()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->af:Z

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    return p1
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aF:Z

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aI:Z

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/menu/shareedit/a;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->F:F

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/menu/shareedit/a;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->G:F

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/Camera;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/ui/menu/shareedit/a;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->E:F

    return p0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private n()V
    .locals 7

    const v0, 0x7f070bdb

    .line 209
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    const v0, 0x7f070a75

    .line 210
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->x:I

    const v0, 0x7f070bcf

    .line 211
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    const v0, 0x7f070a73

    .line 212
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->y:I

    const v1, 0x7f070091

    .line 213
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->z:I

    .line 214
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->y:I

    add-int/2addr v2, v4

    iget v5, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->x:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->f:F

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v2, v6

    mul-int/lit8 v6, v5, 0x3

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 215
    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->g:F

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v2, v6

    mul-int/lit8 v6, v5, 0x5

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 216
    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->h:F

    .line 217
    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->h:F

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->e:F

    add-int v2, v3, v1

    .line 218
    iget v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->z:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    add-int/2addr v1, v3

    int-to-float v1, v1

    .line 219
    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->j:F

    const/4 v1, 0x0

    .line 220
    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->k:F

    const v1, 0x7f07008d

    .line 221
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->l:F

    const v1, 0x7f07008e

    .line 222
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->m:F

    .line 223
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->n:I

    .line 224
    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->x:I

    mul-int/lit8 v3, v2, 0x3

    iget v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v5, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->y:I

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v3, v6

    iput v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->o:I

    .line 225
    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->p:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    add-int/2addr v3, v5

    .line 226
    iput v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->q:I

    .line 227
    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->r:I

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    .line 228
    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->s:I

    .line 229
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->t:I

    const v0, 0x7f070a71

    .line 230
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->A:I

    const v0, 0x7f070a70

    .line 231
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->B:I

    .line 232
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->u:I

    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private o()V
    .locals 7

    .line 236
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->u:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->e:F

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const v2, 0x7f0805f4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->u:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->u:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 243
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->u:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 244
    invoke-virtual {v2}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    const v2, 0x7f070bd0

    .line 245
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v2

    div-int/2addr v0, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->F:F

    const v0, 0x7f070181

    .line 246
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v2

    iget v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    sub-int/2addr v2, v4

    div-int/2addr v2, v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    sub-int/2addr v2, v4

    .line 247
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->P()I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x7f070184

    .line 248
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v2, v4

    const v4, 0x7f070bd3

    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->G:F

    .line 250
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v3

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->w:I

    add-int/2addr v0, v2

    .line 252
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->P()I

    move-result v4

    sub-int/2addr v2, v4

    .line 253
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->G:F

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/oplus/camera/ui/menu/shareedit/a$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$1;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->aq()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v2, 0x7f090406

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    .line 284
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    invoke-virtual {v0, v2, v4}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const v2, 0x7f090333

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const v2, 0x7f090140

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const v2, 0x7f09034c

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const v2, 0x7f0902cf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v0, 0x4

    .line 289
    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 291
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    aput-object v2, v0, v1

    .line 292
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 293
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    aput-object v2, v0, v1

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->I:Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->J:Landroid/widget/RelativeLayout$LayoutParams;

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->K:Landroid/widget/RelativeLayout$LayoutParams;

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->L:Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private p()F
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    if-eqz v0, :cond_0

    .line 375
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->h:F

    return p0

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->f:F

    return p0

    .line 377
    :cond_2
    :goto_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->g:F

    return p0
.end method

.method static synthetic p(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->J:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private q()V
    .locals 1

    const/16 v0, 0xff

    .line 454
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    .line 455
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    .line 456
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->z()V

    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->q:I

    return p0
.end method

.method private r()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->C:F

    .line 534
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->D:F

    const/4 v0, 0x5

    .line 535
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 536
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 538
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->E:F

    .line 547
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$9;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 593
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 595
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->an:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 539
    :cond_1
    :goto_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 540
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->d(Z)V

    :cond_2
    return-void
.end method

.method static synthetic s(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->p:I

    return p0
.end method

.method private s()Z
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    .line 600
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    .line 601
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->p()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ap:F

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_2

    .line 603
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    iget-boolean v0, v0, Lcom/oplus/camera/ui/control/e;->a:Z

    if-nez v0, :cond_2

    .line 605
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method static synthetic t(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->K:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private t()Z
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->at()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic u(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->s:I

    return p0
.end method

.method private u()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animToFullExpand, mCameraUIListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareEditThumbMenu"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 625
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-eq v0, v1, :cond_1

    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    aput-object v2, v0, v1

    .line 630
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b()V

    const/16 v0, 0xff

    .line 632
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    const/4 v0, 0x4

    .line 633
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 635
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    if-nez v0, :cond_2

    .line 636
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$10;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$10;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 644
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aq:F

    .line 649
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 650
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->v()V

    .line 651
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aj:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic v(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->r:I

    return p0
.end method

.method private v()V
    .locals 6

    .line 671
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    const/4 v1, 0x6

    if-eq v1, v0, :cond_6

    const/4 v2, 0x7

    if-eq v2, v0, :cond_6

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    goto/16 :goto_1

    .line 675
    :cond_0
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 677
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const-wide/16 v1, 0x50

    const-wide/16 v3, 0x12c

    if-nez v0, :cond_1

    .line 678
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$11;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$11;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 686
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setStartOffset(J)V

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->at:Lcom/oplus/camera/ui/menu/shareedit/b;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    if-nez v0, :cond_2

    .line 691
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$12;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$12;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 727
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 728
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->at:Lcom/oplus/camera/ui/menu/shareedit/b;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    if-nez v0, :cond_3

    .line 732
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$13;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$13;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    .line 743
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setDuration(J)V

    .line 744
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setStartOffset(J)V

    .line 745
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->at:Lcom/oplus/camera/ui/menu/shareedit/b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 748
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    const-wide/16 v1, 0x6e

    if-eqz v0, :cond_4

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->am:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setStartOffset(J)V

    .line 753
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    if-eqz v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->al:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 755
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setStartOffset(J)V

    goto :goto_0

    .line 757
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setStartOffset(J)V

    .line 760
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->x()V

    .line 761
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->w()V

    :cond_6
    :goto_1
    return-void
.end method

.method private w()V
    .locals 4

    .line 784
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 786
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconAlpha, mbEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareEditThumbMenu"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ac:Z

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setImageAlpha(I)V

    .line 790
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setDrawableAlpha(F)V

    .line 791
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    .line 794
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    if-eqz v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setImageAlpha(I)V

    .line 796
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setDrawableAlpha(F)V

    .line 797
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    .line 801
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageAlpha(I)V

    .line 802
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setDrawableAlpha(F)V

    .line 803
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    .line 805
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    if-eqz v0, :cond_3

    .line 806
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->E()V

    :cond_3
    return-void
.end method

.method static synthetic w(Lcom/oplus/camera/ui/menu/shareedit/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ab:Z

    return p0
.end method

.method static synthetic x(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->L:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 811
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ak:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private y()F
    .locals 1

    .line 820
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ap:F

    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aq:F

    sub-float/2addr v0, p0

    return v0
.end method

.method static synthetic y(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->o:I

    return p0
.end method

.method static synthetic z(Lcom/oplus/camera/ui/menu/shareedit/a;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->n:I

    return p0
.end method

.method private z()V
    .locals 4

    .line 824
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ShareEditThumbMenu"

    const-string v0, "showArrow, should not show arrow now"

    .line 825
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 829
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->O:F

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->P:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->aq()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v2, 0x7f07008f

    .line 831
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->m:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->O:F

    const v0, 0x7f070090

    .line 832
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->v:I

    const v3, 0x7f070092

    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->P:F

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->I:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->O:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 834
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->P:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 835
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->requestLayout()V

    .line 838
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    if-nez v0, :cond_3

    return-void

    .line 842
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 387
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(IZ)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 613
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->X:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->av:Lcom/oplus/camera/ui/control/e;

    .line 392
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->k()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1355
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {p1, v0, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    const/4 p1, 0x1

    .line 1356
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    goto :goto_0

    .line 1358
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->g()V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    .line 493
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->k()V

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 496
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 497
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 500
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 503
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ao:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    .line 505
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->r()V

    goto :goto_0

    .line 507
    :cond_1
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/shareedit/a;->d(Z)V

    .line 508
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Lcom/oplus/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 369
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aI:Z

    if-eqz v2, :cond_1

    const v2, 0x800005

    goto :goto_0

    :cond_1
    const v2, 0x800003

    :goto_0
    or-int/lit8 v2, v2, 0x50

    iget v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->F:F

    float-to-int v3, v3

    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->G:F

    float-to-int p0, p0

    .line 368
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/e;)V
    .locals 4

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    .line 397
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(Lcom/oplus/camera/ui/control/e;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->d(Lcom/oplus/camera/ui/control/e;)V

    .line 400
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 404
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    .line 405
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 407
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "share_edit_video_show_expand"

    .line 409
    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 412
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->A()V

    .line 414
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ae:Z

    goto :goto_1

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->B()V

    .line 417
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->af:Z

    goto :goto_1

    .line 421
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    if-eqz p1, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->q()V

    goto :goto_0

    .line 424
    :cond_3
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aH:Z

    .line 427
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->J:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->p:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V

    .line 431
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->K:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->r:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V

    .line 432
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->L:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->n:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;I)V

    .line 433
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->E()V

    .line 434
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->U:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 435
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->T:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 436
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->V:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableMenu, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareEditThumbMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    .line 1506
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    if-nez p1, :cond_1

    const/4 p1, 0x7

    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1507
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aH:Z

    .line 449
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->q()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aI:Z

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1518
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->R:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 488
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->i:F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(F)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 765
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    const/4 v1, 0x7

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/menu/shareedit/a$14;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$14;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 1342
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    .line 1343
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->d(Z)V

    .line 1344
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1345
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    return-void
.end method

.method public g()V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1350
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aG:Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1476
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    const/4 v0, 0x7

    if-eq v0, p0, :cond_1

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

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

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 1491
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aK:Z

    .line 1492
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const v2, 0x7f1003be

    .line 1493
    invoke-virtual {v1, v2}, Lcom/oplus/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_share_and_edit_key"

    .line 1492
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Z:Z

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x1

    .line 1497
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aK:Z

    const-wide/16 v0, 0x0

    .line 1498
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->as:J

    return-void
.end method

.method public k()V
    .locals 1

    .line 1512
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aa:Z

    return-void
.end method

.method public l()Z
    .locals 3

    .line 1523
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->t()Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1525
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/x-adobe-dng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1526
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1527
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const-string v1, "com.oplus.videoeditor"

    .line 1528
    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    .line 1529
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1530
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    .line 1531
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->aj()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m()Z
    .locals 0

    .line 1535
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->au()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1364
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->as:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    const-string v1, "ShareEditThumbMenu"

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1f4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->as:J

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string p0, "onClick, mLastClickTime return"

    .line 1365
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1370
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aK:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1376
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1380
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    .line 1381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->as:J

    .line 1383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "share_edit_video_show_expand"

    const-string v2, "share"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1457
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    goto/16 :goto_0

    .line 1422
    :sswitch_0
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$5;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$5;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1446
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1385
    :sswitch_1
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$3;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1393
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1394
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->q(I)V

    goto :goto_0

    .line 1451
    :sswitch_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/a;->onClick(Landroid/view/View;)V

    .line 1452
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    goto :goto_0

    .line 1399
    :sswitch_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object p1

    .line 1401
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    invoke-static {v0, p1}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1402
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ar:Lcom/oplus/camera/Camera;

    const v1, 0x7f10011b

    const-string v2, ""

    invoke-static {v0, v1, p1, v2}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1403
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aJ:Z

    return-void

    .line 1408
    :cond_3
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$4;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1416
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ax:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1417
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->q(I)V

    :goto_0
    return-void

    .line 1371
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick, return mbEnable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aK:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090140 -> :sswitch_3
        0x7f0902cf -> :sswitch_2
        0x7f090333 -> :sswitch_1
        0x7f09034c -> :sswitch_0
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "key_is_soloop_in_market"

    .line 1481
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1482
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->k()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 955
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Z:Z

    const-string v1, "ShareEditThumbMenu"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aa:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    .line 958
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ap()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 959
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    .line 960
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 970
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_1b

    const/4 p1, 0x0

    if-eq v0, v3, :cond_a

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 1018
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    array-length v6, v1

    if-ge v0, v6, :cond_a

    .line 1019
    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onTouch, ACTION_MOVE isAnimating return"

    .line 1087
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1092
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    if-eqz v0, :cond_4

    const-string p0, "onTouch, ACTION_MOVE mbIntercept return"

    .line 1093
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1098
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->N:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    if-eqz p1, :cond_9

    .line 1099
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->N:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aL:F

    .line 1101
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aL:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->t:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    return v3

    :cond_5
    move p1, v2

    .line 1105
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_7

    .line 1106
    aget-boolean v0, v0, p1

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->M:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->t:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1107
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    aput-boolean v2, v0, p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1112
    :cond_7
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ag:Z

    if-eqz p1, :cond_9

    .line 1113
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ag:Z

    .line 1115
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ai:Z

    if-eqz p1, :cond_9

    .line 1116
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->S:Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 1117
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    .line 1120
    :cond_8
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->D()Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0xff

    .line 1121
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(I)V

    :cond_9
    return v3

    .line 1023
    :cond_a
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->N:F

    cmpl-float v0, p1, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ai:Z

    if-eqz v0, :cond_c

    .line 1024
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aL:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->t:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 1025
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aL:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_b

    .line 1026
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->u()V

    .line 1027
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    goto :goto_2

    :cond_b
    neg-float p1, v0

    float-to-double v0, p1

    mul-double/2addr v0, v6

    double-to-float p1, v0

    .line 1029
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(F)V

    goto :goto_2

    .line 1033
    :cond_c
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aL:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 1034
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->r()V

    .line 1035
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    goto :goto_2

    :cond_d
    neg-float p1, v0

    float-to-double v0, p1

    mul-double/2addr v0, v6

    double-to-float p1, v0

    .line 1037
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(F)V

    .line 1041
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->O()V

    .line 1043
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    if-eqz p1, :cond_11

    .line 1044
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    array-length p2, p1

    if-ge v2, p2, :cond_10

    .line 1045
    aget-boolean p1, p1, v2

    if-eqz p1, :cond_f

    .line 1046
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_4

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    return v3

    .line 1054
    :cond_11
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->E()V

    .line 1055
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->M:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->t:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_12

    move p1, v3

    goto :goto_5

    :cond_12
    move p1, v2

    :goto_5
    move p2, v2

    .line 1057
    :goto_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    array-length v1, v0

    if-ge p2, v1, :cond_14

    .line 1058
    aget-boolean v0, v0, p2

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 1059
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aC:[Landroid/view/View;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v3

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_14
    if-eqz p1, :cond_18

    .line 1065
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->d:I

    if-eq v3, p1, :cond_17

    if-nez p1, :cond_15

    goto :goto_7

    .line 1070
    :cond_15
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->D()Z

    move-result p1

    if-eqz p1, :cond_16

    move v2, v4

    :cond_16
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    goto :goto_8

    .line 1067
    :cond_17
    :goto_7
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    .line 1068
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->u()V

    :goto_8
    return v3

    .line 1075
    :cond_18
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ai:Z

    if-eqz p1, :cond_19

    .line 1076
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->C()V

    .line 1077
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->u()V

    goto :goto_9

    .line 1079
    :cond_19
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-ne v5, p1, :cond_1a

    .line 1080
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->r()V

    :cond_1a
    :goto_9
    return v3

    .line 972
    :cond_1b
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->N()V

    move v0, v2

    .line 974
    :goto_a
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    array-length v8, v7

    if-ge v0, v8, :cond_1d

    .line 975
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aB:[I

    aget v8, v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_1c

    move v8, v3

    goto :goto_b

    :cond_1c
    move v8, v2

    :goto_b
    aput-boolean v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 978
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cf

    if-ne p1, v0, :cond_1e

    .line 979
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aA:[Z

    aput-boolean v3, p1, v2

    .line 982
    :cond_1e
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->K()Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p0, "onTouch, ACTION_DOWN isAnimating return"

    .line 983
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 988
    :cond_1f
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ad:Z

    .line 990
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->au:Landroid/os/Handler;

    if-eqz p1, :cond_20

    .line 991
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->N:F

    .line 995
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->M:F

    .line 997
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-gez p1, :cond_21

    .line 998
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->H:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1001
    :cond_21
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->d:I

    if-eq v3, p1, :cond_23

    if-eq v4, p1, :cond_23

    if-nez p1, :cond_22

    goto :goto_c

    .line 1011
    :cond_22
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    goto :goto_d

    .line 1006
    :cond_23
    :goto_c
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ah:Z

    .line 1007
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-eq v4, p1, :cond_24

    move v5, v6

    :cond_24
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(I)V

    .line 1008
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 1009
    iget p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->c:I

    if-ne v6, p1, :cond_25

    move v2, v3

    :cond_25
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ai:Z

    .line 1014
    :goto_d
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->ag:Z

    return v3

    .line 961
    :cond_26
    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTouch, !mbShareAndMarkEnable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Z:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", !mbEnableTouch: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aa:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", !mbEnable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->az:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isMoreModeTab: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->Y:Lcom/oplus/camera/ui/control/a;

    .line 963
    invoke-virtual {p2}, Lcom/oplus/camera/ui/control/a;->ap()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mThumbImageViewVisibility: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->W:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 964
    invoke-virtual {p2}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isDoubleFinger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a;->aE:Lcom/oplus/camera/ui/CameraUIListener;

    .line 965
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->p()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 961
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

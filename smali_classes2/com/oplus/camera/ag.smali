.class public Lcom/oplus/camera/ag;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ag$a;,
        Lcom/oplus/camera/ag$c;,
        Lcom/oplus/camera/ag$b;
    }
.end annotation


# static fields
.field public static final a:F

.field private static final b:F


# instance fields
.field private A:Lcom/oplus/camera/ag$a;

.field private B:Lcom/oplus/camera/ui/preview/ai;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

.field private F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

.field private G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

.field private H:Lcom/oplus/camera/ui/RotableTextView;

.field private I:Lcom/oplus/camera/ui/x;

.field private J:Lcom/oplus/camera/ui/RotableTextView;

.field private K:Lcom/oplus/camera/ab;

.field private L:Landroid/app/Activity;

.field private M:Landroid/content/res/Resources;

.field private N:Lcom/oplus/camera/ComboPreferences;

.field private O:Lcom/oplus/camera/capmode/a;

.field private P:Lcom/oplus/camera/af;

.field private Q:Landroid/graphics/Rect;

.field private R:Landroid/animation/ValueAnimator;

.field private S:Landroid/animation/ValueAnimator;

.field private T:Landroid/animation/AnimatorSet;

.field private U:Landroid/animation/AnimatorSet;

.field private V:Landroid/animation/AnimatorSet;

.field private W:Landroid/animation/AnimatorSet;

.field private X:Landroid/animation/ValueAnimator;

.field private Y:Landroid/view/ViewGroup;

.field private Z:Landroid/os/Handler;

.field private aa:Ljava/text/DecimalFormat;

.field private ab:Lcom/oplus/camera/screen/g;

.field private ac:I

.field private ad:I

.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Landroid/view/animation/PathInterpolator;

.field private an:Landroid/view/animation/PathInterpolator;

.field private ao:Landroid/view/animation/PathInterpolator;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.oplus.ultar.wide.zoom.point.value"

    .line 80
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/oplus/camera/ag;->a:F

    .line 106
    sget v0, Lcom/oplus/camera/ag;->a:F

    sput v0, Lcom/oplus/camera/ag;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;Lcom/oplus/camera/screen/g;)V
    .locals 6

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ag;->c:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    iput v0, p0, Lcom/oplus/camera/ag;->f:F

    .line 141
    iput v0, p0, Lcom/oplus/camera/ag;->g:F

    const/4 v1, 0x0

    .line 142
    iput v1, p0, Lcom/oplus/camera/ag;->h:F

    .line 143
    iput v1, p0, Lcom/oplus/camera/ag;->i:F

    .line 144
    iput v1, p0, Lcom/oplus/camera/ag;->j:F

    .line 145
    iput v1, p0, Lcom/oplus/camera/ag;->k:F

    const/4 v2, 0x0

    .line 146
    iput v2, p0, Lcom/oplus/camera/ag;->l:I

    .line 147
    iput v2, p0, Lcom/oplus/camera/ag;->m:I

    .line 148
    iput v2, p0, Lcom/oplus/camera/ag;->n:I

    .line 149
    iput v2, p0, Lcom/oplus/camera/ag;->o:I

    .line 150
    iput v2, p0, Lcom/oplus/camera/ag;->p:I

    .line 151
    iput v2, p0, Lcom/oplus/camera/ag;->q:I

    .line 152
    iput v2, p0, Lcom/oplus/camera/ag;->r:I

    .line 153
    iput v2, p0, Lcom/oplus/camera/ag;->s:I

    .line 154
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->t:Z

    .line 155
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->u:Z

    .line 156
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->v:Z

    .line 157
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->w:Z

    .line 158
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->x:Z

    .line 159
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->y:Z

    .line 160
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->z:Z

    const/4 v3, 0x0

    .line 162
    iput-object v3, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 163
    iput-object v3, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    .line 164
    iput-object v3, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    .line 165
    iput-object v3, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    .line 166
    iput-object v3, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    .line 167
    iput-object v3, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    .line 168
    iput-object v3, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    .line 169
    iput-object v3, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    .line 170
    iput-object v3, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    .line 171
    iput-object v3, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    .line 172
    iput-object v3, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    .line 173
    iput-object v3, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    .line 174
    iput-object v3, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    .line 175
    iput-object v3, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    .line 176
    iput-object v3, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 177
    iput-object v3, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 178
    iput-object v3, p0, Lcom/oplus/camera/ag;->Q:Landroid/graphics/Rect;

    .line 179
    iput-object v3, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    .line 180
    iput-object v3, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    .line 181
    iput-object v3, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    .line 182
    iput-object v3, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    .line 183
    iput-object v3, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    .line 184
    iput-object v3, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    .line 185
    iput-object v3, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    .line 186
    iput-object v3, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    .line 187
    iput-object v3, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    .line 188
    iput-object v3, p0, Lcom/oplus/camera/ag;->aa:Ljava/text/DecimalFormat;

    .line 189
    iput-object v3, p0, Lcom/oplus/camera/ag;->ab:Lcom/oplus/camera/screen/g;

    .line 190
    iput v2, p0, Lcom/oplus/camera/ag;->ac:I

    .line 191
    iput v2, p0, Lcom/oplus/camera/ag;->ad:I

    const-string v3, ""

    .line 192
    iput-object v3, p0, Lcom/oplus/camera/ag;->ae:Ljava/lang/String;

    .line 193
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->af:Z

    .line 194
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->ag:Z

    .line 195
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->ah:Z

    .line 196
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->ai:Z

    .line 197
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->aj:Z

    .line 198
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->ak:Z

    .line 199
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->al:Z

    .line 201
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ed70a3d    # 0.42f

    const v4, 0x3f051eb8    # 0.52f

    const v5, 0x3f6b851f    # 0.92f

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ag;->am:Landroid/view/animation/PathInterpolator;

    .line 202
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    .line 203
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    .line 207
    iput-object p5, p0, Lcom/oplus/camera/ag;->ab:Lcom/oplus/camera/screen/g;

    .line 208
    iput-object p1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    .line 209
    iget-object p1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    .line 210
    iput-object p2, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    .line 211
    iput-object p3, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 212
    iput-object p4, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    .line 213
    new-instance p1, Lcom/oplus/camera/ui/preview/af;

    iget-object p2, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/ui/preview/af;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    .line 214
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1, p5}, Lcom/oplus/camera/ui/preview/ai;->setScreenModeManager(Lcom/oplus/camera/screen/g;)V

    .line 215
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p2, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    iget-object p3, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 216
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const p2, 0x7f090435

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/ai;->setId(I)V

    .line 217
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const p2, 0x7f070da9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ag;->l:I

    .line 218
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const p2, 0x7f070da0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ag;->o:I

    .line 219
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const p2, 0x7f070da1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ag;->m:I

    .line 220
    iget-object p1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070472

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ag;->n:I

    .line 221
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const p2, 0x7f07067d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ag;->p:I

    .line 222
    new-instance p1, Ljava/text/DecimalFormat;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    const-string p3, "0.0"

    invoke-direct {p1, p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object p1, p0, Lcom/oplus/camera/ag;->aa:Ljava/text/DecimalFormat;

    .line 224
    iget-object p1, p0, Lcom/oplus/camera/ag;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/oplus/camera/ag;->c:Ljava/util/ArrayList;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object p1, p0, Lcom/oplus/camera/ag;->c:Ljava/util/ArrayList;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/oplus/camera/ag;->c:Ljava/util/ArrayList;

    const p2, 0x4121999a    # 10.1f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    new-instance p2, Lcom/oplus/camera/ag$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ag$1;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/ai;->setOnSeekBarChangeListener(Lcom/oplus/camera/ui/b$a;)V

    .line 492
    invoke-direct {p0}, Lcom/oplus/camera/ag;->D()V

    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->K()V

    return-void
.end method

.method static synthetic B(Lcom/oplus/camera/ag;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic C(Lcom/oplus/camera/ag;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/ag;->q:I

    return p0
.end method

.method static synthetic D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private D()V
    .locals 2

    .line 496
    new-instance v0, Lcom/oplus/camera/ag$12;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ag$12;-><init>(Lcom/oplus/camera/ag;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    return-void
.end method

.method static synthetic E(Lcom/oplus/camera/ag;)Landroid/view/ViewGroup;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private E()V
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz p0, :cond_0

    .line 558
    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->r()V

    :cond_0
    return-void
.end method

.method static synthetic F(Lcom/oplus/camera/ag;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private F()V
    .locals 2

    const-string v0, "ZoomManager"

    const-string v1, "onMaxZoomValueResponsed"

    .line 692
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 696
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.disable.shutter.button.up.vibrate"

    .line 697
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.disable.shutter.button.down.vibrate"

    .line 698
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->p()V

    .line 703
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d()V

    return-void
.end method

.method private G()V
    .locals 2

    const-string v0, "ZoomManager"

    const-string v1, "onMinZoomValueResponsed"

    .line 707
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 711
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.disable.shutter.button.up.vibrate"

    .line 712
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.disable.shutter.button.down.vibrate"

    .line 713
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->p()V

    .line 718
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d()V

    return-void
.end method

.method static synthetic G(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->aa()Z

    move-result p0

    return p0
.end method

.method private H()Z
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic H(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->Z()Z

    move-result p0

    return p0
.end method

.method private I()V
    .locals 5

    .line 920
    iget-object v0, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 921
    invoke-direct {p0}, Lcom/oplus/camera/ag;->ac()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    .line 922
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    iput-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    .line 924
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/InertialZoomButton;

    iput-object v0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/InertialZoomButton;

    iput-object v0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    .line 926
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotableTextView;

    iput-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    .line 927
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v3, 0x7f0706a5

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    .line 928
    iget-object v1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    iget-object v3, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v4, 0x7f060464

    .line 929
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v3, 0x0

    .line 928
    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/oplus/camera/ui/RotableTextView;->setShadowLayer(FFFI)V

    .line 931
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    .line 933
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTextColor(I)V

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    new-instance v1, Lcom/oplus/camera/ag$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$17;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setOnSeekBarListener(Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;)V

    .line 1017
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    new-instance v1, Lcom/oplus/camera/ag$18;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$18;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1034
    iget-object v0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    new-instance v1, Lcom/oplus/camera/ag$19;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$19;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->setOnInertialZoomButtonListener(Lcom/oplus/camera/ui/widget/InertialZoomButton$a;)V

    .line 1072
    iget-object v0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    new-instance v1, Lcom/oplus/camera/ag$20;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$20;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->setOnInertialZoomButtonListener(Lcom/oplus/camera/ui/widget/InertialZoomButton$a;)V

    return-void
.end method

.method static synthetic I(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->X()Z

    move-result p0

    return p0
.end method

.method static synthetic J(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertialZoomButton;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    return-object p0
.end method

.method private J()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    .line 1114
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotableTextView;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic K(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertialZoomButton;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    return-object p0
.end method

.method private K()V
    .locals 3

    .line 1207
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    .line 1208
    iget-object v0, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1209
    iget-object v0, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const v2, 0x7f0100d1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1210
    iget-object v0, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/-$$Lambda$ag$VfCu1CbVzuM9fM0MPTBNn2CQhtE;

    invoke-direct {v1, p0}, Lcom/oplus/camera/-$$Lambda$ag$VfCu1CbVzuM9fM0MPTBNn2CQhtE;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1220
    iget-object v0, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ag$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$2;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private L()V
    .locals 5

    .line 1257
    iget-object v0, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1258
    iput-boolean v1, p0, Lcom/oplus/camera/ag;->x:Z

    const/4 v2, 0x0

    .line 1259
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    .line 1261
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1262
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1263
    iget-object v2, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    const-wide/16 v3, 0x19

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v0, :cond_1

    .line 1267
    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->j()V

    .line 1268
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ag$a;->a(Z)V

    :cond_1
    return-void
.end method

.method private M()V
    .locals 8

    .line 1324
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1328
    iput-boolean v0, p0, Lcom/oplus/camera/ag;->t:Z

    .line 1329
    iget-object v1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    .line 1331
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1333
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/oplus/camera/ag;->m:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v5, 0x1f4

    .line 1335
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1336
    iget-object v3, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const v7, 0x7f0100d1

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1338
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1339
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1340
    iget-object v4, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const v5, 0x7f0100d3

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1342
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1343
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1346
    new-instance v0, Lcom/oplus/camera/ag$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ag$3;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1368
    iget-object p0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotableTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private N()V
    .locals 6

    const/4 v0, 0x0

    .line 1372
    iput-boolean v0, p0, Lcom/oplus/camera/ag;->t:Z

    .line 1373
    iget-object v1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    .line 1375
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1377
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/oplus/camera/ag;->o:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x1f4

    .line 1379
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1380
    iget-object v2, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const v4, 0x7f0100d2

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1382
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xfa

    .line 1383
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1384
    iget-object v3, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const v4, 0x7f0100d3

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1386
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1387
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 1388
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1389
    new-instance v0, Lcom/oplus/camera/ag$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ag$4;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1409
    iget-object p0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotableTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private O()V
    .locals 7

    .line 1690
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1691
    iget-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 1692
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1694
    iget-object v4, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    new-array v1, v1, [F

    iget v5, p0, Lcom/oplus/camera/ag;->n:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v1, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v1, v5

    const-string v5, "translationY"

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1696
    iget-object v4, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1697
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1699
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    .line 1700
    iget-object v2, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1701
    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1702
    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oplus/camera/ag$7;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ag$7;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1719
    iget-object p0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private P()V
    .locals 5

    .line 1723
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1724
    iget-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 1725
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1727
    iget-object v2, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    iget v3, p0, Lcom/oplus/camera/ag;->n:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const-string v3, "translationY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1729
    iget-object v2, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 1730
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1732
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    .line 1733
    iget-object v2, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1734
    iget-object v0, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ag$8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$8;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private Q()V
    .locals 7

    .line 1748
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1749
    iget-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    .line 1750
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1752
    iget-object v4, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    iget v5, p0, Lcom/oplus/camera/ag;->n:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v1, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v1, v5

    const-string v5, "translationY"

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1754
    iget-object v4, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1755
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1757
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    .line 1758
    iget-object v2, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1759
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1760
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oplus/camera/ag$9;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ag$9;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1778
    iget-object p0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private R()V
    .locals 11

    .line 1782
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1783
    iget-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    .line 1784
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1786
    iget-object v4, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    new-array v5, v1, [F

    iget v6, p0, Lcom/oplus/camera/ag;->n:I

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v6, v5, v8

    const-string v9, "translationX"

    invoke-static {v4, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1789
    iget v5, p0, Lcom/oplus/camera/ag;->s:I

    const/16 v10, 0x10e

    if-ne v10, v5, :cond_0

    const/4 v5, 0x4

    iget v10, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v5, v10, :cond_0

    .line 1791
    iget-object v4, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    iget v5, p0, Lcom/oplus/camera/ag;->n:I

    int-to-float v5, v5

    aput v5, v1, v7

    aput v6, v1, v8

    invoke-static {v4, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1795
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1796
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1798
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    .line 1799
    iget-object v1, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1800
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1801
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oplus/camera/ag$10;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ag$10;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1819
    iget-object p0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private S()V
    .locals 5

    .line 1823
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1824
    iget-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 1825
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1827
    iget-object v2, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    iget v3, p0, Lcom/oplus/camera/ag;->n:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const-string v3, "translationY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1829
    iget-object v2, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    .line 1830
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1832
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    .line 1833
    iget-object v2, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1834
    iget-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ag$11;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$11;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private T()V
    .locals 9

    .line 1854
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1855
    iget-object v2, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 1856
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1858
    iget-object v2, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v6, p0, Lcom/oplus/camera/ag;->n:I

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v3, v7

    const-string v6, "translationX"

    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1861
    iget v3, p0, Lcom/oplus/camera/ag;->s:I

    const/16 v8, 0x10e

    if-ne v8, v3, :cond_0

    const/4 v3, 0x4

    iget v8, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v3, v8, :cond_0

    .line 1863
    iget-object v2, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    aput v4, v1, v5

    iget v3, p0, Lcom/oplus/camera/ag;->n:I

    int-to-float v3, v3

    aput v3, v1, v7

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1867
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ag;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x12c

    .line 1868
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1870
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    .line 1871
    iget-object v1, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1872
    iget-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ag$13;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$13;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private U()Z
    .locals 1

    .line 2130
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 2131
    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2132
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2133
    invoke-direct {p0}, Lcom/oplus/camera/ag;->ab()Z

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

.method private V()V
    .locals 4

    .line 2266
    iget-object v0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "off"

    const-string v2, "pref_subsetting_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    iget-object p0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private W()Ljava/lang/String;
    .locals 5

    .line 2949
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const-string v1, "X"

    if-eqz v0, :cond_0

    .line 2950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/ag;->aa:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    iget p0, p0, Lcom/oplus/camera/ag;->f:F

    invoke-virtual {v3, p0}, Lcom/oplus/camera/ui/preview/ai;->f(F)F

    move-result p0

    float-to-double v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2952
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/ag;->aa:Ljava/text/DecimalFormat;

    iget p0, p0, Lcom/oplus/camera/ag;->f:F

    float-to-double v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private X()Z
    .locals 1

    .line 2961
    iget-object v0, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Y()Z
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_2

    .line 2966
    invoke-virtual {v0}, Lcom/oplus/camera/af;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2967
    invoke-virtual {v0}, Lcom/oplus/camera/af;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2968
    invoke-virtual {v0}, Lcom/oplus/camera/af;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2969
    invoke-virtual {v0}, Lcom/oplus/camera/af;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2970
    invoke-virtual {v0}, Lcom/oplus/camera/af;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2971
    invoke-virtual {v0}, Lcom/oplus/camera/af;->E()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2972
    invoke-virtual {v0}, Lcom/oplus/camera/af;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2973
    invoke-virtual {v0}, Lcom/oplus/camera/af;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2974
    invoke-virtual {v0}, Lcom/oplus/camera/af;->G()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2975
    invoke-virtual {v0}, Lcom/oplus/camera/af;->O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v0, :cond_0

    .line 2976
    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->y()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2977
    invoke-virtual {v0}, Lcom/oplus/camera/af;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz p0, :cond_2

    const/16 v0, 0x20

    .line 2978
    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->D()I

    move-result p0

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private Z()Z
    .locals 0

    .line 2987
    iget-object p0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz p0, :cond_0

    .line 2988
    invoke-virtual {p0}, Lcom/oplus/camera/af;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(FI)F
    .locals 1

    const v0, 0x3727c5ac    # 1.0E-5f

    add-float/2addr p0, v0

    const v0, 0x3dcccccd    # 0.1f

    div-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p0, p1

    .line 3209
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    return-object p0
.end method

.method private a(FFZZ)V
    .locals 4

    .line 2489
    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/af;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 2497
    iget-object p3, p0, Lcom/oplus/camera/ag;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    sub-float v1, v0, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 2499
    iget-object v1, p0, Lcom/oplus/camera/ag;->Q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v0, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    move p1, v0

    goto :goto_0

    .line 2510
    :cond_2
    iget p3, p0, Lcom/oplus/camera/ag;->h:F

    iget v0, p0, Lcom/oplus/camera/ag;->i:F

    invoke-static {p1, p3, v0}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 2512
    iget-object p3, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/oplus/camera/ag;->f:F

    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-eqz p3, :cond_6

    .line 2513
    iget p3, p0, Lcom/oplus/camera/ag;->f:F

    iput p3, p0, Lcom/oplus/camera/ag;->g:F

    .line 2514
    iput p1, p0, Lcom/oplus/camera/ag;->f:F

    .line 2515
    iget-object p3, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    const/4 v0, 0x1

    invoke-interface {p3, p1, v0, p2}, Lcom/oplus/camera/ag$a;->a(FZF)V

    .line 2517
    iget p2, p0, Lcom/oplus/camera/ag;->h:F

    cmpl-float p2, p2, p1

    const/4 p3, 0x0

    if-nez p2, :cond_4

    .line 2518
    iget-object p2, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-direct {p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2519
    sget v0, Lcom/oplus/camera/ag;->a:F

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/oplus/camera/ag;->h:F

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v0, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2518
    :goto_1
    invoke-virtual {p2, v0, p4, p3}, Lcom/oplus/camera/ui/x;->a(FZZ)V

    goto :goto_3

    .line 2522
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-direct {p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2523
    sget v0, Lcom/oplus/camera/ag;->a:F

    goto :goto_2

    :cond_5
    move v0, p1

    .line 2522
    :goto_2
    invoke-virtual {p2, v0, p4, p3}, Lcom/oplus/camera/ui/x;->a(FZZ)V

    .line 2527
    :cond_6
    :goto_3
    sget p2, Lcom/oplus/camera/ag;->a:F

    iget p3, p0, Lcom/oplus/camera/ag;->f:F

    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_7

    .line 2528
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/j;->g()V

    .line 2531
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "changeZoom, mZoomValue: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ag;->f:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1211
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1213
    sget v0, Lcom/oplus/camera/ag;->a:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1217
    invoke-direct {p0, p1, p1, v0, v1}, Lcom/oplus/camera/ag;->a(FFZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ag;F)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->f(F)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ag;FF)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ag;->b(FF)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ag;FFZZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ag;->a(FFZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ag;FZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ag;->b(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ag;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->h(I)V

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 726
    new-array v0, v0, [I

    .line 727
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 728
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 729
    aget v0, v0, v2

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    if-lt p3, v0, :cond_1

    if-gt p3, p1, :cond_1

    if-lt p2, v1, :cond_1

    if-gt p2, v3, :cond_1

    move p0, v2

    :cond_1
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ag;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/ag;->u:Z

    return p1
.end method

.method private aa()Z
    .locals 1

    .line 2997
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_0

    .line 2998
    invoke-virtual {v0}, Lcom/oplus/camera/af;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2999
    invoke-virtual {p0}, Lcom/oplus/camera/af;->n()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ab()Z
    .locals 2

    .line 3061
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_0

    .line 3062
    invoke-virtual {v0}, Lcom/oplus/camera/af;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "off"

    const-string v1, "pref_fish_eye_mode"

    .line 3064
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3063
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ac()I
    .locals 1

    .line 3234
    iget p0, p0, Lcom/oplus/camera/ag;->r:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const p0, 0x7f0c0039

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne v0, p0, :cond_1

    const p0, 0x7f0c0038

    return p0

    :cond_1
    const p0, 0x7f0c0037

    return p0
.end method

.method private ad()V
    .locals 3

    .line 3272
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3273
    iget v2, p0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(IZ)V

    .line 3276
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    if-eqz v0, :cond_1

    .line 3277
    iget v2, p0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a(IZ)V

    .line 3280
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    if-eqz v0, :cond_2

    .line 3281
    iget v2, p0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a(IZ)V

    .line 3284
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_3

    .line 3285
    iget p0, p0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    :cond_3
    return-void
.end method

.method private ae()V
    .locals 3

    .line 3290
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    const/16 v1, -0x5a

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3291
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(IZ)V

    .line 3294
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    if-eqz v0, :cond_1

    .line 3295
    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a(IZ)V

    .line 3298
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    if-eqz v0, :cond_2

    .line 3299
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a(IZ)V

    .line 3302
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz p0, :cond_3

    .line 3303
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private b(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 2485
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oplus/camera/ag;->a(FFZZ)V

    return-void
.end method

.method private b(FZ)V
    .locals 8

    .line 2158
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string p1, "handleMessage, cancel click"

    .line 2159
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2165
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    .line 2170
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "on"

    const-string v4, "off"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oplus/camera/af;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2171
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v1

    const-string v5, "pref_none_sat_tele_angle_key"

    if-nez v1, :cond_1

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_1

    .line 2172
    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2173
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_2

    .line 2174
    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2178
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/oplus/camera/af;->k()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2179
    invoke-virtual {v1}, Lcom/oplus/camera/af;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2180
    :cond_3
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/ag;->b(FF)V

    .line 2184
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 2188
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {p1}, Lcom/oplus/camera/af;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2189
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_portrait_half_body_key"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 2190
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {p1}, Lcom/oplus/camera/af;->l()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2191
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_portrait_half_body_remosaic_key"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 2193
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oplus/camera/af;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2196
    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move-object v3, v4

    .line 2201
    :goto_2
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/ag;->b(FF)V

    .line 2202
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_ultra_wide_high_picture_size_key"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 2203
    :cond_8
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v1, :cond_9

    .line 2204
    invoke-virtual {v1}, Lcom/oplus/camera/af;->u()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2205
    invoke-virtual {v1}, Lcom/oplus/camera/af;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2206
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "key_hyper_lapse_zoom_ultra_wide_open"

    .line 2207
    invoke-virtual {v0, v1, v5}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v5

    .line 2206
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2208
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 2210
    :cond_9
    sget v1, Lcom/oplus/camera/ag;->a:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const-string v6, "pref_fish_eye_mode"

    const-string v7, "pref_none_sat_ultra_wide_angle_key"

    if-nez v1, :cond_d

    .line 2211
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_11

    .line 2212
    invoke-virtual {v0}, Lcom/oplus/camera/af;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2213
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/ag;->b(FF)V

    goto/16 :goto_5

    .line 2214
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2215
    iget-object v0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2216
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2219
    invoke-direct {p0}, Lcom/oplus/camera/ag;->V()V

    .line 2220
    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/ag;->b(FF)V

    goto/16 :goto_5

    .line 2221
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v0}, Lcom/oplus/camera/af;->M()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2222
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0, v5}, Lcom/oplus/camera/ag$a;->b(Z)V

    .line 2223
    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/ag;->b(FF)V

    goto/16 :goto_5

    .line 2224
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {p1}, Lcom/oplus/camera/af;->G()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2225
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2226
    invoke-interface {p1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2227
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2228
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->s()V

    goto :goto_5

    .line 2232
    :cond_d
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v1, :cond_10

    .line 2233
    invoke-virtual {v1}, Lcom/oplus/camera/af;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    .line 2234
    invoke-virtual {v1, v7}, Lcom/oplus/camera/ComboPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 2235
    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2236
    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2237
    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2238
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2240
    invoke-direct {p0}, Lcom/oplus/camera/ag;->V()V

    goto :goto_3

    .line 2241
    :cond_e
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v1}, Lcom/oplus/camera/af;->M()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2242
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oplus/camera/ag$a;->b(Z)V

    goto :goto_3

    .line 2243
    :cond_f
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v1}, Lcom/oplus/camera/af;->G()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2244
    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2245
    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2246
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2247
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->s()V

    :cond_10
    :goto_3
    move v1, v5

    :goto_4
    if-gt v1, v5, :cond_11

    sub-float v2, p1, v0

    .line 2252
    iget-object v3, p0, Lcom/oplus/camera/ag;->am:Landroid/view/animation/PathInterpolator;

    int-to-float v4, v1

    int-to-float v6, v5

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 2255
    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/ag;->b(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    if-eqz p2, :cond_12

    .line 2261
    invoke-direct {p0, v5}, Lcom/oplus/camera/ag;->h(I)V

    :cond_12
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ag;F)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->g(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ag;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/ag;->x:Z

    return p1
.end method

.method private c(F)F
    .locals 4

    .line 671
    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    sget v1, Lcom/oplus/camera/ag;->b:F

    sub-float v2, v0, v1

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v3, v1

    div-float/2addr v2, v3

    const v1, 0x3ef58107    # 0.47950003f

    mul-float/2addr v2, v1

    const v1, 0x3c79096c    # 0.0152f

    add-float/2addr v2, v1

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr p1, v1

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 674
    iget p1, p0, Lcom/oplus/camera/ag;->h:F

    iget v1, p0, Lcom/oplus/camera/ag;->i:F

    invoke-static {v0, p1, v1}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 676
    iget v0, p0, Lcom/oplus/camera/ag;->h:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    .line 677
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    iget v1, p0, Lcom/oplus/camera/ag;->h:F

    .line 678
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/oplus/camera/ag;->G()V

    .line 682
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ag;->i:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    .line 683
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    iget v1, p0, Lcom/oplus/camera/ag;->i:F

    .line 684
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/oplus/camera/ag;->F()V

    :cond_1
    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ag;)F
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/ag;->f:F

    return p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 3

    const-string p1, "ZoomManager"

    const-string v0, "initFocusChooseView"

    .line 574
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    const v2, 0x7f090435

    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 580
    iget-object v1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d9b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 581
    new-instance v1, Lcom/oplus/camera/ui/x;

    iget-object v2, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oplus/camera/ui/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    .line 582
    iget-object v1, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    const v2, 0x7f090436

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/x;->setId(I)V

    .line 583
    iget-object v1, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    iget-object v2, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/ai;->getZoomValueUnit()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/x;->setZoomUnit(Z)V

    .line 584
    iget-object v1, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/x;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    new-instance v1, Lcom/oplus/camera/ag$16;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$16;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setListener(Lcom/oplus/camera/ui/x$a;)V

    const-string p0, "initFocusChooseView X"

    .line 666
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ag;F)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->e(F)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ag;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->m(Z)V

    return-void
.end method

.method private d(F)F
    .locals 0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p1, p0

    const/high16 p0, -0x3f600000    # -5.0f

    add-float/2addr p1, p0

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ag;F)F
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/ag;->f:F

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ag;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->o(Z)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ag;F)F
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->c(F)F

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    return-object p0
.end method

.method private e(F)V
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_1

    .line 1299
    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    .line 1300
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getCurrentZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1301
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    .line 1302
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    sget v1, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ai;->k(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget-object v1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/preview/ai;->k(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/ag;->t:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1308
    invoke-direct {p0}, Lcom/oplus/camera/ag;->M()V

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ag;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->n(Z)V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ag;F)F
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/ag;->k:F

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method private f(F)V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_1

    .line 1314
    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    .line 1315
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getCurrentZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1316
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    .line 1317
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ai;->k(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->k(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ag;F)F
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->d(F)F

    move-result p0

    return p0
.end method

.method private g(F)V
    .locals 4

    .line 2461
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2465
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2467
    iget-object v0, p0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2468
    iget v2, p0, Lcom/oplus/camera/ag;->f:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/oplus/camera/ag;->f:F

    .line 2469
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_1

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_1

    .line 2471
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    const-string p1, "com.oplus.strong.vibrate.support"

    .line 2472
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2473
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->r()V

    goto :goto_0

    .line 2475
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->q()V

    :cond_5
    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 787
    iget p1, p0, Lcom/oplus/camera/ag;->q:I

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v1, 0x7f070d80

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 792
    iget-object v1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 794
    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_1

    .line 795
    iget-object p0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotableTextView;->setBottomMargin(I)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setBottomMargin(I)V

    .line 798
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v0, 0x7f070d91

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 799
    iget-object p0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->Y()Z

    move-result p0

    return p0
.end method

.method private h(I)V
    .locals 4

    .line 2904
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v0, :cond_8

    .line 2905
    new-instance v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;

    iget-object v1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;-><init>(Landroid/content/Context;)V

    .line 2906
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->l()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureType:I

    .line 2907
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    .line 2909
    iget-object v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    const-string v3, "timelapsePro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2910
    iput v2, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureType:I

    .line 2913
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ag;->q:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mOrientation:I

    .line 2914
    iput p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mZoomType:I

    .line 2915
    invoke-direct {p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2916
    sget v1, Lcom/oplus/camera/ag;->a:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->a()F

    move-result v1

    .line 2915
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mZoomValue:Ljava/lang/String;

    .line 2917
    iget-object v1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mbVideoRecording:Z

    const/16 v1, 0xa

    if-eq v1, p1, :cond_2

    const/16 v1, 0xb

    if-ne v1, p1, :cond_3

    .line 2921
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ag;->j:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mRateValue:Ljava/lang/String;

    .line 2924
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2925
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_1

    .line 2926
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 2927
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    .line 2929
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 2932
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ax()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraId:I

    .line 2933
    iget-object p1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "front"

    goto :goto_2

    :cond_6
    const-string p1, "rear"

    .line 2934
    :goto_2
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mRearOrFront:Ljava/lang/String;

    .line 2936
    iget-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "com.oplus.quick.video.support"

    .line 2937
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    const-string v1, "common"

    .line 2938
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 2939
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ay()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "quickVideo"

    .line 2940
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    .line 2941
    iput v2, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureType:I

    .line 2944
    :cond_7
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->report()V

    :cond_8
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->V()V

    return-void
.end method

.method private i(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 3311
    iget-object p1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3312
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x10e

    .line 3314
    iget v1, p0, Lcom/oplus/camera/ag;->s:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 3315
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 3317
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v0, 0x7f070930

    .line 3318
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 3317
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 3320
    iget v1, p0, Lcom/oplus/camera/ag;->r:I

    if-ne p1, v1, :cond_2

    .line 3321
    iget-object p1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3322
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3324
    iget-object p0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v0, 0x7f070672

    .line 3325
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 3324
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ag;)Landroid/app/Activity;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    return-object p0
.end method

.method private j(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7

    const/16 v0, 0x9

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    const/16 p1, 0x10e

    .line 3335
    iget v2, p0, Lcom/oplus/camera/ag;->s:I

    const v3, 0x7f070783

    const v4, 0x7f070c5a

    const/16 v5, 0xa

    const v6, 0x7f07067b

    if-ne p1, v2, :cond_0

    .line 3336
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 3337
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 3339
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3340
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3341
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 3342
    iget-object p0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    neg-int p1, p1

    .line 3343
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3344
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 3346
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 3347
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3349
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3350
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3351
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 3352
    iget-object p0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    neg-int p1, p1

    .line 3353
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3354
    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v0, v2

    goto/16 :goto_2

    :cond_1
    const/4 p1, 0x4

    .line 3356
    iget v2, p0, Lcom/oplus/camera/ag;->r:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    .line 3357
    iget-object p1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v2, 0x7f07067a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 3358
    iget-object v2, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v4, 0x7f07067c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v5

    add-int/2addr v2, v5

    .line 3359
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3361
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xc

    .line 3362
    invoke-virtual {v5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3364
    iget-object p1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "low270"

    if-eq v0, p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 3365
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rack270"

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 3368
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 3366
    :cond_3
    :goto_0
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3371
    :goto_1
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object v0, v5

    goto :goto_2

    .line 3373
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xe

    .line 3375
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, 0x2

    const v1, 0x7f0900e5

    .line 3376
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3377
    iget-object p0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const p1, 0x7f070684

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v3, v3, v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    return-object v0
.end method

.method static synthetic k(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oplus/camera/ag;->t:Z

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    return-object p0
.end method

.method public static synthetic lambda$VfCu1CbVzuM9fM0MPTBNn2CQhtE(Lcom/oplus/camera/ag;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$gNyyeuKfOzOzBYQBNCB0phiLmaQ(Lcom/oplus/camera/ag;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->p(Z)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->N()V

    return-void
.end method

.method private m(Z)V
    .locals 2

    .line 1118
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    if-nez v0, :cond_0

    return-void

    .line 1122
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ag;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1126
    iget-object p1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotableTextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1128
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1132
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1133
    iget-object v0, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xb7

    .line 1134
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1135
    new-instance v0, Lcom/oplus/camera/ag$21;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ag$21;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1157
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1159
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic n(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->E()V

    return-void
.end method

.method private n(Z)V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1169
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1171
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1175
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1176
    iget-object v0, p0, Lcom/oplus/camera/ag;->an:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xb7

    .line 1177
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1178
    new-instance v0, Lcom/oplus/camera/ag$22;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ag$22;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1200
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 1202
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic o(Lcom/oplus/camera/ag;)F
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/ag;->j:F

    return p0
.end method

.method private o(Z)V
    .locals 4

    .line 1235
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1236
    iget-object v0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 1237
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.disable.shutter.button.up.vibrate"

    .line 1238
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.disable.shutter.button.down.vibrate"

    .line 1239
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->p()V

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->i()V

    .line 1244
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ag$a;->a(Z)V

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(Z)V

    .line 1249
    iget-object p1, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 1250
    iput-boolean v1, p0, Lcom/oplus/camera/ag;->x:Z

    .line 1251
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    iget-object p0, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private synthetic p(Z)V
    .locals 2

    .line 2738
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    const-string v1, "pref_front_zoom_key"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ag$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 2743
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/preview/ai;->d(IZ)V

    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->H()Z

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    return-object p0
.end method

.method static synthetic r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    return-object p0
.end method

.method static synthetic s(Lcom/oplus/camera/ag;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->W()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/oplus/camera/ag;)F
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/ag;->k:F

    return p0
.end method

.method static synthetic u(Lcom/oplus/camera/ag;)F
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/ag;->h:F

    return p0
.end method

.method static synthetic v(Lcom/oplus/camera/ag;)F
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/ag;->i:F

    return p0
.end method

.method static synthetic w(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->J()Z

    move-result p0

    return p0
.end method

.method static synthetic x(Lcom/oplus/camera/ag;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oplus/camera/ag;->x:Z

    return p0
.end method

.method static synthetic y(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ag;->L()V

    return-void
.end method

.method static synthetic z(Lcom/oplus/camera/ag;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ag;->X:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 3047
    iget-object p0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    if-eqz p0, :cond_0

    .line 3048
    invoke-virtual {p0}, Lcom/oplus/camera/ab;->e()V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 2

    .line 3053
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_0

    .line 3054
    invoke-virtual {v0}, Lcom/oplus/camera/af;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 3055
    invoke-virtual {v0}, Lcom/oplus/camera/af;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_ultra_wide_high_picture_size_key"

    const-string v1, "off"

    .line 3056
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C()V
    .locals 12

    .line 3167
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v0}, Lcom/oplus/camera/af;->F()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3169
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oplus/camera/af;->I()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3170
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oplus/camera/af;->J()Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    .line 3171
    :goto_2
    iget-object v5, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    const-string v6, "pref_front_zoom_key"

    invoke-interface {v5, v6}, Lcom/oplus/camera/ag$a;->a(Ljava/lang/String;)Z

    move-result v9

    .line 3172
    iget-object v5, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v5}, Lcom/oplus/camera/ag$a;->B()Z

    move-result v10

    .line 3173
    iget-object v5, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v3

    .line 3174
    :goto_3
    iget-object v6, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v6}, Lcom/oplus/camera/ag$a;->n()Ljava/lang/String;

    move-result-object v6

    .line 3175
    iget-object v7, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/oplus/camera/af;->m()Z

    move-result v7

    goto :goto_4

    :cond_4
    move v7, v3

    .line 3176
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v8

    .line 3178
    iget-boolean v11, p0, Lcom/oplus/camera/ag;->af:Z

    if-ne v2, v11, :cond_6

    iget-boolean v11, p0, Lcom/oplus/camera/ag;->ag:Z

    if-ne v4, v11, :cond_6

    iget v11, p0, Lcom/oplus/camera/ag;->ad:I

    if-ne v5, v11, :cond_6

    iget-object v11, p0, Lcom/oplus/camera/ag;->ae:Ljava/lang/String;

    .line 3181
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/oplus/camera/ag;->ah:Z

    if-ne v7, v11, :cond_6

    iget-boolean v11, p0, Lcom/oplus/camera/ag;->ak:Z

    if-eq v8, v11, :cond_5

    goto :goto_5

    :cond_5
    move v11, v3

    goto :goto_6

    :cond_6
    :goto_5
    move v11, v1

    .line 3185
    :goto_6
    iput v5, p0, Lcom/oplus/camera/ag;->ad:I

    .line 3186
    iput-object v6, p0, Lcom/oplus/camera/ag;->ae:Ljava/lang/String;

    .line 3187
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->af:Z

    .line 3188
    iput-boolean v4, p0, Lcom/oplus/camera/ag;->ag:Z

    .line 3189
    iput-boolean v7, p0, Lcom/oplus/camera/ag;->ah:Z

    .line 3190
    iput-boolean v8, p0, Lcom/oplus/camera/ag;->ak:Z

    .line 3192
    iget-object v2, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    if-eqz v2, :cond_8

    .line 3193
    invoke-direct {p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/oplus/camera/ag;->a:F

    goto :goto_7

    :cond_7
    iget v1, p0, Lcom/oplus/camera/ag;->f:F

    :goto_7
    move v3, v1

    iget v4, p0, Lcom/oplus/camera/ag;->h:F

    iget v5, p0, Lcom/oplus/camera/ag;->i:F

    iget-object v6, p0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    move v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/oplus/camera/ui/preview/ai;->a(FFFLjava/util/ArrayList;Ljava/util/ArrayList;IZZZ)V

    .line 3197
    :cond_8
    iget-object v1, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v1, :cond_a

    .line 3198
    invoke-direct {p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/oplus/camera/ag;->a:F

    goto :goto_8

    :cond_9
    iget v2, p0, Lcom/oplus/camera/ag;->f:F

    :goto_8
    iget-object v3, p0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    iget v4, p0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oplus/camera/ui/x;->a(FLjava/util/List;II)V

    .line 3202
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZoomViewWithScreenMode, mClickPoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()F
    .locals 0

    .line 746
    iget p0, p0, Lcom/oplus/camera/ag;->f:F

    return p0
.end method

.method public a(FF)F
    .locals 2

    .line 1892
    iget v0, p0, Lcom/oplus/camera/ag;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1896
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ag;->l:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 1897
    iget p2, p0, Lcom/oplus/camera/ag;->h:F

    .line 1899
    iget-boolean v0, p0, Lcom/oplus/camera/ag;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_1

    .line 1901
    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 1902
    invoke-virtual {v0}, Lcom/oplus/camera/af;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1903
    sget p2, Lcom/oplus/camera/ag;->a:F

    .line 1906
    :cond_1
    iget p0, p0, Lcom/oplus/camera/ag;->i:F

    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p0

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 849
    iput p1, p0, Lcom/oplus/camera/ag;->j:F

    return-void
.end method

.method public a(FFFLandroid/graphics/Rect;Lcom/oplus/camera/af;Z)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1990
    iput-boolean v1, v0, Lcom/oplus/camera/ag;->y:Z

    move-object/from16 v2, p4

    .line 1991
    iput-object v2, v0, Lcom/oplus/camera/ag;->Q:Landroid/graphics/Rect;

    move-object/from16 v2, p5

    .line 1992
    iput-object v2, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 1993
    iget v2, v0, Lcom/oplus/camera/ag;->f:F

    iput v2, v0, Lcom/oplus/camera/ag;->g:F

    move/from16 v2, p3

    .line 1994
    iput v2, v0, Lcom/oplus/camera/ag;->f:F

    move/from16 v2, p1

    .line 1995
    iput v2, v0, Lcom/oplus/camera/ag;->h:F

    move/from16 v2, p2

    .line 1996
    iput v2, v0, Lcom/oplus/camera/ag;->i:F

    .line 1998
    iget-object v2, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oplus/camera/af;->o()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2000
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    .line 2001
    iget-object v4, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 2003
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 2004
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2006
    :cond_1
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v4, :cond_5

    .line 2007
    invoke-virtual {v4}, Lcom/oplus/camera/af;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v4}, Lcom/oplus/camera/af;->n()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2008
    invoke-virtual {v4}, Lcom/oplus/camera/af;->w()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2009
    invoke-virtual {v4}, Lcom/oplus/camera/af;->u()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v4}, Lcom/oplus/camera/af;->g()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2010
    invoke-virtual {v4}, Lcom/oplus/camera/af;->M()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2011
    invoke-virtual {v4}, Lcom/oplus/camera/af;->G()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2012
    :cond_4
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    sget v5, Lcom/oplus/camera/ag;->a:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    iget-object v4, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2016
    :cond_5
    iget v4, v0, Lcom/oplus/camera/ag;->h:F

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_6

    .line 2017
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    new-instance v7, Ljava/math/BigDecimal;

    iget v8, v0, Lcom/oplus/camera/ag;->h:F

    float-to-double v8, v8

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v7, v1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    iget-object v4, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    new-instance v7, Ljava/math/BigDecimal;

    iget v8, v0, Lcom/oplus/camera/ag;->h:F

    float-to-double v8, v8

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v7, v1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz p6, :cond_7

    .line 2019
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v4, :cond_7

    .line 2021
    invoke-virtual {v4}, Lcom/oplus/camera/af;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2022
    invoke-virtual {v4}, Lcom/oplus/camera/af;->p()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2023
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    sget v7, Lcom/oplus/camera/ag;->a:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    :cond_7
    :goto_1
    iget v4, v0, Lcom/oplus/camera/ag;->h:F

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gtz v4, :cond_8

    .line 2027
    iget-object v4, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    :cond_8
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v4, :cond_a

    .line 2033
    invoke-virtual {v4}, Lcom/oplus/camera/af;->y()Z

    move-result v4

    if-eqz v4, :cond_9

    const/high16 v5, 0x40400000    # 3.0f

    goto :goto_2

    .line 2035
    :cond_9
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v4}, Lcom/oplus/camera/af;->N()F

    move-result v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_a

    .line 2036
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v4}, Lcom/oplus/camera/af;->N()F

    move-result v5

    :cond_a
    :goto_2
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v7, 0x40a00000    # 5.0f

    if-nez v2, :cond_c

    .line 2041
    iget v8, v0, Lcom/oplus/camera/ag;->i:F

    invoke-static {v8, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_c

    .line 2042
    iget-object v8, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/oplus/camera/af;->z()Z

    move-result v8

    if-eqz v8, :cond_b

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_b

    cmpl-float v8, v5, v4

    if-eqz v8, :cond_b

    .line 2044
    iget-object v8, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    :cond_b
    iget v8, v0, Lcom/oplus/camera/ag;->i:F

    invoke-static {v8, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_c

    .line 2049
    iget-object v8, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    iget v8, v0, Lcom/oplus/camera/ag;->i:F

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_c

    .line 2052
    iget-object v8, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_c
    iget v8, v0, Lcom/oplus/camera/ag;->h:F

    invoke-static {v8, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gtz v8, :cond_d

    .line 2059
    iget-object v8, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    :cond_d
    iget-object v6, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/oplus/camera/af;->z()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2063
    iget-object v6, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_e
    iget v5, v0, Lcom/oplus/camera/ag;->i:F

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-ltz v5, :cond_f

    .line 2067
    iget-object v5, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2069
    iget v5, v0, Lcom/oplus/camera/ag;->i:F

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-lez v5, :cond_f

    .line 2070
    iget-object v5, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2075
    :cond_f
    :goto_3
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v4, :cond_11

    .line 2076
    iget-object v5, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v4}, Lcom/oplus/camera/af;->q()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/oplus/camera/ui/preview/ai;->setCustomUltraWideIcon(I)V

    .line 2077
    iget-object v4, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    iget-object v5, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v5}, Lcom/oplus/camera/af;->r()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/preview/ai;->setCustomWideIcon(I)V

    .line 2078
    iget-object v4, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    iget-object v5, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v5}, Lcom/oplus/camera/af;->s()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/preview/ai;->setCustomTeleIcon(I)V

    .line 2079
    iget-object v4, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    iget-object v5, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v5}, Lcom/oplus/camera/af;->t()Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/oplus/camera/ui/preview/ai$a;->ICON_ONLY:Lcom/oplus/camera/ui/preview/ai$a;

    goto :goto_4

    :cond_10
    sget-object v5, Lcom/oplus/camera/ui/preview/ai$a;->NORMAL:Lcom/oplus/camera/ui/preview/ai$a;

    :goto_4
    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/preview/ai;->setDisplayMode(Lcom/oplus/camera/ui/preview/ai$a;)V

    .line 2082
    :cond_11
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/oplus/camera/af;->E()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2083
    iget-object v4, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v4}, Lcom/oplus/camera/af;->F()I

    move-result v4

    goto :goto_5

    :cond_12
    move v4, v1

    .line 2084
    :goto_5
    iget-object v5, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/oplus/camera/af;->I()Z

    move-result v5

    goto :goto_6

    :cond_13
    move v5, v3

    .line 2085
    :goto_6
    iget-object v6, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lcom/oplus/camera/af;->J()Z

    move-result v6

    goto :goto_7

    :cond_14
    move v6, v3

    .line 2086
    :goto_7
    iget-object v7, v0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    const-string v8, "pref_front_zoom_key"

    invoke-interface {v7, v8}, Lcom/oplus/camera/ag$a;->a(Ljava/lang/String;)Z

    move-result v12

    .line 2087
    iget-object v7, v0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v7}, Lcom/oplus/camera/ag$a;->B()Z

    move-result v13

    .line 2088
    iget-object v7, v0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    if-eqz v7, :cond_15

    invoke-interface {v7}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v7

    goto :goto_8

    :cond_15
    move v7, v3

    .line 2089
    :goto_8
    iget-object v8, v0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v8}, Lcom/oplus/camera/ag$a;->n()Ljava/lang/String;

    move-result-object v8

    .line 2090
    iget-object v9, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lcom/oplus/camera/af;->m()Z

    move-result v9

    goto :goto_9

    :cond_16
    move v9, v3

    .line 2091
    :goto_9
    iget-object v10, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Lcom/oplus/camera/af;->Q()Z

    move-result v10

    goto :goto_a

    :cond_17
    move v10, v3

    .line 2092
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v11

    .line 2093
    iget-object v14, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v14, :cond_18

    invoke-virtual {v14}, Lcom/oplus/camera/af;->p()Z

    move-result v14

    goto :goto_b

    :cond_18
    move v14, v3

    .line 2094
    :goto_b
    iget-object v15, v0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v15, :cond_19

    invoke-virtual {v15}, Lcom/oplus/camera/af;->g()Z

    move-result v15

    goto :goto_c

    :cond_19
    move v15, v3

    .line 2096
    :goto_c
    iget-boolean v1, v0, Lcom/oplus/camera/ag;->af:Z

    if-ne v5, v1, :cond_1c

    iget-boolean v1, v0, Lcom/oplus/camera/ag;->ag:Z

    if-ne v6, v1, :cond_1c

    iget v1, v0, Lcom/oplus/camera/ag;->ad:I

    if-ne v7, v1, :cond_1c

    iget-object v1, v0, Lcom/oplus/camera/ag;->ae:Ljava/lang/String;

    .line 2099
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lcom/oplus/camera/ag;->ah:Z

    if-ne v9, v1, :cond_1c

    iget-boolean v1, v0, Lcom/oplus/camera/ag;->v:Z

    if-ne v15, v1, :cond_1c

    iget-boolean v1, v0, Lcom/oplus/camera/ag;->ai:Z

    if-ne v10, v1, :cond_1c

    iget-boolean v1, v0, Lcom/oplus/camera/ag;->ak:Z

    if-eq v11, v1, :cond_1a

    const-string v1, "slowVideo"

    .line 2103
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1a
    iget-boolean v1, v0, Lcom/oplus/camera/ag;->aj:Z

    if-eq v14, v1, :cond_1b

    goto :goto_d

    :cond_1b
    move/from16 v16, v3

    goto :goto_e

    :cond_1c
    :goto_d
    const/16 v16, 0x1

    .line 2106
    :goto_e
    iput v7, v0, Lcom/oplus/camera/ag;->ad:I

    .line 2107
    iput-object v8, v0, Lcom/oplus/camera/ag;->ae:Ljava/lang/String;

    .line 2108
    iput-boolean v5, v0, Lcom/oplus/camera/ag;->af:Z

    .line 2109
    iput-boolean v6, v0, Lcom/oplus/camera/ag;->ag:Z

    .line 2110
    iput-boolean v9, v0, Lcom/oplus/camera/ag;->ah:Z

    .line 2111
    iput-boolean v15, v0, Lcom/oplus/camera/ag;->v:Z

    .line 2112
    iput-boolean v10, v0, Lcom/oplus/camera/ag;->ai:Z

    .line 2113
    iput-boolean v11, v0, Lcom/oplus/camera/ag;->ak:Z

    .line 2114
    iput-boolean v14, v0, Lcom/oplus/camera/ag;->aj:Z

    .line 2116
    iget-object v5, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget v1, Lcom/oplus/camera/ag;->a:F

    goto :goto_f

    :cond_1d
    iget v1, v0, Lcom/oplus/camera/ag;->f:F

    :goto_f
    move v6, v1

    iget v7, v0, Lcom/oplus/camera/ag;->h:F

    iget v8, v0, Lcom/oplus/camera/ag;->i:F

    iget-object v9, v0, Lcom/oplus/camera/ag;->e:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    move v11, v4

    move/from16 v14, v16

    invoke-virtual/range {v5 .. v14}, Lcom/oplus/camera/ui/preview/ai;->a(FFFLjava/util/ArrayList;Ljava/util/ArrayList;IZZZ)V

    .line 2120
    iget-object v1, v0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/x;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez v2, :cond_20

    .line 2121
    :cond_1e
    iget-object v1, v0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ag;->U()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget v2, Lcom/oplus/camera/ag;->a:F

    goto :goto_10

    :cond_1f
    iget v2, v0, Lcom/oplus/camera/ag;->f:F

    :goto_10
    iget-object v3, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    iget v5, v0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/oplus/camera/ui/x;->a(FLjava/util/List;II)V

    .line 2125
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize, mMinZoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oplus/camera/ag;->h:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxZoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oplus/camera/ag;->i:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentZoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oplus/camera/ag;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mClickPoints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oplus/camera/ag;->d:Ljava/util/ArrayList;

    .line 2126
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    .line 2125
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(FZ)V
    .locals 1

    .line 766
    iget-boolean v0, p0, Lcom/oplus/camera/ag;->y:Z

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 772
    invoke-direct {p0}, Lcom/oplus/camera/ag;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 773
    iget-object p2, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/ai;->j(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    .line 776
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz p2, :cond_2

    .line 777
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->j(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Lcom/oplus/camera/ui/x;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/x;->b(IZ)V

    .line 569
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->setZoomClickVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenMode, layoutMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    iget-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3219
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3220
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3223
    iput-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    .line 3224
    iput-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    .line 3225
    iput p1, p0, Lcom/oplus/camera/ag;->r:I

    .line 3226
    iput p2, p0, Lcom/oplus/camera/ag;->s:I

    .line 3228
    iget-object p0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    if-eqz p0, :cond_2

    .line 3229
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setScreenMode(I)V

    :cond_2
    return-void
.end method

.method public a(IZ)V
    .locals 4

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation, orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/preview/ai;->c(IZ)V

    .line 808
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->g(I)V

    .line 810
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/x;->a(IZ)V

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 821
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    if-eqz v0, :cond_3

    .line 825
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v1, v0, :cond_3

    if-eq v2, v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/oplus/camera/ag;->F:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a(IZ)V

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    if-eqz v0, :cond_4

    .line 832
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v1, v0, :cond_4

    if-eq v2, v0, :cond_4

    .line 835
    iget-object v0, p0, Lcom/oplus/camera/ag;->G:Lcom/oplus/camera/ui/widget/InertialZoomButton;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a(IZ)V

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    if-eqz v0, :cond_5

    .line 839
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v1, v0, :cond_5

    if-eq v2, v0, :cond_5

    .line 842
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(IZ)V

    .line 845
    :cond_5
    iput p1, p0, Lcom/oplus/camera/ag;->q:I

    return-void
.end method

.method public a(Landroid/animation/AnimatorListenerAdapter;ZZ)V
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/ai;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1273
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v1, 0x7f070d7f

    .line 1274
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1275
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    .line 1276
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1277
    iget-object v0, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v1, 0x7f070d80

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1279
    new-instance v0, Lcom/oplus/camera/ui/RotableTextView;

    iget-object v1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    .line 1280
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const v1, 0x7f090438

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setId(I)V

    .line 1281
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTextColor(I)V

    .line 1282
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->y()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1283
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f0706a5

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    .line 1284
    iget-object v1, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget-object v2, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v3, 0x7f060464

    .line 1285
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    .line 1284
    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/oplus/camera/ui/RotableTextView;->setShadowLayer(FFFI)V

    .line 1287
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget-object v1, p0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v2, 0x7f070d7e

    .line 1288
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTextSize(IF)V

    .line 1289
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    .line 1291
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    iget v1, p0, Lcom/oplus/camera/ag;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 1292
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setGravity(I)V

    .line 1294
    iget-object v0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v0, p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ag$a;)V
    .locals 3

    .line 737
    iput-object p1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 738
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    new-instance v0, Lcom/oplus/camera/ag$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ag$c;-><init>(Lcom/oplus/camera/ag;Lcom/oplus/camera/ag$1;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->setZoomListener(Lcom/oplus/camera/ui/preview/ag;)V

    .line 740
    iget-object p1, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    if-nez p1, :cond_0

    .line 741
    new-instance p1, Lcom/oplus/camera/ab;

    iget-object v0, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/ag$b;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/ag$b;-><init>(Lcom/oplus/camera/ag;Lcom/oplus/camera/ag$1;)V

    invoke-direct {p1, v0, v2}, Lcom/oplus/camera/ab;-><init>(Landroid/content/Context;Lcom/oplus/camera/ab$a;)V

    iput-object p1, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 756
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->setEnabled(Z)V

    .line 757
    iget-object p0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/x;->setEnabled(Z)V

    goto :goto_0

    .line 760
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->setEnabled(Z)V

    .line 761
    iget-object p0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/x;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 853
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string p1, "performShow, isSupportZoomMenu is false, so return"

    .line 854
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->u()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/camera/ui/preview/ai;->a(ZZZ)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2137
    iget-object v0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2138
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->a()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/ag;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    invoke-virtual {v0}, Lcom/oplus/camera/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v1, v0, :cond_1

    const/4 v0, 0x6

    .line 2148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x106

    .line 2149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 2150
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ab;->a(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2139
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 2140
    iget-object v0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ab;->a(Landroid/view/MotionEvent;)Z

    .line 2143
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/ag;->aa()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    invoke-virtual {p0}, Lcom/oplus/camera/ab;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public a(ZFF)Z
    .locals 5

    .line 2380
    invoke-direct {p0}, Lcom/oplus/camera/ag;->Y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2384
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ag;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2388
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_3

    .line 2389
    invoke-virtual {v0}, Lcom/oplus/camera/af;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 2390
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return v1

    .line 2394
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v0, :cond_4

    .line 2395
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setFromClickView(Z)V

    .line 2398
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    neg-float p2, p2

    :goto_0
    add-float/2addr v0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    .line 2401
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const p2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr p1, p2

    .line 2404
    iget p2, p0, Lcom/oplus/camera/ag;->i:F

    invoke-static {p1, p3, p2}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 2406
    iget p2, p0, Lcom/oplus/camera/ag;->f:F

    cmpl-float p2, p2, p1

    if-nez p2, :cond_6

    return v1

    :cond_6
    const/4 p2, 0x3

    .line 2410
    invoke-direct {p0, p2}, Lcom/oplus/camera/ag;->h(I)V

    .line 2412
    iget-object p2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const-string p3, "on"

    const-string v2, "off"

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/oplus/camera/af;->h()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2413
    iget-object p2, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p2}, Lcom/oplus/camera/ag$a;->t()Z

    move-result p2

    const-string v3, "pref_none_sat_tele_angle_key"

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p2, :cond_7

    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gez p2, :cond_7

    .line 2414
    iget-object p2, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 2415
    :cond_7
    iget-object p2, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p2}, Lcom/oplus/camera/ag$a;->t()Z

    move-result p2

    if-nez p2, :cond_8

    .line 2416
    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-ltz p2, :cond_8

    iget-object p2, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 2417
    invoke-interface {p2}, Lcom/oplus/camera/ag$a;->v()Z

    move-result p2

    if-nez p2, :cond_8

    .line 2418
    iget-object p2, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2422
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/oplus/camera/af;->g()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2423
    iget-object p2, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p2}, Lcom/oplus/camera/ag$a;->s()Z

    move-result p2

    const-string v3, "pref_none_sat_ultra_wide_angle_key"

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    sget p2, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-lez p2, :cond_a

    .line 2424
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2425
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2426
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2428
    invoke-virtual {p0, v4, v0}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2430
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2431
    invoke-direct {p0, v4}, Lcom/oplus/camera/ag;->e(F)V

    :cond_9
    return v1

    .line 2435
    :cond_a
    iget-object p2, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p2}, Lcom/oplus/camera/ag$a;->s()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gez p2, :cond_c

    .line 2436
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2437
    invoke-interface {p1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2438
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2440
    sget p1, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2442
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2443
    sget p1, Lcom/oplus/camera/ag;->a:F

    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->e(F)V

    :cond_b
    return v1

    .line 2450
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2451
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/ag;->b(FF)V

    .line 2453
    iget-object p2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz p2, :cond_d

    iget-boolean p2, p0, Lcom/oplus/camera/ag;->t:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 2454
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->e(F)V

    :cond_d
    return v0
.end method

.method public b()F
    .locals 0

    .line 750
    iget p0, p0, Lcom/oplus/camera/ag;->g:F

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 3043
    iput p1, p0, Lcom/oplus/camera/ag;->f:F

    return-void
.end method

.method public b(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 868
    iget-object v2, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/ui/x;->setVisibility(I)V

    .line 869
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/ai;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    goto :goto_0

    .line 871
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, v1, v0, v1}, Lcom/oplus/camera/ui/preview/ai;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method public b(IZ)V
    .locals 10

    .line 2539
    iget-object v0, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2540
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2542
    iget-object v0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2543
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ag$a;->c(F)V

    goto :goto_0

    :cond_0
    return-void

    .line 2549
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2550
    iget-object v0, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2553
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2554
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2555
    iget-object v3, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 2556
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070dc4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    const/4 v5, 0x1

    if-le p1, v2, :cond_4

    .line 2557
    iget-object v6, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v6, :cond_4

    .line 2558
    invoke-interface {v6}, Lcom/oplus/camera/ag$a;->m()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v6}, Lcom/oplus/camera/ag$a;->C()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    if-eqz v6, :cond_5

    const/16 v7, 0x96

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    const/16 v8, 0x190

    sub-int v9, p1, v2

    .line 2562
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v3, :cond_b

    if-eqz p2, :cond_b

    .line 2563
    iget-object p2, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    if-nez p2, :cond_6

    .line 2564
    new-array p2, v3, [I

    aput v2, p2, v4

    aput p1, p2, v5

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    .line 2565
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    int-to-long v4, v7

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2566
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    int-to-long v4, v8

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2567
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0100d1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 2569
    iget-object p2, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2571
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ag$14;

    invoke-direct {p2, p0, v0}, Lcom/oplus/camera/ag$14;-><init>(Lcom/oplus/camera/ag;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_4

    .line 2585
    :cond_6
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_7

    .line 2586
    iget-object p2, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    new-array v0, v3, [I

    aput v2, v0, v4

    aput p1, v0, v5

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2587
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    int-to-long v4, v7

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2588
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    int-to-long v4, v8

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2592
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    .line 2593
    new-array p1, v3, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    .line 2594
    iget-object p1, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    int-to-long v2, v7

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2595
    iget-object p1, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    int-to-long v2, v8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2596
    iget-object p1, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01002d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 2598
    iget-object p2, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2599
    iget-object p1, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ag$15;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ag$15;-><init>(Lcom/oplus/camera/ag;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_8
    if-eqz v6, :cond_9

    .line 2613
    iget-object p1, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2614
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2615
    iget-object p2, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    iget-object p0, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2616
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    .line 2618
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2619
    iget-object p1, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2622
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz p0, :cond_c

    .line 2623
    invoke-interface {p0, v1}, Lcom/oplus/camera/ag$a;->c(F)V

    goto :goto_5

    .line 2627
    :cond_b
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2628
    iget-object p2, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/preview/ai;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2629
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->p()V

    .line 2631
    iget-object p2, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz p2, :cond_c

    .line 2632
    invoke-interface {p2, p1}, Lcom/oplus/camera/ag$a;->a(I)V

    .line 2633
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ag$a;->c(F)V

    :cond_c
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 1417
    :cond_0
    iget-object v2, v0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    const v3, 0x7f090168

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1421
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    .line 1422
    iget-object v3, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    const v4, 0x7f090437

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1423
    iget-object v3, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 1425
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v3

    const v5, 0x7f070dbc

    const v6, 0x7f070dc1

    const v7, 0x7f070d7b

    const/4 v8, 0x1

    const/4 v10, 0x2

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/oplus/camera/ag;->r:I

    if-ne v8, v3, :cond_3

    .line 1426
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1427
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1428
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v6, 0x7f070da3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1429
    iget-object v7, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v11, 0x7f070da6

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1430
    iget-object v12, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1433
    iget v5, v0, Lcom/oplus/camera/ag;->s:I

    const/16 v12, 0x5a

    const/high16 v15, 0x42b40000    # 90.0f

    const v8, 0x7f070d87

    const/16 v9, 0xc

    const/16 v11, 0x9

    if-ne v5, v12, :cond_1

    .line 1434
    iget-object v5, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1436
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v8, v13, 0x2

    invoke-direct {v6, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1437
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1438
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v8, v13

    .line 1439
    div-int/2addr v8, v10

    div-int/lit8 v9, v13, 0x2

    add-int/2addr v5, v9

    invoke-virtual {v6, v8, v4, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1440
    iget-object v5, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/16 v12, 0x10e

    if-ne v5, v12, :cond_2

    .line 1442
    iget-object v5, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1444
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v8, v13, 0x2

    invoke-direct {v6, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1445
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1446
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v8, v13

    .line 1447
    div-int/2addr v8, v10

    div-int/lit8 v9, v13, 0x2

    add-int/2addr v5, v9

    invoke-virtual {v6, v4, v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1448
    iget-object v5, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto :goto_0

    .line 1450
    :cond_2
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v5, 0x7f070d86

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1451
    iget-object v5, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1452
    iget-object v6, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v7, 0x7f070da6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1454
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v8, v13, 0x2

    invoke-direct {v6, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1455
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1456
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v8, v13

    .line 1457
    div-int/2addr v8, v10

    div-int/lit8 v9, v13, 0x2

    add-int/2addr v3, v9

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v9

    add-int/2addr v3, v9

    invoke-virtual {v6, v8, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1458
    iget-object v3, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->setRotation(F)V

    move v3, v5

    .line 1461
    :goto_0
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v5, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1463
    iget-object v8, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    move-object v11, v8

    check-cast v11, Lcom/oplus/camera/ui/preview/af;

    mul-int/lit8 v12, v13, 0x2

    div-int/2addr v7, v10

    sub-int v7, v13, v7

    sub-int v15, v7, v3

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/oplus/camera/ui/preview/af;->a(IIIIFFF)V

    goto :goto_1

    .line 1466
    :cond_3
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 1467
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 1468
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v6, 0x7f070d82

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 1469
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v6, 0x7f070184

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1470
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7f0900e5

    .line 1472
    invoke-virtual {v6, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1473
    iget-object v7, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    iget-object v7, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v8, 0x7f070d9b

    .line 1474
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v5, v7

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1476
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    .line 1477
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/ai;->getLayoutHeight()I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v5, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1478
    iget-object v7, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    move-object/from16 v19, v7

    check-cast v19, Lcom/oplus/camera/ui/preview/af;

    iget-object v7, v0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {v7}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/camera/screen/b/a;->b()I

    move-result v20

    .line 1479
    invoke-static {}, Lcom/oplus/camera/util/Util;->P()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v24, v3, v7

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    .line 1478
    invoke-virtual/range {v19 .. v26}, Lcom/oplus/camera/ui/preview/af;->a(IIIIFFF)V

    .line 1482
    :goto_1
    iget-object v3, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1483
    iget-object v3, v0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/preview/ai;->setVisibility(I)V

    .line 1485
    new-instance v3, Landroid/view/View;

    iget-object v5, v0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090434

    .line 1486
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    const/4 v5, 0x1

    .line 1487
    invoke-virtual {v3, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1488
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    iget-object v4, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1491
    iget-object v3, v0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/camera/ag;->a(Landroid/view/ViewGroup;)V

    .line 1494
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/ag;->c(Landroid/view/ViewGroup;)V

    .line 1496
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1497
    iget-object v3, v0, Lcom/oplus/camera/ag;->M:Landroid/content/res/Resources;

    const v4, 0x7f070473

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1499
    new-instance v4, Lcom/oplus/camera/ag$5;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/oplus/camera/ag$5;-><init>(Lcom/oplus/camera/ag;Landroid/view/View;ILandroid/view/ViewGroup;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3031
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3035
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/camera/ag;->a(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public b(Z)Z
    .locals 2

    .line 904
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string p1, "performCollapse, isSupportZoomMenu is false, so return"

    .line 905
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 910
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ag;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 911
    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    .line 912
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_2

    .line 913
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/ag;->b(FF)V

    .line 916
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->b(Z)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->l()V

    .line 878
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {v0}, Lcom/oplus/camera/ui/x;->clearAnimation()V

    .line 885
    iget-object p0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/x;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->setLayoutDirection(I)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1523
    iget-object p0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-wide/16 v1, 0x12c

    .line 1525
    invoke-static {p0, v0, p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 1528
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3039
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->m()V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2696
    iput p1, p0, Lcom/oplus/camera/ag;->ac:I

    .line 2697
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->s()V

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1534
    iget-object p0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-wide/16 v1, 0x12c

    .line 1536
    invoke-static {p0, v0, p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 1539
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 894
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    if-eqz p0, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->q()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 3244
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->i(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3247
    iget-object v1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3250
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->j(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    .line 3251
    iget-object v0, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3252
    iget-object v0, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInertialZoomView, animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 1618
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 1619
    invoke-direct {p0}, Lcom/oplus/camera/ag;->I()V

    .line 1622
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ag;->r:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ag;->e(I)V

    .line 1624
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    if-eqz v0, :cond_4

    .line 1625
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a()V

    .line 1626
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1627
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    iget-object v1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/ai;->getSlideToDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    iget-object v1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/ai;->getCurrentDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    .line 1633
    :cond_4
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ag;->r:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v2, v0, :cond_6

    if-ne v1, v0, :cond_5

    goto :goto_1

    .line 1637
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/ag;->ad()V

    goto :goto_2

    .line 1635
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/ag;->ae()V

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1641
    iget-object p1, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_9

    .line 1642
    iget p1, p0, Lcom/oplus/camera/ag;->r:I

    if-eq v2, p1, :cond_8

    if-ne v1, p1, :cond_7

    goto :goto_3

    .line 1646
    :cond_7
    invoke-direct {p0}, Lcom/oplus/camera/ag;->Q()V

    goto :goto_4

    .line 1644
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/oplus/camera/ag;->R()V

    .line 1650
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1651
    iget-object p1, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1652
    iget-object p1, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    .line 1654
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1657
    :goto_5
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->w:Z

    return-void
.end method

.method public f()Landroid/view/View;
    .locals 0

    .line 1545
    iget-object p0, p0, Lcom/oplus/camera/ag;->C:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public f(I)V
    .locals 2

    .line 3256
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->i()V

    .line 3258
    iget-boolean v0, p0, Lcom/oplus/camera/ag;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3259
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ag;->e(Z)V

    .line 3260
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->i(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v1, p0, Lcom/oplus/camera/ag;->H:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3266
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->j(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    .line 3267
    iget-object p0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideInertialZoomView, anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/oplus/camera/ag;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_5

    .line 1672
    iget-object p1, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 1673
    iget v0, p0, Lcom/oplus/camera/ag;->r:I

    if-eq p1, v0, :cond_3

    const/4 p1, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1677
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ag;->S()V

    goto :goto_1

    .line 1675
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ag;->T()V

    .line 1681
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ag;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    .line 1683
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const/4 p1, 0x0

    .line 1686
    iput-boolean p1, p0, Lcom/oplus/camera/ag;->w:Z

    :cond_6
    :goto_3
    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "ZoomManager"

    const-string v1, "showZoomSeekBarAfterInertialZoom"

    .line 1553
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-direct {p0}, Lcom/oplus/camera/ag;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 1560
    invoke-direct {p0}, Lcom/oplus/camera/ag;->O()V

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1564
    new-instance v1, Lcom/oplus/camera/ag$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ag$6;-><init>(Lcom/oplus/camera/ag;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1578
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public g(Z)V
    .locals 6

    .line 2292
    invoke-direct {p0}, Lcom/oplus/camera/ag;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2296
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ag;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->E:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2300
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_3

    .line 2301
    invoke-virtual {v0}, Lcom/oplus/camera/af;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 2302
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 2306
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 2307
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setFromClickView(Z)V

    .line 2310
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ag;->f:F

    if-eqz p1, :cond_5

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_5
    const p1, -0x42333333    # -0.1f

    :goto_0
    add-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 2313
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 2314
    iget v1, p0, Lcom/oplus/camera/ag;->h:F

    const v2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr p1, v2

    .line 2317
    iget-boolean v2, p0, Lcom/oplus/camera/ag;->v:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v2, :cond_7

    .line 2319
    invoke-virtual {v2}, Lcom/oplus/camera/af;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2320
    invoke-virtual {v2}, Lcom/oplus/camera/af;->p()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    .line 2321
    invoke-virtual {v2}, Lcom/oplus/camera/af;->d()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2322
    :cond_6
    sget v1, Lcom/oplus/camera/ag;->a:F

    .line 2325
    :cond_7
    iget v2, p0, Lcom/oplus/camera/ag;->i:F

    invoke-static {p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 2327
    iget v1, p0, Lcom/oplus/camera/ag;->f:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x3

    .line 2331
    invoke-direct {p0, v1}, Lcom/oplus/camera/ag;->h(I)V

    .line 2333
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const-string v2, "on"

    const-string v3, "off"

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/oplus/camera/af;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2334
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v1

    const-string v4, "pref_none_sat_tele_angle_key"

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_9

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_9

    .line 2335
    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 2336
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2337
    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 2338
    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->v()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2339
    iget-object v1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2343
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/oplus/camera/af;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2344
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    sget v1, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_c

    .line 2345
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2346
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2347
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2349
    invoke-virtual {p0, v5, v0}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2351
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2352
    invoke-direct {p0, v5}, Lcom/oplus/camera/ag;->e(F)V

    :cond_b
    return-void

    .line 2356
    :cond_c
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_e

    .line 2357
    iget-object p1, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2358
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2359
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2361
    sget p1, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2363
    iget-object p1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2364
    sget p1, Lcom/oplus/camera/ag;->a:F

    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->e(F)V

    :cond_d
    return-void

    .line 2371
    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2372
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/ag;->b(FF)V

    .line 2374
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/oplus/camera/ag;->t:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2375
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag;->e(F)V

    :cond_f
    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "ZoomManager"

    const-string v1, "hideZoomSeekBarBeforeInertialZoom"

    .line 1582
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1585
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ag;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    return-void

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 1594
    invoke-direct {p0}, Lcom/oplus/camera/ag;->P()V

    .line 1597
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ag;->T:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 2691
    iput-boolean p1, p0, Lcom/oplus/camera/ag;->z:Z

    .line 2692
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->s()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1601
    iget-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/oplus/camera/ag;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1603
    iput-object v0, p0, Lcom/oplus/camera/ag;->D:Landroid/widget/LinearLayout;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 2737
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    new-instance v1, Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;-><init>(Lcom/oplus/camera/ag;Z)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ai;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 2748
    iput-boolean p1, p0, Lcom/oplus/camera/ag;->al:Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1910
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string v0, "isZoomMenuExpand, isSupportZoomMenu is false, so return"

    .line 1911
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1916
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p0

    return p0
.end method

.method public k(Z)V
    .locals 1

    .line 2899
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/x;->setZoomUnit(Z)V

    .line 2900
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->setZoomValueUnit(Z)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1920
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string v0, "isZoomMenuExpand, isSupportZoomMenu is false, so return"

    .line 1921
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1926
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->B()Z

    move-result p0

    return p0
.end method

.method public l()F
    .locals 1

    .line 1930
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string v0, "getZoomVelocityRate, isSupportZoomMenu is false, so return"

    .line 1931
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1936
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->getVelocityRate()F

    move-result p0

    return p0
.end method

.method public l(Z)V
    .locals 0

    .line 3007
    iput-boolean p1, p0, Lcom/oplus/camera/ag;->u:Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1940
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string v0, "isZoomMenuCollapsing, isSupportZoomMenu is false, so return"

    .line 1941
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1946
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->z()Z

    move-result p0

    return p0
.end method

.method public n()V
    .locals 4

    .line 1950
    iget-boolean v0, p0, Lcom/oplus/camera/ag;->y:Z

    if-nez v0, :cond_0

    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 1955
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    .line 1956
    iget-object v0, p0, Lcom/oplus/camera/ag;->J:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 1959
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->I:Lcom/oplus/camera/ui/x;

    if-eqz v0, :cond_2

    .line 1960
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setVisibility(I)V

    .line 1963
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag;->R:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1964
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1967
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1968
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1971
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ag;->Z:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1972
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->x:Z

    const/4 v3, 0x0

    .line 1973
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1976
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->m()V

    .line 1977
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->t:Z

    .line 1978
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->r()V

    .line 1979
    iput-boolean v2, p0, Lcom/oplus/camera/ag;->u:Z

    .line 1981
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1982
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ai;->setVisibility(I)V

    .line 1985
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/ag;->e()V

    return-void
.end method

.method public o()V
    .locals 3

    .line 2272
    iget-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ZoomManager"

    const-string v0, "handleMessage, cancel click"

    .line 2273
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    const-string v1, "on"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/af;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    iget-object v0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_ultra_wide_high_picture_size_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2280
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2281
    iget-object v0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    .line 2282
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2286
    :cond_2
    :goto_0
    sget v0, Lcom/oplus/camera/ag;->a:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2287
    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/ag;->b(FF)V

    const/16 v0, 0x8

    .line 2288
    invoke-direct {p0, v0}, Lcom/oplus/camera/ag;->h(I)V

    return-void
.end method

.method public p()V
    .locals 9

    .line 2639
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2641
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 2642
    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090434

    .line 2643
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2644
    iget-object v1, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/ai;->getUltraWideZoomDotViewLocation()[F

    move-result-object v1

    .line 2645
    iget-object v2, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d9d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 2646
    iget-object v3, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 2649
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    .line 2650
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 2651
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2652
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2654
    iget-object v6, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/preview/ai;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v8, v6, :cond_0

    .line 2655
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    aget v7, v1, v7

    sub-float/2addr v6, v7

    sub-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 2657
    :cond_0
    aget v6, v1, v7

    sub-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 2660
    :goto_0
    aget v1, v1, v8

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    .line 2661
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->getFocusCircleRadius()I

    move-result p0

    div-int/2addr p0, v5

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2662
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x4

    .line 2663
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    .line 2665
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public q()Z
    .locals 1

    .line 2672
    iget-boolean v0, p0, Lcom/oplus/camera/ag;->w:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->z()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()V
    .locals 2

    const-string v0, "ZoomManager"

    const-string v1, "onDestroy"

    .line 2676
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2678
    iput-object v0, p0, Lcom/oplus/camera/ag;->L:Landroid/app/Activity;

    .line 2679
    iput-object v0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    .line 2680
    iput-object v0, p0, Lcom/oplus/camera/ag;->O:Lcom/oplus/camera/capmode/a;

    .line 2681
    iput-object v0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 2682
    iput-object v0, p0, Lcom/oplus/camera/ag;->K:Lcom/oplus/camera/ab;

    const/4 v0, 0x0

    .line 2683
    iput-boolean v0, p0, Lcom/oplus/camera/ag;->y:Z

    .line 2685
    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2686
    iget-object p0, p0, Lcom/oplus/camera/ag;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 5

    .line 2701
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    if-nez v0, :cond_0

    return-void

    .line 2705
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/ag;->z:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2706
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/ai;->setLightBackground(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 2710
    iget v1, p0, Lcom/oplus/camera/ag;->ac:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 2713
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    if-eqz v1, :cond_4

    .line 2714
    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->n()Ljava/lang/String;

    move-result-object v1

    const-string v4, "professional"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    .line 2715
    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->C()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v0, v3

    .line 2719
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ag;->ab:Lcom/oplus/camera/screen/g;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    if-ne v2, v1, :cond_5

    .line 2720
    iget-object v0, p0, Lcom/oplus/camera/ag;->ab:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/oplus/camera/ag;->ac:I

    if-eqz v0, :cond_9

    if-ne v2, v0, :cond_7

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 2723
    iget-object v4, p0, Lcom/oplus/camera/ag;->ab:Lcom/oplus/camera/screen/g;

    invoke-virtual {v4}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 2724
    iget-object v0, p0, Lcom/oplus/camera/ag;->ab:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2725
    iget v0, p0, Lcom/oplus/camera/ag;->ac:I

    if-eq v2, v0, :cond_7

    goto :goto_1

    .line 2729
    :cond_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    move v2, v0

    .line 2733
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/ai;->setLightBackground(Z)V

    return-void
.end method

.method public t()Z
    .locals 0

    .line 2752
    iget-boolean p0, p0, Lcom/oplus/camera/ag;->al:Z

    return p0
.end method

.method public u()Z
    .locals 0

    .line 2891
    iget-object p0, p0, Lcom/oplus/camera/ag;->A:Lcom/oplus/camera/ag$a;

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->a()Z

    move-result p0

    return p0
.end method

.method public v()Z
    .locals 0

    .line 2957
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->C()Z

    move-result p0

    return p0
.end method

.method public w()Z
    .locals 2

    .line 3003
    iget-object p0, p0, Lcom/oplus/camera/ag;->N:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "off"

    const-string v1, "pref_subsetting_key"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 0

    .line 3011
    iget-boolean p0, p0, Lcom/oplus/camera/ag;->u:Z

    return p0
.end method

.method public y()V
    .locals 0

    .line 3015
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    if-eqz p0, :cond_0

    .line 3016
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->v()V

    :cond_0
    return-void
.end method

.method public z()[F
    .locals 1

    .line 3021
    iget-object v0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    if-eqz v0, :cond_1

    .line 3023
    invoke-virtual {v0}, Lcom/oplus/camera/af;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag;->P:Lcom/oplus/camera/af;

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3024
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag;->B:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->getUltraWideZoomDotViewLocation()[F

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

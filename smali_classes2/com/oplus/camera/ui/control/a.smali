.class public Lcom/oplus/camera/ui/control/a;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oplus/camera/d;
.implements Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;
.implements Lcom/oplus/camera/ui/menu/a/e$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/control/a$b;,
        Lcom/oplus/camera/ui/control/a$c;,
        Lcom/oplus/camera/ui/control/a$a;
    }
.end annotation


# instance fields
.field private A:Landroid/app/Activity;

.field private B:Lcom/oplus/camera/ComboPreferences;

.field private C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

.field private D:Lcom/oplus/camera/ui/CameraUIListener;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/view/View;

.field private G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Lcom/oplus/camera/ui/RotateImageView;

.field private K:Lcom/oplus/camera/ui/RotateImageView;

.field private L:Lcom/oplus/camera/ui/RotateImageView;

.field private M:Lcom/oplus/camera/ui/control/ShutterButton;

.field private N:Lcom/oplus/camera/ui/control/MainShutterButton;

.field private O:Lcom/oplus/camera/ui/control/ShutterButton;

.field private P:Lcom/oplus/camera/ui/control/ShutterButton;

.field private Q:Lcom/oplus/camera/ui/control/ShutterButton;

.field private R:Lcom/oplus/camera/ui/control/ShutterButton;

.field private S:Lcom/oplus/camera/ui/control/ShutterButton;

.field private T:Lcom/oplus/camera/ui/control/ThumbImageView;

.field private U:Lcom/oplus/camera/ui/control/e;

.field private V:Lcom/oplus/camera/ui/control/f;

.field private W:Landroid/os/ConditionVariable;

.field private X:Lcom/oplus/camera/ui/menu/shareedit/a;

.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/widget/TextView;

.field private aA:Lcom/oplus/camera/ui/widget/AnimationButton;

.field private aB:Landroid/animation/ValueAnimator;

.field private aC:Lcom/oplus/camera/ui/modepanel/h;

.field private aD:Landroid/view/View;

.field private aE:I

.field private aF:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private aG:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private aH:Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;

.field private aI:Landroid/view/animation/Animation$AnimationListener;

.field private aa:Lcom/oplus/camera/ui/control/c;

.field private ab:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private ac:Lcom/oplus/camera/ui/menu/a/b;

.field private ad:Lcom/oplus/camera/ui/menu/a/e;

.field private ae:Lcom/oplus/camera/ui/menu/a/c;

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ag:I

.field private ah:Landroid/content/ContentResolver;

.field private ai:Lcom/oplus/camera/ui/control/e;

.field private aj:Lcom/oplus/camera/ui/RotateImageView;

.field private ak:Lcom/oplus/camera/ui/widget/e;

.field private al:Lcom/oplus/camera/screen/g;

.field private am:Lcom/a/a/f;

.field private an:Lcom/a/a/f;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private at:Lcom/oplus/camera/ui/menu/a/d;

.field private au:Lcom/oplus/camera/ui/modepanel/g;

.field private av:Landroid/view/GestureDetector;

.field private aw:Lcom/oplus/camera/ui/modepanel/f;

.field private ax:Landroid/view/ViewGroup;

.field private ay:Landroid/widget/ImageView;

.field private az:Landroid/view/ViewGroup;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:J

.field private x:I

.field private y:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/oplus/camera/ui/control/e;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/screen/g;)V
    .locals 3

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->g:Z

    .line 145
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->h:Z

    .line 146
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    .line 148
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->k:Z

    .line 150
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    .line 151
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->n:Z

    .line 152
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->o:Z

    .line 153
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->p:Z

    const/4 v1, 0x1

    .line 154
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->q:Z

    .line 155
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->r:Z

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->s:Z

    .line 158
    iput v1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    .line 159
    iput v0, p0, Lcom/oplus/camera/ui/control/a;->u:I

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lcom/oplus/camera/ui/control/a;->v:I

    const-wide/16 v1, 0x0

    .line 162
    iput-wide v1, p0, Lcom/oplus/camera/ui/control/a;->w:J

    .line 163
    iput v0, p0, Lcom/oplus/camera/ui/control/a;->x:I

    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 165
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->z:Landroid/graphics/Bitmap;

    .line 166
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 167
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    .line 168
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    .line 169
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 170
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    .line 171
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->F:Landroid/view/View;

    .line 172
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 173
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->H:Landroid/widget/RelativeLayout;

    .line 174
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    .line 175
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    .line 176
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    .line 177
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    .line 178
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 179
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 180
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 181
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 182
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 183
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 184
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 185
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 186
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    .line 187
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    .line 188
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/control/a;->W:Landroid/os/ConditionVariable;

    .line 189
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    .line 190
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->Y:Landroid/widget/TextView;

    .line 191
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->Z:Landroid/widget/TextView;

    .line 192
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aa:Lcom/oplus/camera/ui/control/c;

    .line 193
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ab:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 194
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    .line 195
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    .line 196
    new-instance v2, Lcom/oplus/camera/ui/menu/a/c;

    invoke-direct {v2}, Lcom/oplus/camera/ui/menu/a/c;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    .line 197
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    .line 198
    iput v0, p0, Lcom/oplus/camera/ui/control/a;->ag:I

    .line 199
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ah:Landroid/content/ContentResolver;

    .line 200
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ai:Lcom/oplus/camera/ui/control/e;

    .line 201
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    .line 202
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ak:Lcom/oplus/camera/ui/widget/e;

    .line 203
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    .line 205
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->am:Lcom/a/a/f;

    .line 206
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->an:Lcom/a/a/f;

    .line 207
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ao:Z

    .line 208
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    .line 209
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    .line 210
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ar:Z

    .line 211
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 212
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->at:Lcom/oplus/camera/ui/menu/a/d;

    .line 213
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    .line 214
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->av:Landroid/view/GestureDetector;

    .line 215
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    .line 216
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    .line 217
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ay:Landroid/widget/ImageView;

    .line 218
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    .line 219
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    .line 220
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    .line 221
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aC:Lcom/oplus/camera/ui/modepanel/h;

    .line 222
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    .line 224
    iput v0, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    .line 226
    new-instance v0, Lcom/oplus/camera/ui/control/a$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/a$1;-><init>(Lcom/oplus/camera/ui/control/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aF:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    .line 385
    new-instance v0, Lcom/oplus/camera/ui/control/a$7;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/a$7;-><init>(Lcom/oplus/camera/ui/control/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aG:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    .line 433
    new-instance v0, Lcom/oplus/camera/ui/control/a$8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/a$8;-><init>(Lcom/oplus/camera/ui/control/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aH:Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;

    .line 2245
    new-instance v0, Lcom/oplus/camera/ui/control/a$14;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/a$14;-><init>(Lcom/oplus/camera/ui/control/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aI:Landroid/view/animation/Animation$AnimationListener;

    .line 495
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 496
    iput-object p2, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    .line 497
    iput-object p3, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 498
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->ah:Landroid/content/ContentResolver;

    .line 499
    iput-object p4, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/a;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->av:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    return-object p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3786
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    .line 3787
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 3788
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setDrawableColor(I)V

    .line 3789
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->invalidate()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 1340
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1344
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/e;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1348
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setClickable(Z)V

    .line 1349
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aC:Lcom/oplus/camera/ui/modepanel/h;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/h;->a()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .line 2960
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2961
    new-instance v1, Lcom/oplus/camera/ui/control/a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/control/a$3;-><init>(Lcom/oplus/camera/ui/control/a;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;I[Ljava/lang/Object;)V
    .locals 0

    .line 3703
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/control/a;->b(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic a(Landroid/widget/TextView;I[Ljava/lang/Object;)V
    .locals 0

    .line 3702
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/control/a;->b(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/a;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->s(I)V

    return-void
.end method

.method private synthetic a([Ljava/lang/Object;)V
    .locals 3

    .line 1519
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method private aC()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 918
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aM()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 919
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 924
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 925
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aM()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 926
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 931
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070788

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 932
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private aD()V
    .locals 5

    .line 1271
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->at:Lcom/oplus/camera/ui/menu/a/d;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/a/e;->getLastTextWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/d;->a(I)V

    .line 1273
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidateItemDecorations()V

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    return-void

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 1283
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    .line 1284
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1285
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0709ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1286
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0709eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1288
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    .line 1289
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1292
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c00f5

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    .line 1293
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1297
    new-instance v0, Lcom/oplus/camera/ui/modepanel/g;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/modepanel/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    .line 1298
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    iget v1, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/g;->c(I)V

    .line 1299
    new-instance v0, Lcom/oplus/camera/ui/menu/a/d;

    invoke-direct {v0}, Lcom/oplus/camera/ui/menu/a/d;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->at:Lcom/oplus/camera/ui/menu/a/d;

    .line 1300
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->at:Lcom/oplus/camera/ui/menu/a/d;

    iget v1, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/d;->b(I)V

    .line 1301
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 1303
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 1305
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->at:Lcom/oplus/camera/ui/menu/a/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 1306
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v1, Lcom/oplus/camera/ui/control/a$12;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/a$12;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 1330
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    .line 1331
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1332
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/AnimationButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    .line 1333
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aG()V

    .line 1334
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1335
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07077a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1334
    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/widget/AnimationButton;->setTextSize(IF)V

    .line 1336
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aH()V

    .line 1337
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1338
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    new-instance v1, Lcom/oplus/camera/ui/control/-$$Lambda$a$2xJhixnacuNHSqAd3HYpb2ZqXMs;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$2xJhixnacuNHSqAd3HYpb2ZqXMs;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setItemViewCacheSize(I)V

    .line 1354
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/control/-$$Lambda$a$3hSE48jLhDe3MYvSX1IVI369Zjc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$3hSE48jLhDe3MYvSX1IVI369Zjc;-><init>(Lcom/oplus/camera/ui/control/a;)V

    new-instance v3, Lcom/oplus/camera/ui/control/-$$Lambda$a$NFt6NxgdpSJcW3dvByroFrbF5zs;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$NFt6NxgdpSJcW3dvByroFrbF5zs;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    .line 1358
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1360
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$f;->a(J)V

    .line 1361
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 1362
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    return-void
.end method

.method private aE()V
    .locals 4

    .line 1502
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    .line 1503
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1504
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1505
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1507
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1510
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    .line 1511
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private aF()V
    .locals 3

    .line 1516
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    if-eqz v0, :cond_2

    .line 1517
    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/control/-$$Lambda$a$9lMzWLgURrQWsjY_pVIjtYUoU7A;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$9lMzWLgURrQWsjY_pVIjtYUoU7A;-><init>(Lcom/oplus/camera/ui/control/a;)V

    new-instance v2, Lcom/oplus/camera/ui/control/-$$Lambda$a$mgkERGlShbdvwPnA62txbTOEMsc;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$mgkERGlShbdvwPnA62txbTOEMsc;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    .line 1521
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aG()V

    .line 1523
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->at:Lcom/oplus/camera/ui/menu/a/d;

    if-eqz v0, :cond_0

    .line 1524
    iget v1, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/d;->b(I)V

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    if-eqz v0, :cond_1

    .line 1528
    iget v1, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/g;->c(I)V

    .line 1529
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1530
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/g;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1533
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollToPosition(I)V

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method private aG()V
    .locals 11

    .line 1542
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    if-eqz v0, :cond_5

    .line 1544
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1545
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1547
    iget v2, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    const v3, 0x7f070778

    const v4, 0x7f07077b

    const/16 v5, 0xe

    const/16 v6, 0xc

    const/4 v7, 0x1

    const/4 v8, -0x2

    if-eq v2, v7, :cond_3

    const/4 v9, 0x3

    const v10, 0x7f070779

    if-eq v2, v9, :cond_2

    const/4 v9, 0x4

    if-eq v2, v9, :cond_1

    .line 1596
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1598
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1599
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1601
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1602
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1603
    invoke-static {v6}, Lcom/oplus/camera/util/Util;->o(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1605
    :cond_0
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1608
    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1609
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1610
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v1, v7}, Lcom/oplus/camera/ui/widget/AnimationButton;->setAnimType(I)V

    goto/16 :goto_2

    .line 1581
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1583
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    .line 1584
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0x7f0709ee

    .line 1586
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const v3, 0x7f0709cf

    .line 1587
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v3, 0x7f0709d0

    .line 1589
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const v3, 0x7f0709ed

    .line 1591
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1592
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/widget/AnimationButton;->setAnimType(I)V

    goto :goto_2

    .line 1568
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1570
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1571
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1572
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1573
    invoke-static {v6}, Lcom/oplus/camera/util/Util;->o(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1575
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1576
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1577
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v1, v7}, Lcom/oplus/camera/ui/widget/AnimationButton;->setAnimType(I)V

    goto :goto_2

    .line 1549
    :cond_3
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1551
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1552
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1554
    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v5}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v5

    const v6, 0x7f07079b

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    .line 1555
    invoke-virtual {v5}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v5

    if-nez v5, :cond_4

    .line 1556
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1557
    invoke-static {v6}, Lcom/oplus/camera/util/Util;->o(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1559
    :cond_4
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1562
    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1563
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1564
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v1, v7}, Lcom/oplus/camera/ui/widget/AnimationButton;->setAnimType(I)V

    .line 1614
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private aH()V
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    if-eqz v0, :cond_1

    .line 1621
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setDrawableColor(I)V

    goto :goto_0

    .line 1624
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setDrawableColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private aI()V
    .locals 7

    .line 2038
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 2043
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2047
    iget v2, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 2048
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a84

    .line 2049
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v5, 0x7f070183

    .line 2050
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/16 v5, 0x10e

    .line 2052
    iget-object v6, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v6}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v6

    if-ne v5, v6, :cond_1

    move v1, v4

    :cond_1
    const v5, 0x7f0c014b

    .line 2057
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    .line 2058
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2059
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    const v5, 0x7f0c014a

    .line 2062
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2063
    invoke-static {}, Lcom/oplus/camera/util/Util;->P()I

    move-result v1

    invoke-direct {v6, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2064
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aM()I

    move-result v1

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xa

    .line 2065
    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2068
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2069
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f0902f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    .line 2070
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2072
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    .line 2073
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2074
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    iget v1, p0, Lcom/oplus/camera/ui/control/a;->x:I

    invoke-virtual {v0, v1, v4}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 2076
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    .line 2077
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2078
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    iget v1, p0, Lcom/oplus/camera/ui/control/a;->x:I

    invoke-virtual {v0, v1, v4}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 2080
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    .line 2081
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2082
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    iget p0, p0, Lcom/oplus/camera/ui/control/a;->x:I

    invoke-virtual {v0, p0, v4}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    :cond_3
    return-void
.end method

.method private aJ()V
    .locals 2

    .line 2087
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2091
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 2092
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2093
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->I:Landroid/widget/RelativeLayout;

    .line 2095
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    .line 2096
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    .line 2097
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    :cond_1
    return-void
.end method

.method private aK()V
    .locals 8

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPauseResumeClicked, mbVideoRecordingPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_7

    .line 2517
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-nez v0, :cond_0

    const-string p0, "onVideoPauseResumeClicked, mCameraControlButtonListener is null."

    .line 2518
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2523
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2525
    iget-wide v4, p0, Lcom/oplus/camera/ui/control/a;->w:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const-string p0, "onVideoPauseResumeClicked, onVideoPauseResumeClicked time less than 1000ms"

    .line 2526
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2531
    :cond_1
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/a;->w:J

    .line 2533
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->h:Z

    const-string v1, "button_shape_dial_rotate"

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 2534
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2535
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 2536
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getRingShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2537
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->h()V

    goto :goto_0

    .line 2538
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->by()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2539
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->f()V

    .line 2542
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    const v1, 0x7f08024d

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setResIdWithAnimation(I)V

    const/4 v0, 0x0

    .line 2543
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->h:Z

    goto :goto_2

    .line 2546
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2547
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 2548
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getRingShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2549
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->e()V

    goto :goto_1

    .line 2550
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->by()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2551
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->g()V

    .line 2554
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    const v1, 0x7f08023e

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setResIdWithAnimation(I)V

    const/4 v0, 0x1

    .line 2555
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->h:Z

    :cond_7
    :goto_2
    return-void
.end method

.method private aL()V
    .locals 6

    .line 2922
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v3, 0x7f080641

    const v4, 0x7f08063f

    if-ne v2, v0, :cond_3

    .line 2925
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    if-nez v0, :cond_2

    .line 2926
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->ag:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 2930
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2931
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 2927
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2928
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2934
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 2936
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2937
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2938
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    if-ne v5, v0, :cond_5

    .line 2941
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->ag:I

    if-ne v2, v0, :cond_4

    .line 2942
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2943
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 2945
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2946
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 2949
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->ag:I

    if-eq v1, v0, :cond_7

    if-nez v0, :cond_6

    goto :goto_2

    .line 2953
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2954
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 2950
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2951
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    :goto_3
    return-void
.end method

.method private aM()I
    .locals 1

    .line 3032
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private aN()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 3157
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 3159
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->am:Lcom/a/a/f;

    return-void
.end method

.method private aO()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 3163
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 3165
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->an:Lcom/a/a/f;

    return-void
.end method

.method private aP()Z
    .locals 0

    .line 3467
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->G(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private aQ()V
    .locals 6

    const/4 v0, 0x0

    .line 3508
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ar:Z

    .line 3510
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ap()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3514
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->aw()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3518
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/a/e;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 3522
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    .line 3523
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 3524
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/modepanel/g;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollToPosition(I)V

    const/4 v1, 0x3

    .line 3526
    iget v3, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    if-ne v1, v3, :cond_3

    .line 3527
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    div-int/2addr v3, v2

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v1, v3, :cond_4

    .line 3529
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0709f0

    .line 3530
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    neg-int v3, v3

    .line 3529
    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 3532
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollBy(II)V

    .line 3535
    :goto_0
    new-instance v1, Lcom/oplus/camera/ui/control/a$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/a$6;-><init>(Lcom/oplus/camera/ui/control/a;)V

    .line 3549
    iget v3, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    if-ne v4, v3, :cond_5

    .line 3550
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aR()[I

    move-result-object v3

    .line 3551
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 3552
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/menu/a/e;->setClipToOutline(Z)V

    .line 3553
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    .line 3554
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v4, v3, v1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a([ILjava/lang/Runnable;I)V

    goto :goto_1

    .line 3556
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aS()I

    move-result v0

    .line 3557
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v3, v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->a(ILjava/lang/Runnable;)V

    :cond_6
    :goto_1
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3561
    invoke-static {v0, v1, v3, v4}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 3562
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    .line 3563
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/control/-$$Lambda$a$uhqZ26rYvPO23QlkxfUSiTlDpaY;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$uhqZ26rYvPO23QlkxfUSiTlDpaY;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3576
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3577
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3578
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private aR()[I
    .locals 6

    const-string v0, "CameraControlUI"

    const-string v1, "getArrangeViewBottoms"

    .line 3582
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3584
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "getArrangeViewBottoms, layoutManager is null."

    .line 3587
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3589
    new-array p0, p0, [I

    return-object p0

    .line 3592
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    .line 3593
    new-array v1, v0, [I

    .line 3594
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3595
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v3}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 3598
    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3601
    invoke-virtual {v5, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/16 v5, 0x5a

    if-ne v5, v3, :cond_1

    .line 3604
    iget v5, v2, Landroid/graphics/Rect;->left:I

    aput v5, v1, v4

    goto :goto_1

    :cond_1
    const/16 v5, 0x10e

    if-ne v5, v3, :cond_2

    .line 3606
    iget v5, v2, Landroid/graphics/Rect;->right:I

    aput v5, v1, v4

    goto :goto_1

    .line 3608
    :cond_2
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    aput v5, v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private aS()I
    .locals 1

    .line 3617
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    const-string p0, "CameraControlUI"

    const-string v0, "getArrangeViewRight, mModeArrangeView is null"

    .line 3618
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3623
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    .line 3624
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 3625
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    :goto_0
    return p0
.end method

.method private aT()[I
    .locals 5

    const/4 v0, 0x2

    .line 3665
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 3667
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p0, :cond_0

    return-object v0

    .line 3671
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 3677
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const/4 v3, 0x1

    .line 3683
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    aput v4, v0, v3

    .line 3684
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getPosition(Landroid/view/View;)I

    move-result p0

    aput p0, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private synthetic aU()V
    .locals 2

    .line 3794
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    .line 3795
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3796
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic aV()V
    .locals 0

    .line 3500
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aQ()V

    return-void
.end method

.method private synthetic aW()V
    .locals 2

    .line 3490
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f09038f

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    return-object p0
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 3771
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3773
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    rsub-int v1, p1, 0xff

    .line 3774
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageAlpha(I)V

    .line 3777
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->t(I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 1

    .line 3721
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_0

    .line 3724
    div-int/lit8 p2, p2, 0xa

    const/16 v0, 0xff

    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3725
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private synthetic b([Ljava/lang/Object;)V
    .locals 2

    .line 1518
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/a;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    return p0
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 3564
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3565
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    rsub-int v1, p1, 0xff

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageAlpha(I)V

    .line 3566
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->t(I)V

    .line 3568
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3569
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3570
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->az:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3573
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->bringToFront()V

    return-void
.end method

.method private synthetic c([Ljava/lang/Object;)V
    .locals 3

    .line 1356
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method

.method private synthetic d([Ljava/lang/Object;)V
    .locals 2

    .line 1355
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/oplus/camera/ui/modepanel/SmoothScrollLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/MainShutterButton;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/control/a;)Landroid/app/Activity;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/control/a;)Landroid/view/View;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic lambda$2_eaCMU2noyS0VVBT0mh9WiY0b4(Lcom/oplus/camera/ui/control/a;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$2xJhixnacuNHSqAd3HYpb2ZqXMs(Lcom/oplus/camera/ui/control/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$3hSE48jLhDe3MYvSX1IVI369Zjc(Lcom/oplus/camera/ui/control/a;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$9lMzWLgURrQWsjY_pVIjtYUoU7A(Lcom/oplus/camera/ui/control/a;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$EoxHkP74-oxwpLHi1OraVD7vu8E(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aV()V

    return-void
.end method

.method public static synthetic lambda$JVZ8lDUixD2DsH43D4sdAD_RlYc(Lcom/oplus/camera/ui/control/a;Landroid/view/View;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$NFt6NxgdpSJcW3dvByroFrbF5zs(Lcom/oplus/camera/ui/control/a;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$Rdk-4Mq7MhI7Fxi4OyZQtccSx5s(Lcom/oplus/camera/ui/control/a;Landroid/widget/TextView;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/control/a;->a(Landroid/widget/TextView;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$S2Mo8ynTjlng6uE_mEMGJdO1RQI(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aW()V

    return-void
.end method

.method public static synthetic lambda$TB4FZXnTCC3wghQyjDwuPEs_oVc(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aU()V

    return-void
.end method

.method public static synthetic lambda$mgkERGlShbdvwPnA62txbTOEMsc(Lcom/oplus/camera/ui/control/a;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$sMKmrjgrvN_VQzsU_lwCwWKiYWQ(Lcom/oplus/camera/ui/control/a;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$uhqZ26rYvPO23QlkxfUSiTlDpaY(Lcom/oplus/camera/ui/control/a;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/control/a;)Landroid/view/GestureDetector;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->av:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/modepanel/f;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/shareedit/a;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ThumbImageView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/ui/control/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private r(I)V
    .locals 6

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initHeadline, entryType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraControlUI"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-nez p1, :cond_0

    .line 1231
    new-instance p1, Lcom/oplus/camera/ui/menu/a/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/oplus/camera/ui/menu/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    .line 1232
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    const v1, 0x7f0901cc

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/a/b;->setId(I)V

    .line 1233
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/a/b;->setForceDarkAllowed(Z)V

    .line 1234
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 1237
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-nez p1, :cond_2

    .line 1238
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 1239
    invoke-static {}, Lcom/oplus/camera/util/Util;->T()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 1240
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 1241
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1243
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const-string v4, "com.oplus.feature.portrait.support"

    .line 1244
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "com.oplus.feature.suppernight.support"

    .line 1245
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    .line 1243
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oplus/camera/ui/menu/a/c;->a(Landroid/content/Context;IZZ)V

    .line 1246
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/a/c;->a()V

    .line 1247
    new-instance v1, Lcom/oplus/camera/ui/menu/a/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/ui/menu/a/e;-><init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    .line 1248
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/a/e;->setClipToOutline(Z)V

    .line 1249
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    iget v2, p0, Lcom/oplus/camera/ui/control/a;->t:I

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/a/e;->a(I)V

    .line 1250
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/a/e;->setHeadlineBackground(Lcom/oplus/camera/ui/menu/a/b;)V

    .line 1251
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/menu/a/e;->setListener(Lcom/oplus/camera/ui/menu/a/e$e;)V

    .line 1252
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/a/c;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/a/e;->setTextArray(Ljava/util/List;)V

    .line 1254
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/a/e;->setId(I)V

    .line 1256
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1257
    invoke-static {}, Lcom/oplus/camera/util/Util;->T()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1259
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->ac:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1262
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->n:Z

    if-nez p1, :cond_1

    .line 1263
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    :cond_1
    const-string p0, "initHeadline X"

    .line 1266
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/ui/control/a;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    return p0
.end method

.method static synthetic s(Lcom/oplus/camera/ui/control/a;)Landroid/content/ContentResolver;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ah:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private s(I)V
    .locals 8

    .line 3689
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v1, "CameraControlUI"

    if-nez v0, :cond_0

    const-string p0, "updateArrageViewItemsAlpha, mModeArrangeView is null"

    .line 3690
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3695
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3698
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901f6

    .line 3699
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3701
    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v5}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v5

    new-instance v6, Lcom/oplus/camera/ui/control/-$$Lambda$a$Rdk-4Mq7MhI7Fxi4OyZQtccSx5s;

    invoke-direct {v6, p0, v4, p1}, Lcom/oplus/camera/ui/control/-$$Lambda$a$Rdk-4Mq7MhI7Fxi4OyZQtccSx5s;-><init>(Lcom/oplus/camera/ui/control/a;Landroid/widget/TextView;I)V

    new-instance v7, Lcom/oplus/camera/ui/control/-$$Lambda$a$JVZ8lDUixD2DsH43D4sdAD_RlYc;

    invoke-direct {v7, p0, v3, p1}, Lcom/oplus/camera/ui/control/-$$Lambda$a$JVZ8lDUixD2DsH43D4sdAD_RlYc;-><init>(Lcom/oplus/camera/ui/control/a;Landroid/view/View;I)V

    invoke-virtual {v5, v6, v7}, Lcom/oplus/camera/screen/b/a;->b(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    const v5, 0x7f090396

    .line 3706
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/modepanel/k;

    if-nez v3, :cond_1

    .line 3709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateArrageViewItemsAlpha, i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " info is null, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/modepanel/g;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3714
    :cond_1
    invoke-virtual {v3}, Lcom/oplus/camera/ui/modepanel/k;->g()Z

    move-result v3

    const/16 v5, 0xff

    if-eqz v3, :cond_2

    invoke-static {p1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    goto :goto_1

    .line 3715
    :cond_2
    div-int/lit8 v3, p1, 0xa

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 3716
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic t(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/f;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    return-object p0
.end method

.method private t(I)V
    .locals 3

    const/16 v0, 0xff

    .line 3805
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 3806
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setTextColor(I)V

    .line 3810
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v1, 0x3dcccccd    # 0.1f

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 3814
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 3815
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setDrawableColor(I)V

    .line 3816
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->invalidate()V

    return-void
.end method

.method static synthetic u(Lcom/oplus/camera/ui/control/a;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method static synthetic v(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/AnimationButton;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    return-object p0
.end method

.method static synthetic w(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/modepanel/h;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aC:Lcom/oplus/camera/ui/modepanel/h;

    return-object p0
.end method

.method private w(Z)Z
    .locals 2

    .line 626
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private x(Z)V
    .locals 11

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnailView, isAnimate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCapturePerformance.updateThumbnailView,isAnimate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "14ct_updateThumbnailView"

    invoke-static {v0, v5, v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2719
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    if-nez v0, :cond_7

    .line 2720
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    const v3, 0x7f08064b

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 2721
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2722
    iget-object v7, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v7

    .line 2723
    iget-object v8, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    iget-object v9, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10010a

    .line 2724
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2723
    invoke-virtual {v8, v9}, Lcom/oplus/camera/ui/control/ThumbImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 2726
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://media/external/video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2727
    iget-object v7, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    iget-object v8, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1000fe

    .line 2728
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2727
    invoke-virtual {v7, v8}, Lcom/oplus/camera/ui/control/ThumbImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_4

    .line 2732
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/oplus/camera/ui/control/a;->j:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/oplus/camera/ui/control/a;->k:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/oplus/camera/ui/control/a;->l:Z

    if-nez v7, :cond_1

    goto :goto_2

    .line 2739
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    iput-boolean v6, v1, Lcom/oplus/camera/ui/control/e;->a:Z

    .line 2741
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-nez v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    invoke-virtual {v1, v0, p1, v3, v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    .line 2743
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v1, :cond_6

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    .line 2744
    :goto_1
    invoke-virtual {v1, v0, p1, v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/graphics/Bitmap;IZ)V

    goto :goto_3

    .line 2733
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateThumbnailView, use normal bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2736
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    iput-boolean v4, v1, Lcom/oplus/camera/ui/control/e;->a:Z

    .line 2737
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v1, v0, v6, v6, v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    goto :goto_3

    :cond_5
    const-string v0, "updateThumbnailView, mCurThumbnail is null"

    .line 2748
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2751
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v1, v0, v6, v6, v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 2754
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_7

    .line 2755
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/control/e;)V

    .line 2759
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x12c

    .line 1814
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    .line 1816
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v1, :cond_0

    .line 1817
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->f()V

    .line 1820
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 1821
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1822
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1823
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x4d

    .line 1825
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/a;->l(I)V

    goto :goto_0

    .line 1827
    :cond_1
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/a;->l(I)V

    :goto_0
    const/4 v1, 0x1

    .line 1829
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->ao:Z

    .line 1830
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    .line 1831
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    .line 1832
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->b(Z)V

    return-void
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1836
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    .line 1837
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ao:Z

    .line 1838
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    return-void
.end method

.method public C()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1842
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1843
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->j(I)V

    .line 1844
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->af()V

    .line 1845
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 1846
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 1847
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1848
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4d

    .line 1850
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->l(I)V

    goto :goto_0

    .line 1852
    :cond_0
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->l(I)V

    :goto_0
    return-void
.end method

.method public D()V
    .locals 3

    const/4 v0, 0x1

    .line 1857
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->q(Z)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1858
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/ui/control/a;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1859
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/a;->j(I)V

    const/4 v1, 0x0

    .line 1860
    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/camera/ui/control/a;->a(ZZZ)V

    .line 1861
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->a(ZZ)V

    .line 1862
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->c(IZ)V

    .line 1863
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->ao:Z

    .line 1864
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    .line 1865
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    .line 1866
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/a;->b(Z)V

    return-void
.end method

.method public E()V
    .locals 2

    .line 1870
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1871
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1875
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->a(ZZ)V

    .line 1876
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    .line 1877
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->b(Z)V

    return-void
.end method

.method public F()V
    .locals 4

    .line 1881
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1882
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 1885
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ag()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1886
    invoke-virtual {p0, v2, v0, v0}, Lcom/oplus/camera/ui/control/a;->a(ZZZ)V

    .line 1887
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/ui/control/a;->a(ZZ)V

    .line 1888
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 1889
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/ui/control/a;->c(IZ)V

    .line 1890
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    .line 1891
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    .line 1892
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->b(Z)V

    return-void
.end method

.method public G()V
    .locals 2

    .line 1896
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 1897
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 1898
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    .line 1900
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->l(I)V

    goto :goto_0

    .line 1902
    :cond_0
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->l(I)V

    :goto_0
    const/4 v0, 0x1

    .line 1904
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    .line 1905
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/a;->b(Z)V

    return-void
.end method

.method public H()V
    .locals 3

    .line 2102
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aI()V

    .line 2103
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    const/16 v0, 0x8

    const/16 v1, 0x12c

    .line 2104
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    .line 2105
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aL()V

    .line 2106
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2107
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2108
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2109
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/ui/control/a;->d(ZZ)V

    .line 2111
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->Z:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 2112
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    .line 2117
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2118
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2119
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2121
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    .line 2122
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/control/a;->b(II)V

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2126
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->d(ZZ)V

    .line 2127
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->e(ZZ)V

    .line 2129
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->Z:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 2130
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public J()V
    .locals 3

    .line 2135
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aI()V

    .line 2136
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2137
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aL()V

    .line 2138
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2139
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2140
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2141
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2142
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2143
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->d(ZZ)V

    .line 2144
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->e(ZZ)V

    .line 2146
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 2147
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2150
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->o:Z

    return-void
.end method

.method public K()V
    .locals 2

    .line 2154
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2155
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2156
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    .line 2157
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    .line 2158
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2159
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->d(ZZ)V

    .line 2160
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->e(ZZ)V

    const/4 v0, 0x0

    const/16 v1, 0x12c

    .line 2161
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    .line 2162
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->o:Z

    return-void
.end method

.method public L()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public M()V
    .locals 1

    .line 2390
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2391
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->performClick()Z

    :cond_0
    return-void
.end method

.method public N()V
    .locals 2

    .line 2396
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2397
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "key_quick_video"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "key_short_video"

    .line 2398
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2399
    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setIsVolumeDown(Z)V

    .line 2402
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->performLongClick()Z

    :cond_2
    return-void
.end method

.method public O()V
    .locals 1

    .line 2407
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2408
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->performClick()Z

    :cond_0
    return-void
.end method

.method public P()V
    .locals 0

    .line 2510
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->e()V

    return-void
.end method

.method public Q()V
    .locals 3

    const-string v0, "CameraControlUI"

    const-string v1, "initThumbnail()"

    .line 2767
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2770
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2771
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    goto :goto_0

    .line 2773
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/e;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public R()Z
    .locals 1

    .line 2779
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public S()I
    .locals 0

    .line 2973
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    .line 2974
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result p0

    return p0

    .line 2977
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result p0

    return p0
.end method

.method public T()I
    .locals 0

    .line 2985
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    return p0
.end method

.method public U()Landroid/widget/RelativeLayout;
    .locals 0

    .line 2989
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public V()I
    .locals 0

    .line 2993
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p0, :cond_0

    .line 2994
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public W()Z
    .locals 0

    .line 3018
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public X()Z
    .locals 0

    .line 3067
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 3068
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->L()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Y()Z
    .locals 0

    .line 3076
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 3077
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->N()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Z()Z
    .locals 0

    .line 3085
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 3086
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->P()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(BZ)V
    .locals 4

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControlPanelBgColor, bgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2867
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    .line 2871
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/c;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 2879
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v0, 0x7f060021

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 2875
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/oplus/camera/ui/c;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 2883
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/c;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    if-eqz p2, :cond_5

    .line 2892
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    const/16 p1, 0xc8

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 2895
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2898
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    new-instance p2, Lcom/oplus/camera/ui/control/a$2;

    invoke-direct {p2, p0, v0}, Lcom/oplus/camera/ui/control/a$2;-><init>(Lcom/oplus/camera/ui/control/a;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(IZ)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraShutterButtonVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    int-to-long v0, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;I)V
    .locals 10

    move-object v0, p0

    .line 515
    iget-object v0, v0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    .line 516
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1957
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x12c

    .line 1958
    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 3001
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/c;->b()Ljava/util/List;

    move-result-object p1

    .line 3002
    invoke-static {p2}, Lcom/oplus/camera/ui/menu/a/c;->a(Ljava/lang/String;)I

    move-result p2

    .line 3003
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3004
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 3005
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    .line 3007
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3009
    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3011
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_camera_mode_key"

    const-string v2, "common"

    .line 3012
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3011
    invoke-virtual {v1, p1, p2, p0}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 7

    const/4 p1, 0x0

    .line 747
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->i()V

    .line 753
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->p:Z

    if-eq v0, v1, :cond_1

    .line 754
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->p:Z

    .line 756
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aC()V

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/c;->b()Ljava/util/List;

    move-result-object v0

    .line 760
    invoke-static {p2}, Lcom/oplus/camera/ui/menu/a/c;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    move v2, p1

    .line 763
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 764
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    .line 772
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p2, :cond_4

    .line 773
    invoke-virtual {p2, v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;I)V

    .line 774
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/a/e;->n()V

    :cond_4
    if-eqz p3, :cond_5

    .line 777
    iget-boolean p2, p0, Lcom/oplus/camera/ui/control/a;->o:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIListener;->Q()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 778
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    goto :goto_2

    .line 780
    :cond_5
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 783
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIListener;->aI()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/control/a;->b(Z)V

    .line 785
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    .line 786
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v0, 0x7f08064b

    invoke-static {p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 787
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p2, p1, p1, p3}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    .line 790
    :cond_6
    iget p2, p0, Lcom/oplus/camera/ui/control/a;->t:I

    invoke-static {p2}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result p2

    if-nez p2, :cond_8

    .line 791
    iget-object p2, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    if-eqz p2, :cond_7

    .line 792
    invoke-virtual {p2, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p2, 0x0

    .line 793
    iput-object p2, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 796
    :cond_7
    new-instance p2, Lcom/oplus/camera/ui/control/a$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/control/a$a;-><init>(Lcom/oplus/camera/ui/control/a;Lcom/oplus/camera/ui/control/e$d;ZZZLcom/oplus/camera/ui/control/a$c;)V

    .line 797
    invoke-static {}, Lcom/oplus/camera/ui/control/h;->a()Lcom/oplus/camera/ui/control/h;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p3, p1}, Lcom/oplus/camera/ui/control/a$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 800
    :cond_8
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_9

    .line 801
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->m()V

    :cond_9
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 508
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 509
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/oplus/camera/ui/menu/a/e;->a(IIZZ)V

    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 1

    .line 526
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/a/e;->a(IIZZ)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 2655
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CameraControlUI"

    const-string v1, "waitCapturePreviewDone, blocking..."

    .line 2656
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->W:Landroid/os/ConditionVariable;

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    .line 2660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "waitCapturePreviewDone, state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, "done"

    goto :goto_0

    :cond_0
    const-string p0, "timeout"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "CameraControlUI"

    const-string v1, "updateQuickBitmap, update for gallery"

    .line 2645
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->W:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2649
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz p0, :cond_0

    .line 2650
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IZ)V
    .locals 0

    .line 1374
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    .line 1375
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/graphics/Bitmap;IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/c/a/b/a;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_1

    .line 2701
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 2702
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2705
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v1, :cond_2

    .line 2707
    invoke-virtual {p1}, Lcom/oplus/c/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2708
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/control/f;->a(Lcom/oplus/camera/ui/control/e;)V

    goto :goto_1

    .line 2709
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_3

    .line 2710
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->a(Lcom/oplus/c/a/b/a;Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;Z)V
    .locals 1

    .line 1492
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->h(I)V

    .line 1494
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 1495
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/screen/b/a;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/CameraControlButtonListener;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 3

    const-string v0, "CameraControlUI"

    if-nez p1, :cond_0

    const-string p0, "onShutterButtonClick, ShutterButton is null."

    .line 2175
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2180
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2181
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    const-string v1, "onShutterButtonClick, camera menu is popup...."

    .line 2183
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz v1, :cond_6

    .line 2187
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v1, 0x7f0900a1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_4

    const v0, 0x7f090338

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 2189
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne p1, v2, :cond_3

    .line 2190
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->j()V

    goto :goto_0

    .line 2192
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->h()V

    goto :goto_0

    .line 2198
    :cond_4
    iget p1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    if-ne p1, v2, :cond_6

    :cond_5
    const-string p1, "onShutterButtonClick, camera_from_other_app_close_btn"

    .line 2199
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/ShutterButton;Z)V
    .locals 0

    .line 2167
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_0

    .line 2168
    invoke-interface {p0, p2}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/b;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/b;Z)V
    .locals 4

    const-string v0, "CameraControlUI"

    const-string v1, "onPause"

    .line 1076
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1078
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->n:Z

    const/4 v2, 0x1

    .line 1079
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    .line 1080
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    .line 1082
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v3, :cond_0

    .line 1083
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->j()V

    .line 1086
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v3, :cond_1

    .line 1087
    invoke-virtual {v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->b()V

    .line 1090
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v3, :cond_2

    .line 1091
    invoke-virtual {v3}, Lcom/oplus/camera/ui/control/ShutterButton;->clearAnimation()V

    .line 1094
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    if-eqz v3, :cond_3

    .line 1095
    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v3, 0x0

    .line 1096
    iput-object v3, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 1099
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ui/control/a;->h(ZZ)V

    .line 1101
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 1102
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 1103
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1106
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ad()V

    .line 1108
    invoke-virtual {p0, p1, p2, v2}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/b;ZZ)V

    .line 1109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->v()V

    .line 1111
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p0, :cond_5

    .line 1112
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "onPause, null == currentButtonInfo"

    .line 1115
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/b;ZZ)V
    .locals 5

    const-string v0, "CameraControlUI"

    const-string v1, "resetShutterButton"

    .line 1646
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    .line 1649
    iget v2, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 1650
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const-string p3, "button_color_inside_red"

    invoke-direct {p1, v4, p3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 1652
    iget-object p3, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1655
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 1658
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 1659
    iget p3, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne p1, p3, :cond_3

    .line 1660
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    .line 1661
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/control/MainShutterButton;->setClickable(Z)V

    .line 1662
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 1665
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 1669
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1670
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->setPressed(Z)V

    .line 1673
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    :cond_5
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/c;)V
    .locals 0

    .line 2981
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->aa:Lcom/oplus/camera/ui/control/c;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e$d;Z)V
    .locals 2

    .line 2783
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/control/g;->a(Landroid/content/ContentResolver;)Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    .line 2785
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_0

    .line 2786
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 2789
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2790
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->k(Z)V

    .line 2793
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnail, mCurThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2796
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/control/a;->x(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2798
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/e$d;ZLcom/oplus/camera/ui/control/a$c;)V

    :goto_0
    const-string p0, "video_save"

    .line 2801
    invoke-static {p0}, Lcom/oplus/camera/perf/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e$d;ZLcom/oplus/camera/ui/control/a$c;)V
    .locals 8

    const-string v0, "CameraControlUI"

    const-string v1, "updateThumbnailFromContentResolver"

    .line 2805
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2808
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 2809
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 2812
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/control/a$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/control/a$a;-><init>(Lcom/oplus/camera/ui/control/a;Lcom/oplus/camera/ui/control/e$d;ZZZLcom/oplus/camera/ui/control/a$c;)V

    .line 2813
    invoke-static {}, Lcom/oplus/camera/ui/control/h;->a()Lcom/oplus/camera/ui/control/h;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/control/a$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 0

    .line 2665
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    .line 2666
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/control/e;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;I)V
    .locals 4

    .line 2562
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/oplus/camera/ui/control/a$a;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/oplus/camera/ui/control/a$a;

    .line 2564
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 2566
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 2569
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->ai:Lcom/oplus/camera/ui/control/e;

    .line 2570
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    .line 2572
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_1

    .line 2573
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Landroid/graphics/Bitmap;IZ)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;Z)V
    .locals 9

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnailView, isAnimate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2581
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 2582
    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->y:Landroid/os/AsyncTask;

    .line 2585
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    if-eqz v0, :cond_1

    return-void

    .line 2589
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraCapturePerformance.updateThumbnailView,isAnimate:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "14ct_updateThumbnailView"

    invoke-static {v0, v6, v4, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2591
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz p1, :cond_2

    .line 2593
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2594
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->W:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    goto :goto_0

    .line 2596
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->W:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2599
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_3

    .line 2600
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 2603
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_4

    .line 2604
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIListener;->k(Z)V

    .line 2608
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ai:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v4, :cond_7

    .line 2610
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->b()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ai:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->g()J

    move-result-wide v4

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->g()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-ltz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    .line 2611
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->b()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    .line 2613
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_8

    .line 2614
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/control/e;)V

    goto :goto_2

    .line 2612
    :cond_7
    :goto_1
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/control/a;->x(Z)V

    .line 2617
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x4

    .line 2618
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 2621
    :cond_9
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    if-eqz p1, :cond_a

    const-string p1, "CameraTest Thumbnail Updated"

    .line 2622
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2624
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateThumbnailView, mbFirstCallHasExcuted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCurThumbnail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    :goto_3
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    if-eqz p1, :cond_b

    .line 2629
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    .line 2630
    new-instance p1, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p1}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 2631
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 2632
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 2633
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->g()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    const/4 v0, 0x0

    .line 2634
    iput-boolean v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->B:Z

    .line 2635
    iput-boolean v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->C:Z

    .line 2636
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/control/f;->a(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 2639
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/e;)V

    .line 2641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/f;)V
    .locals 0

    .line 1686
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/f;)V
    .locals 0

    .line 3838
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/h;)V
    .locals 0

    .line 3842
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->aC:Lcom/oplus/camera/ui/modepanel/h;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/widget/e;)V
    .locals 0

    .line 3463
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->ak:Lcom/oplus/camera/ui/widget/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1380
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    .line 1381
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 603
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->w(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/control/a;->b(II)V

    .line 606
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->w(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    invoke-virtual {p0, v3, v3}, Lcom/oplus/camera/ui/control/a;->e(ZZ)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/ui/control/a;->b(II)V

    .line 613
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v4, "pref_support_thumbnail"

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 614
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->Q()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->w(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/control/a;->c(II)V

    .line 617
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->w(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 618
    invoke-virtual {p0, v3, v3}, Lcom/oplus/camera/ui/control/a;->f(ZZ)V

    goto :goto_1

    .line 621
    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/ui/control/a;->c(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->by()Z

    move-result v0

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aP()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 845
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, p2, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 848
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-eqz p1, :cond_2

    .line 852
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, p2, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 855
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 3

    const-string v0, "pref_support_switch_camera"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x12c

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 1030
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/ui/control/a;->c(II)V

    .line 1033
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/ui/control/a;->a(II)V

    .line 1035
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    if-nez p2, :cond_4

    .line 1038
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1041
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_2

    .line 1042
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 1045
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_3

    .line 1046
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 1049
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_4

    .line 1052
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public varargs a([I)V
    .locals 0

    .line 3169
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 3170
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a([I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent, event in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraControlUI"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3904
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3905
    iget-object v4, v0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v4, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3906
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3909
    iget-boolean v2, v0, Lcom/oplus/camera/ui/control/a;->s:Z

    const/4 v5, 0x1

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 3915
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 3916
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x0

    .line 3919
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_1

    .line 3920
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ne v9, v8, :cond_1

    if-ne v5, v2, :cond_1

    const-string v0, "handleTouchEvent, return when the first finger is on button"

    .line 3922
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 3927
    :cond_1
    iget v8, v0, Lcom/oplus/camera/ui/control/a;->v:I

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-eq v11, v8, :cond_2

    if-eq v9, v6, :cond_2

    if-eq v10, v6, :cond_2

    .line 3930
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iget v12, v0, Lcom/oplus/camera/ui/control/a;->v:I

    if-eq v8, v12, :cond_2

    .line 3931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTouchEvent, return when the second finger is on button: pointerId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/oplus/camera/ui/control/a;->v:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ActionPointerId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3932
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ActionIndex: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3931
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 3938
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ne v9, v8, :cond_5

    .line 3939
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3940
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3941
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3942
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v4, v0, Lcom/oplus/camera/ui/control/a;->r:Z

    if-nez v4, :cond_5

    .line 3944
    iput-boolean v5, v0, Lcom/oplus/camera/ui/control/a;->r:Z

    .line 3945
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/oplus/camera/ui/control/a;->v:I

    .line 3947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTouchEvent, there is a finger on button, pointerId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/oplus/camera/ui/control/a;->v:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :cond_5
    iget-boolean v4, v0, Lcom/oplus/camera/ui/control/a;->r:Z

    const/4 v8, 0x6

    if-eqz v4, :cond_8

    if-ne v8, v6, :cond_6

    iget v4, v0, Lcom/oplus/camera/ui/control/a;->v:I

    .line 3952
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v4, v2, :cond_7

    :cond_6
    if-eq v5, v6, :cond_7

    if-ne v10, v6, :cond_8

    .line 3955
    :cond_7
    iput-boolean v7, v0, Lcom/oplus/camera/ui/control/a;->r:Z

    .line 3956
    iput v11, v0, Lcom/oplus/camera/ui/control/a;->v:I

    const-string v2, "handleTouchEvent, button-finger release/up"

    .line 3958
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v2, 0x5

    if-ne v2, v6, :cond_9

    move/from16 v16, v7

    goto :goto_1

    :cond_9
    if-eq v8, v6, :cond_c

    if-ne v5, v6, :cond_a

    goto :goto_0

    :cond_a
    if-ne v10, v6, :cond_b

    move/from16 v16, v10

    goto :goto_1

    :cond_b
    move/from16 v16, v9

    goto :goto_1

    :cond_c
    :goto_0
    move/from16 v16, v5

    .line 3971
    :goto_1
    iget v2, v0, Lcom/oplus/camera/ui/control/a;->v:I

    if-eq v11, v2, :cond_d

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    goto :goto_2

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_2
    if-ne v11, v2, :cond_e

    .line 3974
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    sub-int/2addr v2, v5

    .line 3977
    :cond_e
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 3978
    invoke-virtual {v1, v2, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 3979
    iget v6, v0, Lcom/oplus/camera/ui/control/a;->v:I

    if-eq v11, v6, :cond_f

    goto :goto_3

    :cond_f
    move v6, v2

    :goto_3
    iput v6, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3980
    new-array v6, v5, [Landroid/view/MotionEvent$PointerProperties;

    aput-object v4, v6, v7

    .line 3983
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 3984
    invoke-virtual {v1, v2, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 3985
    new-array v5, v5, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v4, v5, v7

    .line 3988
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    const/16 v17, 0x1

    .line 3989
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    .line 3990
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v25

    .line 3991
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v27

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    .line 3988
    invoke-static/range {v12 .. v27}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 3993
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3994
    iget-object v6, v0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v6, v5}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3995
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v4, v6, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 3997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent, event out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    iget-object v0, v0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_10
    :goto_4
    const-string v0, "handleTouchEvent, return when inertialzoom or focusexposure is changing"

    .line 3910
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public aA()Z
    .locals 0

    .line 3890
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a;->r:Z

    return p0
.end method

.method public aB()I
    .locals 0

    .line 3894
    iget p0, p0, Lcom/oplus/camera/ui/control/a;->v:I

    return p0
.end method

.method public aa()V
    .locals 2

    .line 3111
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->am:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 3112
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aN()V

    .line 3115
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->am:Lcom/a/a/f;

    new-instance v1, Lcom/oplus/camera/ui/control/a$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/a$4;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 3130
    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method public ab()V
    .locals 2

    .line 3134
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->an:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 3135
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aO()V

    .line 3138
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->an:Lcom/a/a/f;

    new-instance v1, Lcom/oplus/camera/ui/control/a$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/a$5;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 3153
    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method public ac()Z
    .locals 0

    .line 3181
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ad()V
    .locals 1

    .line 3185
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 3186
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public ae()V
    .locals 0

    .line 3191
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    .line 3192
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->e()V

    :cond_0
    return-void
.end method

.method public af()V
    .locals 2

    .line 3197
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget p0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne v1, p0, :cond_0

    .line 3199
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->f()V

    :cond_0
    return-void
.end method

.method public ag()V
    .locals 2

    .line 3204
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ak:Lcom/oplus/camera/ui/widget/e;

    if-eqz v0, :cond_0

    .line 3206
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3207
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->g()V

    :cond_1
    return-void
.end method

.method public ah()V
    .locals 2

    .line 3219
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget p0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne v1, p0, :cond_0

    .line 3220
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c()V

    :cond_0
    return-void
.end method

.method public ai()V
    .locals 1

    .line 3233
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_0

    .line 3234
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/control/e;)V

    :cond_0
    return-void
.end method

.method public aj()Z
    .locals 0

    .line 3239
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->X()Z

    move-result p0

    return p0
.end method

.method public ak()Z
    .locals 0

    .line 3243
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 3244
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public al()V
    .locals 0

    .line 3251
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    .line 3252
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->k()V

    :cond_0
    return-void
.end method

.method public am()V
    .locals 0

    .line 3281
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    if-eqz p0, :cond_0

    .line 3282
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d()V

    :cond_0
    return-void
.end method

.method public an()V
    .locals 3

    const-string v0, "CameraControlUI"

    const-string v1, "cancelThumbnailAnim."

    .line 3287
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "cancelThumbnailAnim, set thumbnail animation to null."

    .line 3290
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3293
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->clearAnimation()V

    :cond_0
    const-string p0, "cancelThumbnailAnim end."

    .line 3296
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ao()V
    .locals 0

    .line 3312
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_0

    .line 3313
    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->onSwitchCameraButtonClick()V

    :cond_0
    return-void
.end method

.method public ap()Z
    .locals 0

    .line 3422
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 3423
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aq()Landroid/widget/RelativeLayout;
    .locals 0

    .line 3430
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    return-object p0
.end method

.method public ar()Landroid/widget/RelativeLayout;
    .locals 0

    .line 3434
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    return-object p0
.end method

.method public as()Lcom/oplus/camera/ui/control/ShutterButton;
    .locals 0

    .line 3438
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    return-object p0
.end method

.method public at()Z
    .locals 0

    .line 3442
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->ba()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public au()Z
    .locals 0

    .line 3450
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public av()V
    .locals 8

    .line 3730
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3731
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->j()V

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    goto/16 :goto_3

    .line 3740
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aB:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 3741
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 3744
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const v2, 0x7f09038f

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setTag(ILjava/lang/Object;)V

    .line 3745
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/c;->a()V

    .line 3746
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ae:Lcom/oplus/camera/ui/menu/a/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/c;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    .line 3748
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v0, :cond_4

    .line 3749
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    const-string v6, "pref_camera_mode_key"

    const-string v7, "common"

    .line 3750
    invoke-virtual {v5, v6, v7}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3749
    invoke-static {v5}, Lcom/oplus/camera/ui/menu/a/c;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5, v4}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;ZLjava/lang/String;)V

    .line 3751
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 3752
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/a/e;->setClipToOutline(Z)V

    .line 3753
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->b()V

    .line 3754
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->clearAnimation()V

    .line 3755
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScroll()V

    .line 3757
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    if-ne v5, v0, :cond_3

    .line 3758
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->al:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    .line 3759
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aR()[I

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/oplus/camera/ui/menu/a/e;->a([II)V

    goto :goto_0

    .line 3761
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aT()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->c([I)V

    .line 3766
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    .line 3767
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0xc8

    :goto_1
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3768
    invoke-static {v0, v1, v2, v4}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/4 v1, 0x2

    .line 3769
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3770
    new-instance v4, Lcom/oplus/camera/ui/control/-$$Lambda$a$2_eaCMU2noyS0VVBT0mh9WiY0b4;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$2_eaCMU2noyS0VVBT0mh9WiY0b4;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3780
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v3, v3

    .line 3781
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 3783
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3784
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3785
    new-instance v0, Lcom/oplus/camera/ui/control/-$$Lambda$a$sMKmrjgrvN_VQzsU_lwCwWKiYWQ;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$sMKmrjgrvN_VQzsU_lwCwWKiYWQ;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3792
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3793
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v1, Lcom/oplus/camera/ui/control/-$$Lambda$a$TB4FZXnTCC3wghQyjDwuPEs_oVc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$TB4FZXnTCC3wghQyjDwuPEs_oVc;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v0, v1, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3799
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/k;

    .line 3800
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v3, 0x7f060094

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    goto :goto_2

    :cond_6
    return-void

    .line 3735
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endArrangeMode, mModeArrangeView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraControlUI"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3da3d70a    # 0.08f
        0x0
    .end array-data
.end method

.method public aw()Z
    .locals 1

    .line 3820
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3821
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public ax()Z
    .locals 1

    .line 3828
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const v0, 0x7f09038f

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3831
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ay()V
    .locals 1

    .line 3847
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aC:Lcom/oplus/camera/ui/modepanel/h;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/modepanel/h;->a(Z)V

    return-void
.end method

.method public az()Z
    .locals 0

    .line 3852
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a;->ar:Z

    return p0
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/control/a;->a(IZZ)V

    return-void
.end method

.method public b(II)V
    .locals 3

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchCameraButtonVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ShutterButton;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1945
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v0, 0x0

    int-to-long v1, p2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 2

    .line 2014
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 2016
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2017
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eqz p2, :cond_1

    .line 2020
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    goto :goto_0

    .line 2022
    :cond_1
    iget-boolean p2, p0, Lcom/oplus/camera/ui/control/a;->g:Z

    if-eqz p2, :cond_3

    .line 2023
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    goto :goto_0

    .line 2028
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const/4 p2, 0x3

    .line 2029
    invoke-static {p1, p2}, Lcom/oplus/camera/ui/c;->a(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x190

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f0100d2

    .line 2031
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    const/4 v1, 0x0

    .line 2028
    invoke-static {v0, p1, p2, p0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 1

    .line 2214
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 2218
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f090338

    if-ne p1, v0, :cond_1

    .line 2219
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->i()V

    :cond_1
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/b;)V
    .locals 0

    .line 1640
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p0, :cond_0

    .line 1641
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/e;)V
    .locals 3

    .line 2671
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    .line 2673
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p1, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 2677
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2678
    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIListener;->k(Z)V

    .line 2681
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    if-eqz p1, :cond_2

    .line 2682
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->i:Z

    .line 2683
    new-instance p1, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p1}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 2684
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 2685
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 2686
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/e;->g()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    const/4 v1, 0x0

    .line 2687
    iput-boolean v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->B:Z

    .line 2688
    iput-boolean v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->C:Z

    .line 2689
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/f;->a(Lcom/oplus/camera/Storage$CameraPicture;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1634
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p0, :cond_0

    .line 1635
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_3

    .line 807
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const v1, 0x7f080248

    if-eqz v0, :cond_0

    .line 808
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 810
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->aq:Z

    if-eqz v0, :cond_1

    const v1, 0x7f080249

    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f080247

    .line 813
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(ZZ)V
    .locals 9

    .line 944
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0xb4

    const-wide/16 v4, 0x75

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 946
    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 949
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs b([I)V
    .locals 0

    .line 3175
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 3176
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->b([I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 540
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CameraControlUI"

    const-string v0, "isThumbImageViewVisible, mThumbImageView not visible"

    .line 542
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public c()V
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->i()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 6

    .line 630
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->p:Z

    .line 631
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->g()V

    .line 632
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f090338

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/MainShutterButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 633
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 636
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->aF:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->setOnShutterButtonListener(Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    const-string v2, "com.oplus.ui.shutterbutton.type.lowlight"

    .line 638
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->setBackgroundResource(I)V

    .line 642
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 643
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/control/MainShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 644
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v2, v4, v5}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 646
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v4, 0x7f090384

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 647
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->aG:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnShutterButtonListener(Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    .line 648
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/control/ShutterButton;->setForceHide(Z)V

    .line 649
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 650
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    new-instance v4, Lcom/oplus/camera/ui/control/a$9;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/control/a$9;-><init>(Lcom/oplus/camera/ui/control/a;)V

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 661
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v2, v4, v5}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 662
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {v2}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const-string v5, "SwitchCameraButton"

    invoke-virtual {v2, v4, v5}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;Ljava/lang/String;)V

    .line 664
    iget v2, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-eq v2, v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->f()V

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    if-nez v1, :cond_2

    .line 670
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0180

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 671
    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900a1

    .line 672
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/control/ShutterButton;

    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 675
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnShutterButtonListener(Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    .line 676
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 677
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 678
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    const-string v3, "CloseCameraButton"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;Ljava/lang/String;)V

    .line 680
    iget v1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v1, "button_color_inside_red"

    .line 681
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 683
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->requestFocus()Z

    .line 687
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a;->r(I)V

    .line 689
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v0, 0x7f090411

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/e;

    iput-object p1, p0, Lcom/oplus/camera/ui/control/a;->ak:Lcom/oplus/camera/ui/widget/e;

    .line 691
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b94

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ShutterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    .line 693
    new-instance v0, Lcom/oplus/camera/ui/control/a$10;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/control/a$10;-><init>(Lcom/oplus/camera/ui/control/a;I)V

    .line 712
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(II)V
    .locals 4

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbViewVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-nez v0, :cond_0

    return-void

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1984
    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(ZZ)V

    .line 1987
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    if-eq v0, v1, :cond_4

    .line 1991
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 1994
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    new-instance v1, Lcom/oplus/camera/ui/control/a$13;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/control/a$13;-><init>(Lcom/oplus/camera/ui/control/a;I)V

    int-to-long v2, p2

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public c(IZ)V
    .locals 3

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControlPanelBgColor, previewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 2820
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->be()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2823
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    goto :goto_2

    .line 2821
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, p2}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    if-eq v0, p1, :cond_6

    const/4 v0, 0x4

    if-eq v0, p1, :cond_6

    if-ne v1, p1, :cond_3

    .line 2828
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    if-nez p1, :cond_4

    .line 2829
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x5

    if-ne v0, p1, :cond_5

    .line 2830
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    if-eq v0, p1, :cond_7

    .line 2833
    invoke-virtual {p0, v2, p2}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    goto :goto_2

    .line 2831
    :cond_6
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/oplus/camera/ui/control/a;->a(BZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public c(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 1

    .line 2225
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz v0, :cond_0

    const v0, 0x7f090338

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 2226
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3856
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 3857
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    .line 820
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1058
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/control/a;->a(ZZZ)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 861
    iput p1, p0, Lcom/oplus/camera/ui/control/a;->ag:I

    return-void
.end method

.method public d(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ad()V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 964
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->a(I)V

    const/16 p1, 0x12c

    .line 965
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->c(II)V

    .line 966
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->a(II)V

    .line 967
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 969
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->a(I)V

    .line 971
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    .line 972
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 975
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_2

    .line 976
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 979
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_3

    .line 980
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d(ZZ)V
    .locals 2

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraShutterButton, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_3

    .line 1692
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    .line 1693
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setClickable(Z)V

    .line 1694
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->aU()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bq()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1697
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 1699
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 1701
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->o()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 5

    const-string v0, "com.oplus.feature.doubleexposure.support"

    .line 717
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c017d

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v4, 0x7f090096

    .line 720
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090220

    .line 721
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c017b

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 728
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0902ef

    .line 729
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 730
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    if-nez v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c017a

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 737
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900b5

    .line 738
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    :cond_2
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 955
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 956
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->e(I)V

    :cond_0
    return-void
.end method

.method public e(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ad()V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 989
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->a(I)V

    const/16 p1, 0x12c

    .line 990
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->c(II)V

    .line 991
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 993
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a;->a(I)V

    .line 995
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    .line 996
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 999
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_2

    .line 1000
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(ZZ)V
    .locals 2

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSwitchCameraButton, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_3

    .line 1721
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setEnabled(Z)V

    .line 1722
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1725
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1727
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 1729
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 825
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->a(ZZ)V

    .line 827
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->by()Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "key_support_share_edit_thumb"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ag()V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 836
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_2

    .line 837
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1400
    iput p1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1401
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->g:Z

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1006
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->ad()V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/16 p1, 0xb4

    .line 1009
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->c(II)V

    .line 1010
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->a(II)V

    .line 1011
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/control/a;->b(II)V

    goto :goto_0

    .line 1013
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    .line 1014
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 1017
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_2

    .line 1018
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 1021
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_3

    .line 1022
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public f(ZZ)V
    .locals 2

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableThumbView(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_3

    .line 1738
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setEnabled(Z)V

    .line 1739
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 1742
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setAlpha(F)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 1744
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 1747
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public g()V
    .locals 11

    .line 865
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    .line 866
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMotionEventSplittingEnabled(Z)V

    .line 868
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 870
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 871
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 872
    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v3, 0x7f0900e4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 876
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/a;->aH:Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVDHLayoutListener(Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;)V

    .line 877
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setMotionEventSplittingEnabled(Z)V

    .line 879
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0046

    .line 881
    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 882
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    const v4, 0x7f0903b4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08064b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v1, v3}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    .line 887
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/oplus/camera/ui/control/a;->u:I

    const-string v0, "com.oplus.share.edit.support"

    .line 889
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->q:Z

    .line 891
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->q:Z

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f0c0153

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->H:Landroid/widget/RelativeLayout;

    .line 893
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->H:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v7, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    new-instance v8, Lcom/oplus/camera/ui/control/a$11;

    invoke-direct {v8, p0}, Lcom/oplus/camera/ui/control/a$11;-><init>(Lcom/oplus/camera/ui/control/a;)V

    iget-object v9, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    iget-object v10, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/oplus/camera/ui/menu/shareedit/a;-><init>(Landroid/widget/RelativeLayout;Lcom/oplus/camera/ui/control/a;Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/menu/shareedit/a$b;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/control/ThumbImageView;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    .line 903
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 907
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 908
    invoke-static {}, Lcom/oplus/camera/util/Util;->P()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 909
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 910
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aM()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 911
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1405
    iput p1, p0, Lcom/oplus/camera/ui/control/a;->x:I

    .line 1407
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_1

    .line 1412
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_4

    .line 1416
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->be()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1420
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(IZ)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "CameraControlUI"

    const-string v2, "setOrientation, ThumbImageView ignore orientation change intentionally"

    .line 1417
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->J:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    .line 1425
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1428
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->K:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_6

    .line 1429
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1432
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->L:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_7

    .line 1433
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1436
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    .line 1437
    iget v2, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-eq v0, v2, :cond_8

    const/4 v0, 0x2

    if-ne v0, v2, :cond_9

    .line 1438
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 1442
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_a

    .line 1443
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 1446
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_b

    .line 1447
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(IZ)V

    .line 1450
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_c

    .line 1451
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(IZ)V

    .line 1454
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->R:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_d

    .line 1455
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 1458
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_e

    .line 1459
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 1462
    :cond_e
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aj:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_f

    .line 1463
    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    :cond_f
    return-void
.end method

.method public g(Z)V
    .locals 3

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhotoEncrypted, isPhotoEncrypted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->j:Z

    .line 1127
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->j:Z

    if-eqz p1, :cond_0

    .line 1128
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    .line 1129
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    invoke-virtual {p1, v0, v2}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->k:Z

    .line 1131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPhotoEncrypted, mbPhotoEncryptPass: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a;->k:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(ZZ)V
    .locals 2

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHeadline(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    .line 1757
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/a/e;->setListener(Lcom/oplus/camera/ui/menu/a/e$e;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1759
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setListener(Lcom/oplus/camera/ui/menu/a/e$e;)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1763
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setAlpha(F)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    .line 1765
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/a/e;->setAlpha(F)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 1768
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setAlpha(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public h()V
    .locals 9

    .line 937
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 938
    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 3

    .line 1468
    iput p1, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    .line 1470
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    if-eqz p1, :cond_2

    .line 1471
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    if-eqz p1, :cond_0

    .line 1472
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/g;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/k;

    .line 1473
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    const/4 v1, 0x0

    .line 1474
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/k;->b(I)V

    goto :goto_0

    .line 1478
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    if-eqz p1, :cond_1

    .line 1479
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/g;->notifyDataSetChanged()V

    .line 1482
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->aw:Lcom/oplus/camera/ui/modepanel/f;

    iget v0, p0, Lcom/oplus/camera/ui/control/a;->aE:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/f;->a(I)V

    .line 1485
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 1486
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aE()V

    .line 1487
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aF()V

    :cond_3
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1213
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 1214
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public h(ZZ)V
    .locals 0

    .line 1915
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/control/a;->d(ZZ)V

    .line 1916
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/control/a;->e(ZZ)V

    .line 1917
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/control/a;->f(ZZ)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1062
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->d(ZZ)V

    .line 1063
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->e(ZZ)V

    .line 1064
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->f(ZZ)V

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloseFromOtherAppButtonVisibility(), visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1924
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    goto :goto_0

    .line 1926
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1386
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p0, :cond_0

    .line 1387
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public i(ZZ)V
    .locals 6

    .line 2354
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-nez v0, :cond_0

    return-void

    .line 2358
    :cond_0
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result v0

    const-string v1, "pref_support_recording_capture"

    const-string v2, "pref_support_switch_camera"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2361
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 2362
    invoke-interface {v5, v2}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v5

    .line 2361
    invoke-virtual {v4, v3, v5}, Lcom/oplus/camera/ui/control/ShutterButton;->c(ZZ)V

    .line 2363
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 2364
    invoke-interface {v5, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v5

    .line 2363
    invoke-virtual {v4, v3, v5}, Lcom/oplus/camera/ui/control/ShutterButton;->c(ZZ)V

    .line 2367
    :cond_1
    iget v4, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne v4, v3, :cond_5

    const/4 v4, 0x0

    if-nez p1, :cond_4

    if-nez p2, :cond_2

    .line 2369
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2370
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->bu()Z

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->b(ZZ)V

    :cond_2
    if-eqz v0, :cond_3

    .line 2374
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 2376
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 2377
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    .line 2376
    invoke-virtual {p1, v4, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->b(IZ)V

    :cond_4
    :goto_0
    if-nez p2, :cond_5

    .line 2381
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ah()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2382
    invoke-virtual {p0, v4, v3}, Lcom/oplus/camera/ui/control/a;->b(IZ)V

    .line 2384
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bE()V

    :cond_5
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1068
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->n:Z

    .line 1070
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1071
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 3

    .line 1963
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->S:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    .line 1964
    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1909
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    .line 1910
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public j(ZZ)V
    .locals 0

    .line 3300
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aJ()V

    if-eqz p1, :cond_0

    .line 3303
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->H()V

    :cond_0
    if-eqz p2, :cond_1

    .line 3307
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->J()V

    :cond_1
    return-void
.end method

.method public k(I)V
    .locals 2

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchCameraButtonVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    .line 1972
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1931
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    .line 1932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 0

    .line 1136
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a;->j:Z

    return p0
.end method

.method public l(I)V
    .locals 1

    .line 2854
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2855
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2856
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1951
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz p0, :cond_0

    .line 1952
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setForceHide(Z)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 1140
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a;->k:Z

    return p0
.end method

.method public m()V
    .locals 3

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->j:Z

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08064b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1146
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 2916
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const v0, 0x7f08063f

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2917
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 2913
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    const v0, 0x7f080641

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    .line 2914
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public m(Z)V
    .locals 8

    const-string v0, "CameraControlUI"

    const-string v1, "startVideoRecording()"

    .line 2264
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0183

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 2268
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0902e7

    .line 2269
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 2271
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2272
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 2273
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 2274
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    iget v4, p0, Lcom/oplus/camera/ui/control/a;->x:I

    invoke-virtual {v0, v4, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 2275
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 2277
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 2278
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Lcom/oplus/camera/screen/b/a;->a([Landroid/view/View;)V

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    if-nez v0, :cond_1

    .line 2283
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0184

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 2284
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090419

    .line 2285
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 2286
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2287
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 2288
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 2289
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    iget v4, p0, Lcom/oplus/camera/ui/control/a;->x:I

    invoke-virtual {v0, v4, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->a(IZ)V

    .line 2290
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/control/ShutterButton;->setLightBackground(Z)V

    .line 2291
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 2293
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    .line 2294
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Lcom/oplus/camera/screen/b/a;->a([Landroid/view/View;)V

    .line 2298
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_2

    .line 2299
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    iget v5, p0, Lcom/oplus/camera/ui/control/a;->ag:I

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;I)V

    .line 2302
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne v3, v0, :cond_9

    .line 2303
    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/ui/control/a;->f(ZZ)V

    .line 2305
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v4, "pref_support_recording_capture"

    if-eqz v0, :cond_3

    const-string v5, "key_quick_video"

    invoke-interface {v0, v5}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2306
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2307
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->e()V

    .line 2308
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c()V

    goto :goto_0

    .line 2310
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_4

    .line 2311
    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x78

    .line 2312
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/oplus/camera/ui/control/a;->B:Lcom/oplus/camera/ComboPreferences;

    const/16 v6, 0x1e

    .line 2313
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_video_fps_key"

    invoke-virtual {v5, v7, v6}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2312
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2314
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v3, v3}, Lcom/oplus/camera/ui/control/ShutterButton;->b(ZZ)V

    goto :goto_0

    .line 2315
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_5

    const-string v5, "key_short_video"

    invoke-interface {v0, v5}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2316
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->e()V

    .line 2317
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->G:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c()V

    .line 2320
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const/16 v5, 0x8

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2321
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->aI:Landroid/view/animation/Animation$AnimationListener;

    const-wide/16 v6, 0xc8

    invoke-static {v0, v5, v4, v6, v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_2

    .line 2322
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->by()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12c

    .line 2323
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/control/a;->c(II)V

    goto :goto_2

    .line 2325
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    iget-object v6, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v6, :cond_8

    .line 2326
    invoke-interface {v6, v4}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_1

    :cond_8
    move v4, v2

    .line 2325
    :goto_1
    invoke-virtual {v0, v5, v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->b(IZ)V

    .line 2329
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_9

    .line 2330
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ah()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 2331
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->am()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2332
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/ui/control/a;->b(IZ)V

    :cond_9
    if-eqz p1, :cond_a

    .line 2336
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_a

    .line 2339
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2340
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    const v1, 0x7f08024d

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageResource(I)V

    .line 2341
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/a;->h:Z

    .line 2343
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bu()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2344
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v4, "pref_support_switch_camera"

    .line 2345
    invoke-interface {v1, v4}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v1

    .line 2344
    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->b(ZZ)V

    .line 2349
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 2350
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bu()Z

    move-result p0

    if-eqz p0, :cond_b

    move v2, v3

    .line 2349
    :cond_b
    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->c(ZZ)V

    return-void
.end method

.method public n()V
    .locals 4

    const-string v0, "CameraControlUI"

    const-string v1, "onDestroy"

    .line 1151
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a()V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->z:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1159
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->z:Landroid/graphics/Bitmap;

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 1163
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    .line 1164
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->b()V

    .line 1165
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    if-eqz v0, :cond_3

    .line 1169
    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/e;->k()V

    .line 1170
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    .line 1173
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_4

    .line 1174
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a()V

    .line 1175
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    .line 1178
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aJ()V

    .line 1179
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    .line 1180
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 1181
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->M:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 1182
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    .line 1184
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1185
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->aD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1188
    :cond_5
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 1189
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->P:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 1190
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->Q:Lcom/oplus/camera/ui/control/ShutterButton;

    .line 1191
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    .line 1192
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1193
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/a;->g:Z

    .line 1194
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->Y:Landroid/widget/TextView;

    .line 1195
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->Z:Landroid/widget/TextView;

    .line 1196
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->an:Lcom/a/a/f;

    .line 1197
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a;->am:Lcom/a/a/f;

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 3028
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setShutterButtonTime(I)V

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 2763
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->l:Z

    return-void
.end method

.method public o()V
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->c()V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 1

    .line 3043
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "more"

    .line 3045
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3046
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aD()V

    .line 3049
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->aa:Lcom/oplus/camera/ui/control/c;

    if-eqz p0, :cond_1

    .line 3050
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o(Z)V
    .locals 2

    .line 2839
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 2846
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    const/16 p1, 0xc8

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 2849
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2414
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->m:Z

    const-string v1, "CameraControlUI"

    if-eqz v0, :cond_0

    const-string p0, "onClick, Activity is paused, so return!"

    .line 2415
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2420
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x3

    sparse-switch p1, :sswitch_data_0

    const-string p0, "onClick, default"

    .line 2503
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "onClick, video_pause_resume"

    .line 2478
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aK()V

    goto/16 :goto_0

    .line 2492
    :sswitch_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_4

    .line 2493
    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->f()V

    goto/16 :goto_0

    .line 2484
    :sswitch_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->onCameraVideoSnapshotButtonClick()V

    goto/16 :goto_0

    :sswitch_3
    const-string p1, "onClick, thumbnail"

    .line 2423
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p1, :cond_1

    .line 2426
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->U()V

    .line 2427
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->V()V

    .line 2430
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->p()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2431
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->V:Lcom/oplus/camera/ui/control/f;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/control/f;->a(Lcom/oplus/camera/ui/control/e;)V

    goto :goto_0

    .line 2488
    :sswitch_4
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->a(Z)V

    goto :goto_0

    :sswitch_5
    const-string p1, "onClick, done_button"

    .line 2437
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p1, :cond_4

    .line 2440
    iget p0, p0, Lcom/oplus/camera/ui/control/a;->t:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 2441
    invoke-interface {p1}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->a()V

    goto :goto_0

    :cond_2
    if-ne p0, v0, :cond_4

    .line 2443
    invoke-interface {p1}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->c()V

    goto :goto_0

    .line 2499
    :sswitch_6
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->g()V

    goto :goto_0

    :sswitch_7
    const-string p1, "onClick, btn_retake"

    .line 2450
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    iget p1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne p1, v0, :cond_3

    .line 2453
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v0, 0x1

    const-string v1, "button_color_inside_red"

    invoke-direct {p1, v0, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 2457
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_4

    .line 2458
    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->d()V

    goto :goto_0

    .line 2461
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_4

    .line 2462
    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->b()V

    goto :goto_0

    :sswitch_8
    const-string p1, "onClick, btn_play"

    .line 2469
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_4

    .line 2472
    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->e()V

    :cond_4
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008e -> :sswitch_8
        0x7f09008f -> :sswitch_7
        0x7f0900b5 -> :sswitch_6
        0x7f090137 -> :sswitch_5
        0x7f090220 -> :sswitch_4
        0x7f0902cf -> :sswitch_3
        0x7f0902e7 -> :sswitch_2
        0x7f0902ef -> :sswitch_1
        0x7f0903b4 -> :sswitch_3
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method public p()V
    .locals 0

    .line 1207
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->d()V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 3022
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 3023
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setMultiFinger(Z)V

    :cond_0
    return-void
.end method

.method public p(I)Z
    .locals 1

    .line 3056
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 3058
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 3059
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->k(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q(I)V
    .locals 0

    .line 3225
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->i(I)V

    return-void
.end method

.method public q(Z)V
    .locals 2

    .line 3212
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/oplus/camera/ui/control/a;->t:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->ak:Lcom/oplus/camera/ui/widget/e;

    if-eqz v0, :cond_0

    .line 3213
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3214
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public q()Z
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ad:Lcom/oplus/camera/ui/menu/a/e;

    if-eqz p0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->f()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r()Lcom/oplus/camera/ui/control/MainShutterButton;
    .locals 0

    .line 1366
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    return-object p0
.end method

.method public r(Z)V
    .locals 0

    .line 3257
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->X:Lcom/oplus/camera/ui/menu/shareedit/a;

    if-eqz p0, :cond_0

    .line 3258
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public s()Lcom/oplus/camera/ui/control/ThumbImageView;
    .locals 0

    .line 1370
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->T:Lcom/oplus/camera/ui/control/ThumbImageView;

    return-object p0
.end method

.method public s(Z)V
    .locals 3

    .line 3263
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->F:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3264
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0181

    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->E:Landroid/widget/RelativeLayout;

    .line 3265
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09025e

    .line 3266
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/a;->F:Landroid/view/View;

    .line 3267
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->F:Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v2, 0x7f06049a

    .line 3268
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    .line 3267
    invoke-static {v1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->F:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 3272
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 3274
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 3275
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->ax:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->bringToFront()V

    :cond_2
    return-void
.end method

.method public t()Lcom/oplus/camera/ui/control/e;
    .locals 0

    .line 1392
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->U:Lcom/oplus/camera/ui/control/e;

    return-object p0
.end method

.method public t(Z)V
    .locals 0

    .line 3457
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->C:Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    if-eqz p0, :cond_0

    .line 3458
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->a(Z)V

    :cond_0
    return-void
.end method

.method public u()I
    .locals 0

    .line 1396
    iget p0, p0, Lcom/oplus/camera/ui/control/a;->u:I

    return p0
.end method

.method public u(Z)V
    .locals 6

    .line 3471
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3475
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aD()V

    .line 3476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3478
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->af:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f10025a

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 3483
    :cond_1
    new-instance v3, Lcom/oplus/camera/ui/modepanel/k;

    iget-object v4, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/a/c;->e(I)I

    move-result v5

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/a/c;->e(I)I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/a/c;->c(I)I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/oplus/camera/ui/modepanel/k;-><init>(Landroid/app/Activity;II)V

    .line 3484
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a;->A:Landroid/app/Activity;

    const v4, 0x7f060094

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    .line 3485
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3488
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const v2, 0x7f09038e

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 3489
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setTag(ILjava/lang/Object;)V

    .line 3490
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v2, Lcom/oplus/camera/ui/control/-$$Lambda$a$S2Mo8ynTjlng6uE_mEMGJdO1RQI;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$S2Mo8ynTjlng6uE_mEMGJdO1RQI;-><init>(Lcom/oplus/camera/ui/control/a;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3492
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    const v2, 0x7f09038f

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setTag(ILjava/lang/Object;)V

    .line 3495
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->aA:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/widget/AnimationButton;->setClickable(Z)V

    .line 3496
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aH()V

    .line 3497
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a;->au:Lcom/oplus/camera/ui/modepanel/g;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/modepanel/g;->a(Ljava/util/List;)V

    if-eqz p1, :cond_4

    .line 3500
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a;->as:Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v0, Lcom/oplus/camera/ui/control/-$$Lambda$a$EoxHkP74-oxwpLHi1OraVD7vu8E;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/control/-$$Lambda$a$EoxHkP74-oxwpLHi1OraVD7vu8E;-><init>(Lcom/oplus/camera/ui/control/a;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3501
    iput-boolean v3, p0, Lcom/oplus/camera/ui/control/a;->ar:Z

    goto :goto_2

    .line 3503
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/a;->aQ()V

    :goto_2
    return-void
.end method

.method public v()V
    .locals 2

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1679
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setScaleX(F)V

    .line 1680
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setScaleY(F)V

    .line 1681
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->O:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 3898
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a;->s:Z

    return-void
.end method

.method public w()Z
    .locals 0

    .line 1707
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a;->N:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p0, :cond_0

    .line 1708
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->isEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()V
    .locals 1

    .line 1774
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ao:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1775
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/control/a;->c(IZ)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1780
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    if-eqz v0, :cond_1

    .line 1781
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    .line 1783
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->l(I)V

    goto :goto_0

    .line 1785
    :cond_0
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/a;->l(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 1791
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ao:Z

    .line 1792
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/a;->ap:Z

    return-void
.end method

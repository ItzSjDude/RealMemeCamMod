.class public Lcom/oplus/camera/ui/preview/g;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/oplus/camera/d;
.implements Lcom/oplus/camera/ui/preview/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/oplus/camera/ui/preview/h$c;
.implements Lcom/oplus/camera/ui/preview/k$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/g$e;,
        Lcom/oplus/camera/ui/preview/g$d;,
        Lcom/oplus/camera/ui/preview/g$a;,
        Lcom/oplus/camera/ui/preview/g$b;,
        Lcom/oplus/camera/ui/preview/g$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;

.field private static h:Landroid/graphics/Bitmap;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/preview/g$e;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:J

.field private V:F

.field private W:F

.field private X:Landroid/app/Activity;

.field private Y:Lcom/oplus/camera/ComboPreferences;

.field private Z:Lcom/oplus/camera/ui/preview/h;

.field private aA:Landroid/view/Surface;

.field private aB:Landroid/util/Size;

.field private aC:Landroid/util/Size;

.field private aD:I

.field private aE:I

.field private aF:Landroid/util/Size;

.field private aG:Landroid/util/Size;

.field private aH:I

.field private aI:Lcom/oplus/camera/ui/preview/g$a;

.field private aJ:Z

.field private aK:Lcom/oplus/camera/ui/preview/h$d;

.field private aL:Lcom/oplus/camera/gl/GLRootView;

.field private aM:Lcom/oplus/camera/ui/RotableTextView;

.field private aN:Lcom/oplus/camera/ui/t;

.field private aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

.field private aP:Lcom/coui/appcompat/widget/s;

.field private aQ:I

.field private aR:Landroid/widget/ImageView;

.field private aS:Lcom/oplus/camera/ui/widget/a;

.field private aT:Z

.field private aU:Landroid/animation/AnimatorSet;

.field private aV:Landroid/animation/AnimatorSet;

.field private aW:I

.field private aX:Landroid/animation/AnimatorSet;

.field private aY:Landroid/animation/AnimatorSet;

.field private aZ:I

.field private aa:Lcom/coui/appcompat/dialog/app/b;

.field private ab:Lcom/coui/appcompat/dialog/app/b$a;

.field private ac:Lcom/oplus/camera/ui/preview/FaceView;

.field private ad:Lcom/oplus/camera/ui/preview/ac;

.field private ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

.field private af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

.field private ag:Lcom/oplus/camera/ui/preview/z;

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Lcom/oplus/camera/ui/preview/g$b;

.field private al:Lcom/oplus/camera/ui/preview/g$c;

.field private am:Landroid/widget/ImageView;

.field private an:Lcom/oplus/camera/ui/preview/e;

.field private ao:Landroid/widget/ImageView;

.field private ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

.field private aq:Landroid/widget/RelativeLayout$LayoutParams;

.field private ar:Lcom/oplus/camera/ui/preview/p;

.field private as:Lcom/oplus/camera/ui/preview/r;

.field private at:Landroid/widget/ImageView;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Landroid/graphics/Bitmap;

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:Landroid/util/Size;

.field private az:Landroid/graphics/SurfaceTexture;

.field private ba:Landroidx/recyclerview/widget/RecyclerView;

.field private bb:Lcom/oplus/camera/doubleexposure/e$b;

.field private bc:Lcom/oplus/camera/screen/out/e;

.field private bd:Ljava/lang/Thread;

.field private be:Z

.field private bf:Z

.field private bg:Z

.field private bh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/preview/x;",
            ">;"
        }
    .end annotation
.end field

.field private bi:Lcom/oplus/camera/screen/b/a;

.field private bj:Landroid/util/Size;

.field private bk:Ljava/lang/String;

.field private bl:Landroid/util/Size;

.field private bm:I

.field private bn:I

.field private bo:I

.field private bp:I

.field private bq:Ljava/lang/Runnable;

.field private br:Landroid/os/Handler;

.field private final bs:Lcom/oplus/camera/gl/GLView;

.field private bt:Landroid/view/animation/Animation$AnimationListener;

.field private bu:Landroid/view/animation/Animation$AnimationListener;

.field private final bv:Landroid/content/DialogInterface$OnClickListener;

.field private final bw:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

.field private bx:Lcom/oplus/camera/ui/preview/HyperLapseFocusView$a;

.field private i:Landroid/view/animation/PathInterpolator;

.field private volatile j:Z

.field private volatile k:I

.field private l:Landroid/view/animation/PathInterpolator;

.field private m:Landroid/view/animation/PathInterpolator;

.field private n:Landroid/view/animation/PathInterpolator;

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

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

    .line 130
    invoke-static {}, Lcom/oplus/camera/v;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/g;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 141
    sput-object v0, Lcom/oplus/camera/ui/preview/g;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/preview/g$b;)V
    .locals 6

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    .line 145
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->k:I

    .line 147
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->l:Landroid/view/animation/PathInterpolator;

    .line 148
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    .line 149
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3eb33333    # 0.35f

    const v4, 0x3f1eb852    # 0.62f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->n:Landroid/view/animation/PathInterpolator;

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    .line 152
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    .line 153
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->q:Z

    .line 154
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->r:Z

    .line 155
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->s:Z

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->t:Z

    .line 157
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->u:Z

    .line 158
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    .line 159
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->w:Z

    .line 160
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->x:Z

    .line 161
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->y:Z

    .line 162
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->z:Z

    .line 163
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->A:Z

    .line 165
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    .line 166
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    .line 167
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->D:I

    .line 168
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 169
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    .line 170
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    .line 171
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    .line 172
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    .line 173
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 174
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    .line 175
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    .line 176
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->M:I

    .line 177
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->N:I

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    .line 180
    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    .line 181
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->Q:I

    .line 182
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->R:I

    .line 183
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->S:I

    .line 184
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->T:I

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    const/high16 v1, 0x44160000    # 600.0f

    .line 186
    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 190
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    .line 191
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    .line 192
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    .line 193
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    .line 194
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    .line 195
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    .line 196
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    .line 197
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    .line 198
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    const/4 v2, 0x1

    .line 199
    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->ah:I

    .line 200
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    .line 201
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aj:I

    .line 203
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    .line 204
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->al:Lcom/oplus/camera/ui/preview/g$c;

    .line 205
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    .line 206
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    .line 207
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    .line 208
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 209
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aq:Landroid/widget/RelativeLayout$LayoutParams;

    .line 210
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    .line 211
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    .line 212
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    .line 213
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    .line 214
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->av:Landroid/graphics/Bitmap;

    .line 215
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    const-string v3, "off"

    .line 216
    iput-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ax:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ay:Landroid/util/Size;

    .line 218
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    .line 219
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aA:Landroid/view/Surface;

    .line 220
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    .line 221
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aC:Landroid/util/Size;

    .line 222
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    .line 223
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    .line 224
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 225
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 226
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aH:I

    .line 227
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aI:Lcom/oplus/camera/ui/preview/g$a;

    .line 228
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    .line 229
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aK:Lcom/oplus/camera/ui/preview/h$d;

    .line 230
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    .line 231
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    .line 232
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    .line 233
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    .line 234
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    .line 235
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aQ:I

    .line 236
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    .line 237
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    .line 238
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->aT:Z

    .line 239
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    .line 240
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    .line 241
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    .line 242
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aX:Landroid/animation/AnimatorSet;

    .line 243
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aY:Landroid/animation/AnimatorSet;

    .line 244
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aZ:I

    .line 245
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bb:Lcom/oplus/camera/doubleexposure/e$b;

    .line 247
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bc:Lcom/oplus/camera/screen/out/e;

    .line 249
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bd:Ljava/lang/Thread;

    .line 250
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->be:Z

    .line 251
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->bf:Z

    .line 252
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    .line 254
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    .line 255
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    const-string v1, ""

    .line 256
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    .line 257
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bl:Landroid/util/Size;

    .line 258
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bm:I

    .line 259
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bn:I

    .line 260
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bo:I

    .line 261
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bp:I

    .line 264
    new-instance v1, Lcom/oplus/camera/ui/preview/g$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$1;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    .line 296
    new-instance v1, Lcom/oplus/camera/ui/preview/g$11;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$11;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bs:Lcom/oplus/camera/gl/GLView;

    .line 447
    new-instance v1, Lcom/oplus/camera/ui/preview/g$19;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$19;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bt:Landroid/view/animation/Animation$AnimationListener;

    .line 466
    new-instance v1, Lcom/oplus/camera/ui/preview/g$30;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$30;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bu:Landroid/view/animation/Animation$AnimationListener;

    .line 486
    new-instance v1, Lcom/oplus/camera/ui/preview/g$32;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$32;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bv:Landroid/content/DialogInterface$OnClickListener;

    .line 526
    new-instance v1, Lcom/oplus/camera/ui/preview/g$33;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$33;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bw:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

    .line 2312
    new-instance v1, Lcom/oplus/camera/ui/preview/g$10;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$10;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bx:Lcom/oplus/camera/ui/preview/HyperLapseFocusView$a;

    .line 773
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 774
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    .line 775
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    .line 776
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->n:Landroid/view/animation/PathInterpolator;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    .line 778
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 779
    sget-object p3, Lcom/oplus/camera/ui/preview/g;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "oplus.intent.action.CLEAR_MAIN_ACTIVITY"

    .line 780
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 782
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    const-string p1, "com.oplus.size.change.duration"

    .line 783
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    .line 784
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;Lcom/oplus/camera/ui/preview/g;)V

    .line 785
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraPreviewUI, mbCanUseCleanFunction: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mSizeChangeDuration: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPreviewUI"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    return p0
.end method

.method static synthetic B(Lcom/oplus/camera/ui/preview/g;)Ljava/util/ArrayList;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic C(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aK()V

    return-void
.end method

.method public static D()Landroid/graphics/Bitmap;
    .locals 1

    .line 1947
    sget-object v0, Lcom/oplus/camera/ui/preview/g;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic D(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aF()V

    return-void
.end method

.method static synthetic E(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aL()V

    return-void
.end method

.method static synthetic F(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->au()I

    move-result p0

    return p0
.end method

.method static synthetic G(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->av()I

    move-result p0

    return p0
.end method

.method static synthetic H(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aw()I

    move-result p0

    return p0
.end method

.method static synthetic I(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->ax()I

    move-result p0

    return p0
.end method

.method static synthetic J(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->R:I

    return p0
.end method

.method static synthetic K(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->Q:I

    return p0
.end method

.method static synthetic L(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    return p0
.end method

.method static synthetic M(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->k:I

    return p0
.end method

.method static synthetic N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    return-object p0
.end method

.method static synthetic O(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->S:I

    return p0
.end method

.method static synthetic P(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->T:I

    return p0
.end method

.method static synthetic Q(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->bf:Z

    return p0
.end method

.method static synthetic R(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->at()V

    return-void
.end method

.method static synthetic S(Lcom/oplus/camera/ui/preview/g;)Landroid/widget/ImageView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic T(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    return p0
.end method

.method static synthetic U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    return-object p0
.end method

.method static synthetic V(Lcom/oplus/camera/ui/preview/g;)Landroid/view/Surface;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aA:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    return-object p0
.end method

.method static synthetic X(Lcom/oplus/camera/ui/preview/g;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic Y(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    return p0
.end method

.method static synthetic Z(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/FaceView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aA:Landroid/view/Surface;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 2

    .line 1374
    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1375
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    .line 1376
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v1, -0x1000000

    .line 1377
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1379
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/ui/t;)Lcom/oplus/camera/ui/t;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    return-object p1
.end method

.method private a(IIZZZ)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    .line 2713
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 2714
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->r(Z)V

    return-void

    .line 2719
    :cond_1
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter p4

    .line 2720
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ay:Landroid/util/Size;

    if-nez v1, :cond_2

    .line 2721
    monitor-exit p4

    return-void

    .line 2724
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->f()I

    move-result v1

    .line 2725
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/h;->g()I

    move-result v2

    .line 2728
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/g$b;->eb()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2731
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 2732
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    float-to-double v3, v3

    const-wide v5, 0x4002aaaaaaaaaaabL    # 2.3333333333333335

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->aH:I

    goto :goto_0

    .line 2734
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 2735
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->aH:I

    .line 2738
    :goto_0
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->aH:I

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 2739
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 2740
    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->aH:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    .line 2741
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    div-int/2addr p1, v2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2743
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 2744
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2747
    :cond_4
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 2748
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    .line 2751
    :cond_5
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p2

    if-eq p1, p2, :cond_7

    if-nez p3, :cond_6

    .line 2753
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    goto :goto_1

    .line 2755
    :cond_6
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2759
    :cond_7
    :goto_1
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->r(Z)V

    .line 2761
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->cp()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->dY()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 2774
    :cond_8
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2776
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->ah:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    .line 2777
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    int-to-double p1, p1

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    mul-double/2addr p1, v3

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 2779
    invoke-static {}, Lcom/oplus/camera/util/Util;->W()Z

    move-result p1

    if-nez p1, :cond_9

    .line 2780
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->R()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->S()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 2783
    :cond_9
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    if-eqz p1, :cond_a

    .line 2784
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    .line 2785
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->i(I)V

    .line 2789
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    if-eqz p1, :cond_e

    .line 2790
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    if-le p1, v2, :cond_e

    .line 2793
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2794
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    goto :goto_4

    .line 2764
    :cond_b
    :goto_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    if-eqz p1, :cond_c

    .line 2765
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    goto :goto_3

    .line 2767
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ay:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ay:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    :goto_3
    if-nez p5, :cond_d

    .line 2770
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/g$b;->dY()Z

    move-result p2

    if-nez p2, :cond_e

    .line 2771
    :cond_d
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->i(I)V

    .line 2798
    :cond_e
    :goto_4
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2800
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 2801
    :try_start_1
    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    const/4 p3, 0x1

    if-eqz p2, :cond_f

    .line 2802
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/g;->w:Z

    .line 2803
    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    iget p4, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    div-int/2addr p4, v2

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->D:I

    .line 2806
    :cond_f
    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    iget p4, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    if-eq p2, p4, :cond_10

    .line 2807
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/g;->x:Z

    .line 2808
    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    .line 2809
    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    iget p3, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    .line 2812
    :cond_10
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz p2, :cond_11

    .line 2813
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/MultiFocusView;->g()V

    :cond_11
    const-string p2, "CameraPreviewUI"

    .line 2816
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "layoutPreview, leftMargin: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", topMargin: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", width: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", height: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2798
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 3444
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3448
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/x;

    if-eqz v1, :cond_1

    .line 3450
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    invoke-interface {v1, p1, v2}, Lcom/oplus/camera/ui/preview/x;->a(Lcom/oplus/camera/gl/h;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aC()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;IIZZZ)V
    .locals 0

    .line 109
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/preview/g;->a(IIZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;Landroid/util/Size;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->c(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/gl/h;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/gl/h;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/preview/x;)V
    .locals 1

    .line 3438
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3439
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(ZLcom/oplus/camera/ui/preview/a/t;)V
    .locals 2

    .line 1633
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-nez v0, :cond_0

    .line 1634
    new-instance v0, Lcom/oplus/camera/ui/preview/h;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p1}, Lcom/oplus/camera/ui/preview/h;-><init>(Landroid/content/Context;Lcom/oplus/camera/ui/preview/h$c;Z)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    .line 1635
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aK:Lcom/oplus/camera/ui/preview/h$d;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h$d;)V

    .line 1636
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/h;->c(I)V

    .line 1637
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1638
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    new-instance p2, Lcom/oplus/camera/ui/preview/g$5;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/g$5;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h$b;)V

    .line 1666
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/GLRootView;)V

    return-void
.end method

.method private synthetic a([Ljava/lang/Object;)V
    .locals 2

    .line 641
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080257

    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 641
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/g;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->t:Z

    return p1
.end method

.method private aA()V
    .locals 4

    .line 2376
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2378
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2379
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->aQ:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->R()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2380
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2381
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private aB()V
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    if-eqz v0, :cond_0

    .line 2436
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/s;->dismiss()V

    const/4 v0, 0x0

    .line 2437
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    :cond_0
    return-void
.end method

.method private aC()V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "notifyPreviewImageAnimOnStart"

    .line 2876
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aI:Lcom/oplus/camera/ui/preview/g$a;

    if-eqz v0, :cond_0

    .line 2879
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/g$a;->a(Landroid/util/Size;)V

    .line 2882
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz p0, :cond_1

    .line 2883
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_1
    return-void
.end method

.method private aD()V
    .locals 2

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewImageAnimOnMiddle, mbCancleBlurAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aI:Lcom/oplus/camera/ui/preview/g$a;

    if-eqz v0, :cond_0

    .line 2891
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aC:Landroid/util/Size;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/ui/preview/g$a;->a(Landroid/util/Size;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method private aE()J
    .locals 3

    .line 3051
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3052
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 3053
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private aF()V
    .locals 4

    const-string v0, "CameraPreviewUI"

    const-string v1, "stopScreenModeChangeAnimation"

    .line 3057
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/gl/GLRootView;->setRenderMode(I)V

    .line 3061
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3065
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    new-instance v3, Lcom/oplus/camera/ui/preview/g$20;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/preview/g$20;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3076
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    .line 3077
    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 3078
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->n:Landroid/view/animation/PathInterpolator;

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x1

    .line 3079
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->z:Z

    .line 3081
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 3082
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    .line 3083
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 3084
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    .line 3085
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 3086
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    .line 3087
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bl:Landroid/util/Size;

    .line 3089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopScreenModeChangeAnimation, mToScreenMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mToPreviewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$21;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$21;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private aG()V
    .locals 7

    .line 3107
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3108
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    .line 3109
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    const/4 v1, 0x1

    .line 3111
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    .line 3112
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    .line 3113
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    const/4 v2, 0x0

    .line 3114
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->w:Z

    .line 3115
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->x:Z

    .line 3116
    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    .line 3117
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3118
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 3119
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->n:Landroid/view/animation/PathInterpolator;

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    .line 3121
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3124
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    .line 3125
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    .line 3126
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 3127
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    .line 3128
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    .line 3129
    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    .line 3130
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    .line 3131
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    .line 3132
    new-instance v4, Landroid/util/Size;

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3133
    new-instance v4, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 3135
    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3136
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x43fa0000    # 500.0f

    .line 3137
    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 3138
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    .line 3139
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    .line 3140
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    :cond_0
    const-string v1, "CameraPreviewUI"

    .line 3143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initValue, mDiffWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDiffHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTranslateX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTranslateY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", displaySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mLastScreenModeName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentScreenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 3150
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    float-to-long v4, p0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oplus/camera/ui/a;->a(JJ)V

    .line 3152
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private aH()Lcom/oplus/camera/ui/preview/g$e;
    .locals 2

    .line 3188
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3189
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3190
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/g$e;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3193
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private aI()Lcom/oplus/camera/ui/preview/g$e;
    .locals 3

    .line 3198
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3200
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3201
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/g$e;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3204
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private aJ()V
    .locals 4

    .line 3631
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070494

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    .line 3632
    new-instance v0, Lcom/oplus/camera/ui/widget/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/g$b;->aX()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/widget/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    .line 3633
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/a;->setId(I)V

    .line 3634
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->d()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 3635
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/a;->setClipChildren(Z)V

    .line 3636
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/a;->setClipToOutline(Z)V

    .line 3637
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3638
    new-instance v0, Lcom/oplus/camera/ui/preview/g$27;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/g$27;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    .line 3653
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ui/widget/a;->a(IZ)V

    .line 3654
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const v2, 0x7f09041d

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3655
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const v2, 0x7f090422

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3656
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const v2, 0x7f090423

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3657
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    new-instance v1, Lcom/oplus/camera/ui/preview/-$$Lambda$g$pP_s_NNnin5PO1bxO11P5IVfFV4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$g$pP_s_NNnin5PO1bxO11P5IVfFV4;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/a;->setOnTypeChangeListener(Lcom/oplus/camera/ui/widget/a$a;)V

    .line 3662
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    return-void
.end method

.method private aK()V
    .locals 7

    .line 3894
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3895
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    .line 3896
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    div-float v2, v1, v2

    .line 3897
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    .line 3899
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3900
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 3901
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    goto :goto_0

    .line 3903
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    .line 3904
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    .line 3908
    :cond_1
    :goto_0
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    if-eqz v3, :cond_3

    .line 3909
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 3910
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    goto :goto_1

    .line 3912
    :cond_2
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    .line 3913
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    const-string v3, "CameraPreviewUI"

    .line 3915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcScreenModeChangeAnimOffset, translate x end, mOffsetX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    :cond_3
    :goto_1
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    if-eqz v3, :cond_5

    .line 3920
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    .line 3921
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    goto :goto_2

    .line 3923
    :cond_4
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 3924
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    const-string v3, "CameraPreviewUI"

    .line 3926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcScreenModeChangeAnimOffset, translate y end, mOffsetY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    :cond_5
    :goto_2
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    if-eqz v3, :cond_7

    .line 3931
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6

    .line 3932
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    goto :goto_3

    .line 3934
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 3935
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    .line 3938
    :cond_7
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private aL()V
    .locals 8

    .line 3946
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-nez v0, :cond_0

    return-void

    .line 3950
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->bm:I

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->au()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->bn:I

    .line 3951
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->av()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->bo:I

    .line 3952
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aw()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->bp:I

    .line 3953
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->ax()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3954
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->au()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bm:I

    .line 3955
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->av()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bn:I

    .line 3956
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aw()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bo:I

    .line 3957
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->ax()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->bp:I

    .line 3958
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->bm:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->bn:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->bo:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->bp:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/g$b;->a(IIII)V

    .line 3961
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    .line 3962
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 3963
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object v2

    .line 3965
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 3969
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v3

    .line 3970
    :try_start_0
    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/g;->A:Z

    if-eqz v4, :cond_4

    .line 3971
    monitor-exit v3

    return-void

    .line 3974
    :cond_4
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->bl:Landroid/util/Size;

    invoke-virtual {v4, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    if-nez v4, :cond_5

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    if-nez v4, :cond_5

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    if-nez v4, :cond_5

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    .line 3981
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3982
    :cond_5
    monitor-exit v3

    return-void

    .line 3986
    :cond_6
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object v4

    const-string v5, "CameraPreviewUI"

    .line 3988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPreviewRegion, screenModeName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mLastScreenModeName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", previewSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", previewRect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-nez v5, :cond_7

    .line 3992
    monitor-exit v3

    return-void

    .line 3996
    :cond_7
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    if-ne v5, v6, :cond_9

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    if-ne v5, v6, :cond_9

    .line 3998
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    if-ne v5, v6, :cond_9

    .line 3999
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    if-eq v5, v6, :cond_8

    goto :goto_0

    .line 4015
    :cond_8
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    if-nez v0, :cond_c

    .line 4016
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    .line 4017
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bl:Landroid/util/Size;

    goto :goto_2

    .line 4000
    :cond_9
    :goto_0
    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    if-nez v5, :cond_a

    goto :goto_1

    .line 4011
    :cond_a
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    if-nez v1, :cond_c

    .line 4012
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/screen/b/a;Landroid/util/Size;)V

    goto :goto_2

    .line 4001
    :cond_b
    :goto_1
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    .line 4002
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 4003
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    .line 4004
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 4005
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bk:Ljava/lang/String;

    .line 4006
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->bl:Landroid/util/Size;

    const-string v0, "CameraPreviewUI"

    .line 4008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreviewRegion, mOffsetX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOffsetY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    :cond_c
    :goto_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    :goto_3
    return-void
.end method

.method static synthetic aa(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/MultiFocusView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    return-object p0
.end method

.method static synthetic ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method static synthetic ac(Lcom/oplus/camera/ui/preview/g;)Lcom/coui/appcompat/dialog/app/b;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    return-object p0
.end method

.method static synthetic ad(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    return p0
.end method

.method static synthetic ae(Lcom/oplus/camera/ui/preview/g;)J
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aE()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic af(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    return-object p0
.end method

.method static synthetic aq()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/oplus/camera/ui/preview/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method private ar()V
    .locals 3

    .line 1071
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Lcom/oplus/camera/ui/preview/r;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    .line 1073
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/r;->setForceDarkAllowed(Z)V

    .line 1074
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/r;->setVisibility(I)V

    .line 1076
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1077
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v1, v2, p0, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private as()V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    if-nez v0, :cond_0

    const-string v0, "initGradienterAssistView"

    .line 1097
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1099
    new-instance v1, Lcom/oplus/camera/ui/preview/p;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oplus/camera/ui/preview/p;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    .line 1100
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/p;->setForceDarkAllowed(Z)V

    .line 1101
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/p;->setVisibility(I)V

    .line 1102
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    new-instance v2, Lcom/oplus/camera/ui/preview/g$36;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/g$36;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/p;->setOnAdjustedListener(Lcom/oplus/camera/ui/preview/p$b;)V

    .line 1111
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1112
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    invoke-virtual {v2, p0, v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private at()V
    .locals 3

    .line 2043
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xa

    .line 2044
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2045
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bu:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2047
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 2048
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/g;->b(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    .line 2051
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 2052
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->bf:Z

    return-void
.end method

.method private au()I
    .locals 1

    .line 2148
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2149
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private av()I
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2155
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private aw()I
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2161
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ax()I
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2167
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ay()Z
    .locals 1

    .line 2180
    monitor-enter p0

    .line 2181
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->r:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 2182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private az()V
    .locals 3

    .line 2365
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    if-nez v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c017c

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 2367
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901da

    .line 2368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    .line 2369
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bx:Lcom/oplus/camera/ui/preview/HyperLapseFocusView$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->a(Lcom/oplus/camera/ui/preview/HyperLapseFocusView$a;)V

    .line 2370
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aQ:I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    return p1
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 2

    .line 1904
    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1905
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    .line 1906
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1907
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private b(IIII)V
    .locals 2

    .line 1747
    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    move v1, p4

    move p4, p3

    move p3, v1

    :cond_0
    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    .line 1754
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {p0, p3, p4}, Lcom/oplus/camera/ui/preview/h;->a(II)V

    :cond_2
    return-void
.end method

.method private b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .line 2479
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2480
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_1

    .line 2485
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 2488
    :cond_1
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v2, 0x7f110150

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    .line 2489
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 2490
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$12;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$12;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 2501
    sget v0, Lcom/oplus/camera/Storage;->w:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 2504
    :cond_2
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v2, :cond_3

    .line 2505
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->S()V

    .line 2508
    :cond_3
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-eq v0, v5, :cond_4

    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v1, :cond_9

    .line 2510
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 2516
    :cond_5
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-eq v0, v5, :cond_6

    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-eq v0, v1, :cond_6

    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v2, :cond_7

    .line 2519
    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 2522
    :cond_7
    sget p1, Lcom/oplus/camera/Storage;->v:I

    if-eq p1, v4, :cond_8

    sget p1, Lcom/oplus/camera/Storage;->v:I

    if-ne p1, v3, :cond_9

    .line 2524
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->R()V

    .line 2533
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    .line 2534
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_a
    return-void
.end method

.method private b(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 3456
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3460
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/x;

    if-eqz v1, :cond_1

    .line 3462
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    invoke-interface {v1, p1, v2}, Lcom/oplus/camera/ui/preview/x;->b(Lcom/oplus/camera/gl/h;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aD()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/gl/h;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->b(Lcom/oplus/camera/gl/h;)V

    return-void
.end method

.method private synthetic b([Ljava/lang/Object;)V
    .locals 2

    .line 636
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080258

    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 636
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/g;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1943
    sput-object p0, Lcom/oplus/camera/ui/preview/g;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method private c(Landroid/util/Size;)V
    .locals 12

    .line 1764
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-nez v0, :cond_0

    goto/16 :goto_11

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 1772
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->g()I

    move-result p1

    .line 1773
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->f()I

    move-result v0

    .line 1774
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p1, v0}, Landroid/util/Size;-><init>(II)V

    .line 1776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "layoutPreviewFrameToPreviewSize, previewSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraPreviewUI"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    .line 1779
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    const-string v4, "pref_video_eis"

    .line 1780
    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/preview/g$b;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1779
    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/preview/h;->c(Z)V

    .line 1783
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    if-eqz v0, :cond_1f

    .line 1784
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/g$b;->e(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    goto/16 :goto_e

    .line 1788
    :cond_4
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    .line 1789
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    .line 1790
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->cp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1791
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-direct {v0, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1792
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v3

    add-int/2addr p1, v3

    :goto_1
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1793
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    .line 1794
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v3

    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr p1, v3

    :goto_2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_e

    .line 1796
    :cond_7
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v4, v6

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    .line 1798
    :goto_3
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v0, :cond_14

    .line 1802
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v8, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v0, v8, v6

    if-gez v0, :cond_d

    .line 1804
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1805
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 1807
    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_9

    .line 1808
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1809
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 1816
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    goto :goto_4

    :cond_a
    move v5, p1

    :goto_4
    if-eqz v3, :cond_b

    .line 1820
    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result p1

    int-to-float p1, p1

    int-to-float v6, v3

    div-float/2addr p1, v6

    :cond_b
    cmpl-float p1, v5, p1

    if-eqz p1, :cond_c

    .line 1824
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, p1

    goto :goto_5

    :cond_c
    move-object v0, v4

    :goto_5
    const/16 p1, 0xa

    .line 1828
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1829
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_e

    .line 1831
    :cond_d
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v0

    .line 1832
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/g$b;->bg()Ljava/lang/String;

    move-result-object v3

    .line 1835
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v5}, Lcom/oplus/camera/ui/preview/g$b;->dY()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    .line 1836
    invoke-interface {v5}, Lcom/oplus/camera/ui/preview/g$b;->cp()Z

    move-result v5

    if-eqz v5, :cond_e

    if-ne v1, v0, :cond_12

    .line 1838
    :cond_e
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1839
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1841
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1842
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v2

    goto :goto_6

    .line 1843
    :cond_f
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    move-result v3

    sub-int/2addr p1, v3

    :goto_6
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1846
    :cond_10
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_11

    move p1, v2

    goto :goto_7

    .line 1847
    :cond_11
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr p1, v3

    float-to-int p1, p1

    :goto_7
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_d

    :cond_12
    const-string p1, "xpan"

    .line 1848
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 1849
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->dX()Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_13
    const p1, 0x3e051eb8    # 0.13f

    .line 1851
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1852
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1853
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1854
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 1858
    :cond_14
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1859
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float v3, p1

    int-to-float v5, v0

    div-float/2addr v3, v5

    int-to-double v5, v0

    int-to-double v7, p1

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_15

    move p1, v1

    goto :goto_8

    :cond_15
    move p1, v2

    :goto_8
    if-eqz p1, :cond_18

    .line 1864
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_16

    move p1, v2

    goto :goto_9

    .line 1865
    :cond_16
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v0

    add-int/2addr p1, v0

    :goto_9
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1866
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_17

    move p1, v2

    goto :goto_a

    .line 1867
    :cond_17
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    add-int/2addr p1, v0

    :goto_a
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_d

    .line 1869
    :cond_18
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_19

    move p1, v2

    goto :goto_b

    :cond_19
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    :goto_b
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1870
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_c

    .line 1871
    :cond_1a
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    :goto_c
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_1b
    :goto_d
    move-object v0, v4

    .line 1876
    :goto_e
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->al:Lcom/oplus/camera/ui/preview/g$c;

    if-eqz p1, :cond_1c

    .line 1877
    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/g$c;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1880
    :cond_1c
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aq:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1881
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aq:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layoutPreviewFrameToPreviewSize, params.width: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params.height: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params.leftMargin"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params.topMargin: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params.rightMargin: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params.bottomMargin: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraPreviewUI"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz p1, :cond_1d

    .line 1889
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 1892
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1896
    :cond_1d
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 1897
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 1898
    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v4

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    if-nez p0, :cond_1e

    goto :goto_f

    :cond_1e
    move v1, v2

    .line 1897
    :goto_f
    invoke-interface {v0, v3, v4, v1}, Lcom/oplus/camera/ui/preview/g$b;->a(IIZ)V

    .line 1899
    monitor-exit p1

    goto :goto_10

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1f
    :goto_10
    return-void

    :cond_20
    :goto_11
    const-string p0, "CameraPreviewUI"

    const-string p1, "layoutPreviewFrameToPreviewSize, mActivity is null"

    .line 1765
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(II)Z
    .locals 8

    .line 2103
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2107
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decideSizeChangeFlag, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mToDisplaySize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", tempDiffWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraPreviewUI"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p1, p2}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2115
    new-instance v4, Landroid/util/Size;

    add-int v5, p2, v0

    invoke-direct {v4, p1, v5}, Landroid/util/Size;-><init>(II)V

    .line 2116
    new-instance v5, Landroid/util/Size;

    add-int/2addr v0, p1

    invoke-direct {v5, v0, p2}, Landroid/util/Size;-><init>(II)V

    .line 2118
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v2, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2119
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/preview/g;->d(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 2120
    invoke-virtual {v4, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2121
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/preview/g;->d(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 2122
    invoke-virtual {v5, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2123
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/preview/g;->d(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    return v3

    .line 2127
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v2, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/preview/g;->d(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    if-ne v0, p2, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    if-ne v0, p1, :cond_4

    return v3

    :cond_4
    int-to-double v4, p1

    int-to-double p1, p2

    div-double/2addr v4, p1

    .line 2134
    new-instance p1, Landroid/util/Size;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-double v6, p2

    mul-double/2addr v4, v6

    double-to-int p2, v4

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    .line 2136
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p1, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->d(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v3

    :cond_7
    :goto_1
    return v1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/g;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->D:I

    return p1
.end method

.method private d(Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    .line 2144
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    return-object p0
.end method

.method private d(II)V
    .locals 3

    .line 3156
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3157
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3158
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$e;

    invoke-direct {v1, p1, p2}, Lcom/oplus/camera/ui/preview/g$e;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3160
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/g$e;

    .line 3162
    iget v2, v1, Lcom/oplus/camera/ui/preview/g$e;->a:I

    iget v1, v1, Lcom/oplus/camera/ui/preview/g$e;->b:I

    add-int/2addr v2, v1

    add-int v1, p1, p2

    if-eq v2, v1, :cond_1

    .line 3163
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$e;

    invoke-direct {v1, p1, p2}, Lcom/oplus/camera/ui/preview/g$e;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/g;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->q:Z

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/gl/GLRootView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    return p1
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->ay()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    return p1
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->y:Z

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->M:I

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/g;I)I
    .locals 0

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    return p1
.end method

.method private i(I)V
    .locals 5

    .line 2824
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->bg()Ljava/lang/String;

    move-result-object v0

    .line 2825
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/g$b;->bh()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xpan"

    .line 2828
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2829
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/g$b;->dX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2830
    :cond_0
    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    :cond_1
    if-eqz p1, :cond_7

    const/4 v1, 0x1

    const/4 v4, 0x2

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_3

    .line 2859
    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2860
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 2863
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2864
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->dX()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2865
    :cond_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f5eb852    # 0.87f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    .line 2866
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    .line 2867
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v4

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2868
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v4

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    goto :goto_0

    .line 2839
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    goto :goto_0

    .line 2843
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->W()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2844
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2846
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2847
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    div-int/2addr p1, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    goto :goto_0

    .line 2849
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2850
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    div-int/2addr p1, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    goto :goto_0

    .line 2852
    :cond_6
    iput v3, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    .line 2853
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    goto :goto_0

    .line 2835
    :cond_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/ui/preview/g;)Ljava/lang/Object;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic j(I)V
    .locals 0

    .line 3658
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz p0, :cond_0

    .line 3659
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/g$b;->S(I)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    return p0
.end method

.method public static synthetic lambda$-V6uhbD6ly6pAzZuILJirpjfjJ4(Lcom/oplus/camera/ui/preview/g;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$EE_V6jMNVm49mHfVqRz0rXxybGU(Lcom/oplus/camera/ui/preview/g;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$pP_s_NNnin5PO1bxO11P5IVfFV4(Lcom/oplus/camera/ui/preview/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->j(I)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/preview/g;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    return-wide v0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/preview/g;)F
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    return p0
.end method

.method static synthetic o(Lcom/oplus/camera/ui/preview/g;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    return p0
.end method

.method static synthetic r(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    return-object p0
.end method

.method private r(Z)V
    .locals 3

    .line 2172
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraPreviewUI"

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSizeChanged, sizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->r:Z

    .line 2176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic s(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->w:Z

    return p0
.end method

.method static synthetic t(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->D:I

    return p0
.end method

.method static synthetic u(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    return p0
.end method

.method static synthetic v(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$e;
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aH()Lcom/oplus/camera/ui/preview/g$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$e;
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aI()Lcom/oplus/camera/ui/preview/g$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcom/oplus/camera/ui/preview/g;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    return p0
.end method

.method static synthetic y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic z(Lcom/oplus/camera/ui/preview/g;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->x:Z

    return p0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->b()V

    const/4 v0, 0x1

    .line 1606
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/g;->g(Z)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 0

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz p0, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->b()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    .line 1759
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object v0

    .line 1760
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->c(Landroid/util/Size;)V

    return-void
.end method

.method public E()V
    .locals 13

    .line 1951
    invoke-static {}, Lcom/oplus/camera/ui/preview/g;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "coverBlurView"

    .line 1954
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1956
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1957
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    .line 1958
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1959
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1962
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverBlurView, mBlurCover: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraPreviewUI"

    invoke-static {v4, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1965
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1967
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    const/16 v4, 0x5a

    if-eq v4, v2, :cond_1

    .line 1968
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    sub-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 1970
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1973
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1974
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->setClipChildren(Z)V

    .line 1976
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v5, -0x1

    if-gez v2, :cond_2

    .line 1977
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1978
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1981
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v6, v10

    .line 1983
    sget-boolean v0, Lcom/oplus/camera/util/c;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    if-nez v0, :cond_6

    cmpl-double v0, v8, v6

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    const-wide v10, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz v0, :cond_3

    cmpl-double v2, v10, v6

    if-eqz v2, :cond_3

    cmpl-double v2, v8, v6

    if-nez v2, :cond_6

    .line 1988
    :cond_3
    new-instance v2, Lcom/oplus/camera/ui/preview/e;

    iget-object v12, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v2, v12}, Lcom/oplus/camera/ui/preview/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    if-nez v0, :cond_4

    .line 1991
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/e;->a(II)V

    goto :goto_1

    :cond_4
    cmpl-double v0, v10, v6

    if-nez v0, :cond_5

    .line 1993
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v6, v10

    double-to-int v2, v6

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/e;->a(II)V

    goto :goto_1

    .line 1995
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v2, v6

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/e;->a(II)V

    .line 1998
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    const/high16 v2, -0x1000000

    invoke-static {v2}, Lcom/oplus/camera/util/c;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/e;->setDrawColor(I)V

    .line 1999
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2000
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v4

    .line 2001
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    invoke-virtual {v3, p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2004
    :cond_6
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public F()V
    .locals 3

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideBlurView, mBlurCover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const-string v0, "CameraStartupPerformance.hideBlurView"

    .line 2012
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 2014
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    if-eqz v1, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    .line 2016
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->setClipChildren(Z)V

    .line 2019
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    if-eqz v1, :cond_1

    .line 2020
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 2021
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->an:Lcom/oplus/camera/ui/preview/e;

    .line 2024
    :cond_1
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public G()Landroid/widget/ImageView;
    .locals 0

    .line 2029
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    return-object p0
.end method

.method public H()F
    .locals 1

    .line 2035
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2036
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 2037
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public I()V
    .locals 5

    .line 2056
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2057
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->bf:Z

    .line 2059
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 2060
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/g;->b(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    .line 2063
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2064
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2065
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2066
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2067
    new-instance v1, Lcom/oplus/camera/ui/preview/g$d;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$d;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x32

    .line 2068
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2069
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bt:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2070
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2071
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2072
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public J()Landroid/graphics/Rect;
    .locals 6

    .line 2186
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2187
    :try_start_0
    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    .line 2188
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 2189
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    iget p0, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    add-int/2addr v5, p0

    add-int/2addr v2, v1

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    .line 2190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public K()V
    .locals 2

    .line 2232
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2233
    new-instance v1, Lcom/oplus/camera/ui/preview/g$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$7;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 2

    .line 2248
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->u:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2249
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->setVisibility(I)V

    .line 2250
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->d()V

    const/4 v0, 0x1

    .line 2251
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->u:Z

    :cond_0
    return-void
.end method

.method public M()V
    .locals 2

    .line 2256
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2257
    new-instance v1, Lcom/oplus/camera/ui/preview/g$8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$8;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 2

    .line 2270
    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aj:I

    .line 2272
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz v0, :cond_1

    .line 2273
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "full90"

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10e

    .line 2276
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aj:I

    goto :goto_0

    :cond_0
    const-string v1, "full270"

    if-ne v1, v0, :cond_1

    const/16 v0, 0x5a

    .line 2278
    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aj:I

    :cond_1
    :goto_0
    return-void
.end method

.method public O()Lcom/oplus/camera/gl/GLRootView;
    .locals 0

    .line 2294
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    return-object p0
.end method

.method public P()Ljava/lang/String;
    .locals 4

    .line 2450
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 2451
    new-array v2, v1, [I

    .line 2452
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 2453
    aget v0, v2, v0

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    const/4 v3, 0x1

    .line 2454
    aget v2, v2, v3

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public Q()V
    .locals 2

    .line 2462
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->cancel()V

    .line 2464
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    .line 2465
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bv:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 2467
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    .line 2470
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2471
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/s;->dismiss()V

    .line 2472
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    goto :goto_1

    .line 2474
    :cond_1
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aP:Lcom/coui/appcompat/widget/s;

    :goto_1
    return-void
.end method

.method public R()V
    .locals 6

    .line 2540
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    const v2, 0x7f0300a1

    const v3, 0x7f0300a2

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2545
    sget v1, Lcom/oplus/camera/Storage;->v:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 2554
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    if-eqz v1, :cond_2

    const v1, 0x7f03009f

    goto :goto_1

    :cond_2
    const v1, 0x7f0300a0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2547
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    .line 2565
    :goto_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    new-instance v2, Lcom/oplus/camera/ui/preview/g$13;

    invoke-direct {v2, p0, v5}, Lcom/oplus/camera/ui/preview/g$13;-><init>(Lcom/oplus/camera/ui/preview/g;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    return-void
.end method

.method public S()V
    .locals 2

    .line 2640
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$15;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$15;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    const p0, 0x7f1000f1

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    return-void
.end method

.method public T()V
    .locals 8

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStorageHint(), storage_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/Storage;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Storage.sStorageOverrideState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/Storage;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    sget v0, Lcom/oplus/camera/Storage;->w:I

    if-eqz v0, :cond_a

    const v1, 0x7f100415

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const v6, 0x7f100408

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 2665
    :cond_0
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v3, :cond_1

    .line 2666
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v1, 0x7f100412

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    goto :goto_0

    .line 2667
    :cond_1
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v7, :cond_2

    .line 2668
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    goto :goto_0

    .line 2669
    :cond_2
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v2, :cond_3

    .line 2670
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    .line 2673
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bv:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 2677
    :cond_4
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v7, :cond_5

    .line 2678
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    goto :goto_1

    .line 2679
    :cond_5
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v5, :cond_6

    .line 2680
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v1, 0x7f100416

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    goto :goto_1

    .line 2681
    :cond_6
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v4, :cond_7

    .line 2682
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v1, 0x7f100414

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    goto :goto_1

    .line 2683
    :cond_7
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v2, :cond_8

    .line 2684
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    goto :goto_1

    .line 2685
    :cond_8
    sget v0, Lcom/oplus/camera/Storage;->v:I

    if-ne v0, v3, :cond_9

    .line 2686
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aw:Ljava/lang/String;

    .line 2689
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bv:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 2693
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    if-eqz p0, :cond_b

    .line 2694
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->cancel()V

    :cond_b
    :goto_2
    return-void
.end method

.method public U()V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "cancelBlurAnimation"

    .line 2896
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2898
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->s:Z

    .line 2900
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2901
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2902
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 2

    .line 2907
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2908
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->v:Z

    .line 2909
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public W()V
    .locals 2

    .line 2913
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aC:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aI:Lcom/oplus/camera/ui/preview/g$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->s:Z

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "CameraPreviewUI"

    const-string v0, "notifyPreviewImageAnimationOnMiddle cancel animation"

    .line 2915
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2920
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2921
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public X()Z
    .locals 1

    .line 3101
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3102
    :try_start_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Y()I
    .locals 3

    .line 3213
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3216
    :try_start_0
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    if-lez v2, :cond_0

    .line 3218
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aI()Lcom/oplus/camera/ui/preview/g$e;

    move-result-object v1

    goto :goto_0

    .line 3219
    :cond_0
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    if-gez v2, :cond_1

    .line 3221
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aH()Lcom/oplus/camera/ui/preview/g$e;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 3225
    iget p0, v1, Lcom/oplus/camera/ui/preview/g$e;->a:I

    iget v1, v1, Lcom/oplus/camera/ui/preview/g$e;->b:I

    add-int/2addr p0, v1

    monitor-exit v0

    return p0

    :cond_2
    const/4 p0, -0x1

    .line 3227
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3229
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Z()V
    .locals 1

    .line 3302
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 3303
    invoke-virtual {v0}, Lcom/oplus/camera/gl/GLRootView;->a()V

    .line 3306
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz p0, :cond_1

    .line 3307
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->cr()V

    :cond_1
    return-void
.end method

.method public a()V
    .locals 1

    .line 562
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/z;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 1552
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setEISScale(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 625
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->N:I

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 632
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    if-ne v2, p1, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    new-instance p1, Lcom/oplus/camera/ui/preview/-$$Lambda$g$-V6uhbD6ly6pAzZuILJirpjfjJ4;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$g$-V6uhbD6ly6pAzZuILJirpjfjJ4;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, p1}, Lcom/oplus/camera/screen/b/a;->d(Lcom/oplus/camera/screen/b/o$a;)V

    goto :goto_1

    .line 635
    :cond_2
    :goto_0
    new-instance p1, Lcom/oplus/camera/ui/preview/-$$Lambda$g$EE_V6jMNVm49mHfVqRz0rXxybGU;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$g$EE_V6jMNVm49mHfVqRz0rXxybGU;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, p1}, Lcom/oplus/camera/screen/b/a;->d(Lcom/oplus/camera/screen/b/o$a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 792
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->Q:I

    .line 793
    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->R:I

    return-void
.end method

.method public a(IIII)V
    .locals 4

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2081
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    xor-int/2addr v2, v1

    invoke-interface {v0, p1, p2, v2}, Lcom/oplus/camera/ui/preview/g$b;->a(IIZ)V

    .line 2084
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2085
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2086
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v2, :cond_1

    .line 2087
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/MultiFocusView;->g()V

    .line 2089
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2092
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2093
    :try_start_1
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/g;->z:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 2094
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/g;->z:Z

    .line 2095
    monitor-exit v0

    return-void

    .line 2097
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, p3, :cond_5

    if-ne p2, p4, :cond_5

    .line 2099
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/g;->c(II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/g;->r(Z)V

    return-void

    :catchall_1
    move-exception p0

    .line 2097
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public a(IJJ)V
    .locals 6

    .line 1510
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1511
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/h;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 6

    .line 1173
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->n()V

    .line 1175
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1179
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "continuous_capture"

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1183
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1184
    :cond_1
    sget v3, Lcom/oplus/camera/util/Util;->d:I

    if-ne v3, p1, :cond_2

    .line 1185
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 1189
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotableTextView;->isShown()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1190
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1191
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    .line 1192
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1194
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aY:Landroid/animation/AnimatorSet;

    .line 1195
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1198
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    new-array p2, p2, [F

    iget v5, p0, Lcom/oplus/camera/ui/preview/g;->aZ:I

    int-to-float v5, v5

    aput v5, p2, v2

    aput v0, p2, v1

    const-string v0, "translationY"

    invoke-static {p3, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1200
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1201
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1202
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1203
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aY:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_2

    .line 1205
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setTranslationY(F)V

    .line 1208
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aY:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/ui/preview/g$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/g$2;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1227
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aY:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 1230
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(J)V
    .locals 3

    .line 3170
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3171
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    if-eqz v1, :cond_1

    .line 3172
    iget-wide v1, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    sub-long/2addr p1, v1

    long-to-float v1, p1

    .line 3174
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3175
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    float-to-long p1, p1

    :cond_0
    long-to-float p1, p1

    .line 3178
    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    div-float/2addr p1, p2

    .line 3179
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    .line 3180
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr p2, v1

    .line 3181
    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr v1, p1

    .line 3182
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/ui/preview/g;->d(II)V

    .line 3184
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    .line 2298
    new-instance v0, Lcom/oplus/camera/ui/preview/g$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/g$9;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    .line 2305
    new-instance v1, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v3, 0x7f110150

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 2306
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1004e2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    const v1, 0x7f1000f1

    .line 2307
    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    .line 2308
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    .line 2309
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b$a;->b()Lcom/coui/appcompat/dialog/app/b;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 2626
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->bg:Z

    if-eqz v1, :cond_0

    const v1, 0x7f10040a

    goto :goto_0

    :cond_0
    const v1, 0x7f1000f1

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 2629
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    const v0, 0x7f100409

    new-instance v1, Lcom/oplus/camera/ui/preview/g$14;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$14;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    .line 1339
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/g;->a(Z)V

    .line 1340
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/g;->b(Z)V

    .line 1342
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/g;->a(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    :cond_0
    if-eqz p1, :cond_1

    .line 1347
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1348
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1349
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1350
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->w()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/oplus/camera/ui/preview/ac;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 0

    .line 1539
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 1540
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/FaceView;->a(Landroid/graphics/Rect;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 654
    invoke-virtual {p0, p1, p1}, Lcom/oplus/camera/ui/preview/h;->a(Landroid/util/Size;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;II)V
    .locals 5

    .line 3233
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraPreviewUI"

    .line 3234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDisplaySize, Size width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3235
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3234
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->x()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3238
    new-instance p1, Landroid/util/Size;

    iget p3, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    iget p4, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-direct {p1, p3, p4}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3239
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double p3, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr p3, p1

    .line 3241
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->aX()I

    move-result p1

    if-ne v2, p1, :cond_0

    .line 3242
    new-instance p1, Landroid/util/Size;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, p3

    double-to-int p3, v1

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    goto :goto_0

    .line 3244
    :cond_0
    new-instance p1, Landroid/util/Size;

    iget p2, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    int-to-double v1, p2

    mul-double/2addr p3, v1

    double-to-int p2, p3

    iget p3, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 3247
    :goto_0
    monitor-exit v0

    return-void

    .line 3250
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3251
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3252
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 3253
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    .line 3254
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->H:I

    .line 3255
    iput v4, p0, Lcom/oplus/camera/ui/preview/g;->G:I

    .line 3256
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->O:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3257
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/a;->a()V

    .line 3258
    monitor-exit v0

    return-void

    .line 3261
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v1, p1, p2}, Lcom/oplus/camera/ui/preview/g$b;->a(Landroid/util/Size;Landroid/util/Size;)[I

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3264
    new-instance p1, Landroid/util/Size;

    aget p2, v1, v4

    aget p3, v1, v2

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3265
    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x2

    aget p2, v1, p2

    const/4 p3, 0x3

    aget p3, v1, p3

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    goto/16 :goto_2

    .line 3267
    :cond_3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 3268
    new-instance p1, Landroid/util/Size;

    int-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {p1, v1, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3269
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 3270
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/util/Size;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    .line 3271
    :cond_4
    new-instance p1, Landroid/util/Size;

    int-to-double p2, p4

    mul-double/2addr v1, p2

    double-to-int p2, v1

    invoke-direct {p1, p2, p4}, Landroid/util/Size;-><init>(II)V

    :goto_1
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 3274
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->bg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "xpan"

    .line 3277
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/g$b;->dX()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3278
    :cond_5
    new-instance p1, Landroid/util/Size;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3f5eb852    # 0.87f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 3279
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    :cond_6
    :goto_2
    const-string p1, "CameraPreviewUI"

    .line 3283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDisplaySize, DisplaySize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3284
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " => "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3283
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;Lcom/oplus/camera/ui/preview/g$a;IIIZ)V
    .locals 6

    .line 2927
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aC:Landroid/util/Size;

    .line 2928
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    .line 2929
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aI:Lcom/oplus/camera/ui/preview/g$a;

    const/4 v0, 0x0

    .line 2930
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->s:Z

    .line 2932
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$16;

    invoke-direct {v1, p0, p3}, Lcom/oplus/camera/ui/preview/g$16;-><init>(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/ui/preview/g$a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h$a;)V

    .line 2949
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->c()V

    .line 2950
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/oplus/camera/ui/preview/g;->a(Landroid/util/Size;Landroid/util/Size;II)V

    .line 2952
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->bc:Lcom/oplus/camera/screen/out/e;

    if-eqz p1, :cond_0

    .line 2953
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/screen/out/e;->a(II)V

    .line 2956
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aG()V

    .line 2957
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getRight()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 v1, p1, 0x2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 2958
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getBottom()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p7

    .line 2957
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/g;->a(IIZZZ)V

    .line 2960
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 2961
    :try_start_0
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    iget-object p5, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {p2, p3, p5}, Lcom/oplus/camera/ui/preview/h;->a(Landroid/util/Size;Landroid/util/Size;)V

    const-string p2, "CameraPreviewUI"

    .line 2963
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "startShowPreviewImageAnimation, preview size change: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/oplus/camera/ui/preview/g;->aC:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " x "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/oplus/camera/ui/preview/g;->aC:Landroid/util/Size;

    .line 2964
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " => "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " x "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/oplus/camera/ui/preview/g;->aB:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", mHeight: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", mWidth: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", offSetY: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->av()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", mDiffSize: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", moreTime: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2963
    invoke-static {p2, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2969
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 2970
    new-instance p2, Lcom/oplus/camera/ui/preview/g$17;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/g$17;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2982
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->s:Z

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 2983
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2984
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    int-to-long p3, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2987
    :cond_2
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/g;->g(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 2966
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreviewSize, previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutPreview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraPreviewUI"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/g;->b(Landroid/util/Size;)Z

    .line 1731
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bd:Ljava/lang/Thread;

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 1732
    new-instance v0, Lcom/oplus/camera/ui/preview/g$6;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/preview/g$6;-><init>(Lcom/oplus/camera/ui/preview/g;Landroid/util/Size;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1739
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->c(Landroid/util/Size;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 3862
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    if-eqz p0, :cond_1

    .line 3863
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x4

    .line 3864
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-wide/16 v1, 0x12c

    const/4 p0, 0x0

    if-eqz p2, :cond_3

    .line 3870
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v3, 0x7f010087

    invoke-static {p3, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 3872
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    const/4 v5, 0x4

    .line 3873
    new-instance v6, Lcom/oplus/camera/b/b;

    const/4 p0, 0x1

    invoke-direct {v6, p0, p1, p2}, Lcom/oplus/camera/b/b;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    const-wide/16 v7, 0xb4

    const-wide/16 v9, 0x0

    move-object v4, p2

    invoke-static/range {v4 .. v11}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 3876
    invoke-static {p1, v0, p0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 3879
    invoke-static {p1, v0, p0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/t$b;ZZLjava/lang/String;)V
    .locals 0

    .line 1492
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 1493
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/t$b;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;Landroid/util/Size;)V
    .locals 5

    .line 2991
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2992
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3002
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 3003
    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 3004
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x1

    .line 3005
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->aJ:Z

    goto :goto_0

    .line 3007
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    iput v1, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 3008
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->n:Landroid/view/animation/PathInterpolator;

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    .line 3011
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    .line 3012
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    .line 3013
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 3014
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    .line 3015
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    .line 3016
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 3017
    new-instance v2, Landroid/util/Size;

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->J:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->I:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3019
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->L:I

    .line 3020
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->K:I

    .line 3021
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/g;->U:J

    .line 3022
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->C:I

    .line 3023
    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    iput v2, p0, Lcom/oplus/camera/ui/preview/g;->F:I

    const-string v2, "CameraPreviewUI"

    .line 3025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScreenModeChangeAnimation, mFromDisplaySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    .line 3026
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aG:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOffsetX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOffsetY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->E:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mToDisplaySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    .line 3028
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->aF:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTranslateX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTranslateY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/g;->aE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mToScreenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->bi:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mToPreviewSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g;->bj:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", toRegion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3025
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3034
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3038
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/preview/g$18;-><init>(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/screen/b/a;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2999
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3032
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/screen/b/a;Lcom/oplus/camera/screen/b/a;)V
    .locals 2

    .line 4031
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4037
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->O()Lcom/oplus/camera/gl/GLRootView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/GLRootView;->setRenderMode(I)V

    .line 4039
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    new-instance p2, Lcom/oplus/camera/ui/preview/g$31;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/g$31;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/out/e;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->bc:Lcom/oplus/camera/screen/out/e;

    return-void
.end method

.method public a(Lcom/oplus/camera/u/a;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/ui/preview/g$34;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/g$34;-><init>(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/u/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V
    .locals 7

    .line 1035
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->au()I

    move-result v3

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->av()I

    move-result v4

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aw()I

    move-result v5

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->ax()I

    move-result v6

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/GLRootView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    .line 806
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 810
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 813
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/GLRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bs:Lcom/oplus/camera/gl/GLView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->setContentPane(Lcom/oplus/camera/gl/GLView;)V

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->cv()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/preview/g;->a(ZLcom/oplus/camera/ui/preview/a/t;)V

    .line 819
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    .line 820
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v0, 0x7f090177

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/FaceView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    .line 822
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/FaceView;->setDisplayOrientation(I)V

    .line 823
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v0, 0x7f09027a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/MultiFocusView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    .line 824
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->getListener()Lcom/oplus/camera/ui/preview/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/x;)V

    .line 826
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v0, 0x7f090193

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 827
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/oplus/camera/ui/preview/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 828
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 829
    invoke-virtual {p0, p0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/k$b;)V

    const-string p1, "com.oplus.track.focus.support"

    .line 831
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 832
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v0, 0x7f0903de

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/ac;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    .line 835
    :cond_1
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v0, 0x7f0901f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/ui/inverse/e;->setInverseMaskView(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/g$c;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->al:Lcom/oplus/camera/ui/preview/g$c;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/h$d;)V
    .locals 0

    .line 1431
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aK:Lcom/oplus/camera/ui/preview/h$d;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/k$b;)V
    .locals 0

    .line 3777
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 3778
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setFacePointAnimationListener(Lcom/oplus/camera/ui/preview/k$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/q;)V
    .locals 2

    .line 1712
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_1

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutlineProvider, outlineProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->setClipToOutline(Z)V

    goto :goto_0

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->setClipToOutline(Z)V

    .line 1721
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLRootView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 4052
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->bq:Ljava/lang/Runnable;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1039
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "pref_camera_assistant_line_key"

    .line 1041
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/g$b;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    .line 1042
    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->dZ()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->dY()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1043
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->ar()V

    .line 1045
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->ea()F

    move-result p1

    .line 1048
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/r;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1

    .line 1050
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    .line 1053
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1054
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1056
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1057
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1060
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->ds()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/r;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1063
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    if-eqz p1, :cond_3

    .line 1064
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->dY()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/r;->a(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 620
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->y:Z

    .line 621
    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->M:I

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1241
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1242
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1244
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 1245
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1247
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aX:Landroid/animation/AnimatorSet;

    .line 1248
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aX:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1251
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->aZ:I

    int-to-float v2, v2

    aput v2, v0, v1

    const-string v1, "translationY"

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1253
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 1254
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1255
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 1257
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTranslationY(F)V

    .line 1260
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aX:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/ui/preview/g$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/g$3;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1279
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aX:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1282
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public a([I)V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->u:Z

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->w()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->a([ILandroid/util/Size;)V

    goto :goto_0

    .line 1592
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a([Landroid/hardware/camera2/params/Face;[I)V
    .locals 3

    .line 1569
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_3

    .line 1570
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    .line 1571
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/g$b;->eb()Z

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/g$b;->ea()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/FaceView;->a(ZF)V

    .line 1583
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/FaceView;->a([Landroid/hardware/camera2/params/Face;[I)V

    goto :goto_1

    .line 1573
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1574
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->A()V

    :cond_2
    const/4 p1, 0x0

    .line 1577
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/g;->g(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2284
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CameraPreviewUI"

    const-string p1, "dispatchTouchEvent, mReviewImage is show"

    .line 2285
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aa()V
    .locals 0

    .line 3313
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz p0, :cond_0

    .line 3314
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->cs()V

    :cond_0
    return-void
.end method

.method public ab()V
    .locals 2

    .line 3320
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3321
    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3324
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz p0, :cond_1

    .line 3325
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->ct()V

    :cond_1
    return-void
.end method

.method public ac()V
    .locals 1

    .line 3331
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz v0, :cond_1

    .line 3332
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ek()V

    .line 3334
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    if-nez v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ee()V

    .line 3336
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ef()V

    .line 3338
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->eg()V

    .line 3343
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "CameraPreviewUI"

    const-string v0, "onFirstFrameDraw, don\'t hide blur for some case"

    .line 3344
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3350
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->ad()V

    return-void
.end method

.method public ad()V
    .locals 6

    const-string v0, "execHideBlurView"

    const-string v1, "CameraPreviewUI"

    .line 3354
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 3358
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ao:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 3361
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/g$b;->cv()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 3362
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 3363
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/g;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3364
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->q:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 3367
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/g$b;->eD()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x11

    .line 3371
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    new-instance v3, Lcom/oplus/camera/ui/preview/g$22;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/preview/g$22;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3381
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/ui/preview/g$23;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/g$23;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3389
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/preview/g$24;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/g$24;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/g;->a(Ljava/lang/Runnable;)V

    .line 3398
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public ae()[Landroid/graphics/Rect;
    .locals 0

    .line 3402
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 3403
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public af()I
    .locals 1

    .line 3410
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    .line 3411
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ag()Z
    .locals 0

    .line 3666
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/a;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ah()Z
    .locals 0

    .line 3670
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/g;->aT:Z

    return p0
.end method

.method public ai()Z
    .locals 1

    .line 3674
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    .line 3675
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public aj()V
    .locals 0

    .line 3743
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 3744
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->g()V

    :cond_0
    return-void
.end method

.method public ak()V
    .locals 0

    .line 3750
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 3751
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->b()V

    :cond_0
    return-void
.end method

.method public al()V
    .locals 2

    .line 3757
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_0

    const-string v0, "CameraPreviewUI"

    const-string v1, "endFacePointAnimation"

    .line 3758
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    .line 3761
    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3762
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "key_camera_pid_history"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->d(J)I

    move-result v0

    const-string v1, "key_support_front_face_point_animation"

    .line 3763
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3765
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public am()Z
    .locals 3

    .line 3771
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_support_front_face_point_animation"

    .line 3772
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/g$b;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_camera_statement_key"

    .line 3773
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public an()V
    .locals 10

    .line 3783
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    .line 3784
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x5

    const-string v2, "pref_double_exposure_effect_type"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3787
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    .line 3788
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 3790
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xe

    .line 3791
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3793
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 3794
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07042e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    .line 3793
    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3796
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 3797
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipChildren(Z)V

    .line 3798
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3800
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07042c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 3801
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v6, v7, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 3802
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/oplus/camera/ui/preview/g$28;

    invoke-direct {v6, p0, v2}, Lcom/oplus/camera/ui/preview/g$28;-><init>(Lcom/oplus/camera/ui/preview/g;F)V

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 3819
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3820
    new-instance v3, Lcom/oplus/camera/doubleexposure/f;

    const v6, 0x7f0803c4

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v8, 0x7f100135

    .line 3822
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-ne v1, v0, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    invoke-direct {v3, v1, v6, v7, v9}, Lcom/oplus/camera/doubleexposure/f;-><init>(IILjava/lang/String;Z)V

    .line 3820
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3824
    new-instance v1, Lcom/oplus/camera/doubleexposure/f;

    const v3, 0x7f0803c5

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v7, 0x7f100136

    .line 3826
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-ne v5, v0, :cond_1

    move v4, v8

    :cond_1
    invoke-direct {v1, v5, v3, v6, v4}, Lcom/oplus/camera/doubleexposure/f;-><init>(IILjava/lang/String;Z)V

    .line 3824
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3828
    new-instance v0, Lcom/oplus/camera/doubleexposure/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/doubleexposure/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 3829
    new-instance v1, Lcom/oplus/camera/ui/preview/g$29;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$29;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bb:Lcom/oplus/camera/doubleexposure/e$b;

    .line 3842
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->bb:Lcom/oplus/camera/doubleexposure/e$b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/doubleexposure/e;->a(Lcom/oplus/camera/doubleexposure/e$b;)V

    .line 3843
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    :cond_2
    return-void
.end method

.method public ao()V
    .locals 4

    .line 3848
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    .line 3849
    invoke-static {p0, v0, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public ap()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 3854
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 3855
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->an()V

    .line 3858
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ba:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public b()V
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v1, 0x7f090376

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/z;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    .line 570
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/oplus/camera/ui/preview/z;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/preview/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    .line 572
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/z;->setId(I)V

    .line 573
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 575
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/z;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/z;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->as:Lcom/oplus/camera/ui/preview/r;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 580
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/z;->setForceDarkAllowed(Z)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1557
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 1558
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setZoomValue(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 1436
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->ah:I

    .line 1437
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(II)V
    .locals 0

    .line 797
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->S:I

    .line 798
    iput p2, p0, Lcom/oplus/camera/ui/preview/g;->T:I

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->a(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_1

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoAlert, mRecordingOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->aj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->aj:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1395
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1396
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Lcom/oplus/camera/u/a;)V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "executeSuperTextFrameColorAnimation"

    .line 612
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/z;->a(Lcom/oplus/camera/u/a;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1082
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    const-string v0, "pref_assist_gradienter"

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/g$b;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ax:Ljava/lang/String;

    const-string v0, "on"

    .line 1083
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->as()V

    .line 1086
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->eE()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/p;->setViewLayoutType(I)V

    .line 1087
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->a()V

    goto :goto_0

    .line 1089
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    if-eqz p0, :cond_1

    .line 1090
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 2347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showHyperLapseFocusView, show: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraPreviewUI"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2349
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    if-nez p1, :cond_1

    .line 2350
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    if-nez p1, :cond_0

    .line 2351
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->az()V

    .line 2354
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aA()V

    goto :goto_0

    .line 2356
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aO:Lcom/oplus/camera/ui/preview/HyperLapseFocusView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 2357
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/HyperLapseFocusView;->setVisibility(I)V

    .line 2360
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aB()V

    :goto_0
    return-void
.end method

.method public b(Landroid/util/Size;)Z
    .locals 6

    .line 1670
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraPreviewUI"

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSurfaceTexture, previewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbNeedAcquireTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/g;->be:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ay:Landroid/util/Size;

    .line 1675
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/g;->a(IIII)V

    .line 1676
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->f()I

    move-result v1

    .line 1677
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/h;->g()I

    move-result v2

    .line 1679
    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 1680
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/h;->n()V

    .line 1682
    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/g;->be:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 1683
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v3, v3, v1, v2}, Lcom/oplus/camera/ui/preview/g;->b(IIII)V

    .line 1684
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/g$b;->cv()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/h;->d(Z)V

    .line 1685
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    .line 1687
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 1688
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aA:Landroid/view/Surface;

    .line 1691
    :cond_1
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/g;->be:Z

    goto :goto_1

    .line 1693
    :cond_2
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/g;->b(IIII)V

    .line 1696
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->e()V

    .line 1698
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    .line 1699
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1706
    :cond_3
    monitor-exit v0

    return v5

    :cond_4
    const-string p0, "CameraPreviewUI"

    const-string p1, "updateSurfaceTexture, Activity already pause. Avoid 0x502."

    .line 1702
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    .line 1706
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 585
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/z;->setVisibility(I)V

    .line 586
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ag:Lcom/oplus/camera/ui/preview/z;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/z;->setPointsArray([Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 0

    .line 1563
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 1564
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setFaceSlenderZoomValue(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1441
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    .line 1443
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {v0, p1, v2}, Lcom/oplus/camera/ui/preview/FaceView;->a(IZ)V

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    if-eqz v0, :cond_2

    .line 1452
    invoke-virtual {v0, p1, v2}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a(IZ)V

    .line 1455
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    if-eqz v0, :cond_3

    .line 1456
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/t;->a(IZ)V

    .line 1459
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz p0, :cond_4

    .line 1460
    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/ui/widget/a;->a(IZ)V

    :cond_4
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1498
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 1499
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 3

    .line 3468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMultiCameraTypeView, show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->aT:Z

    if-eqz p1, :cond_2

    .line 3473
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-nez p1, :cond_0

    .line 3474
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aJ()V

    .line 3477
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_multicamera_type_selected_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setType(I)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 3481
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/g;->m(Z)V

    goto :goto_0

    .line 3483
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    invoke-virtual {p2, v0, p1}, Lcom/oplus/camera/ui/widget/a;->a(IZ)V

    .line 3484
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/widget/a;->setAlpha(F)V

    .line 3485
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/widget/a;->setTranslationY(F)V

    .line 3486
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/widget/a;->setTranslationX(F)V

    .line 3487
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    goto :goto_0

    .line 3489
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz p1, :cond_3

    .line 3490
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/g;->n(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "com.oplus.feature.intelligent.high.frame.support"

    .line 839
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c017f

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 842
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090340

    .line 843
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/IntelligentDragView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    .line 844
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->bw:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->setIntelligentGestureListener(Lcom/oplus/camera/ui/preview/IntelligentDragView$a;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1465
    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->P:I

    .line 1467
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/h;->c(I)V

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_1

    .line 1472
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setDisplayOrientation(I)V

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_2

    .line 1476
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/ac;->setDisplayOrientation(I)V

    .line 1479
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz p0, :cond_3

    .line 1480
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->setDisplayOrientation(I)V

    :cond_3
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1504
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 1505
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->b(Z)V

    :cond_0
    return-void
.end method

.method public e(I)J
    .locals 0

    .line 1516
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 1517
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->b(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 850
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    .line 851
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/h;->g(Z)V

    .line 852
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->p()V

    .line 854
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/GLRootView;->setPreventRenderByPause(Z)V

    .line 856
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/GLRootView;->c()V

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 860
    :try_start_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->z:Z

    .line 861
    iget v0, p0, Lcom/oplus/camera/ui/preview/g;->V:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->W:F

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->n:Landroid/view/animation/PathInterpolator;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->i:Landroid/view/animation/PathInterpolator;

    .line 863
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e(Z)V
    .locals 0

    .line 1524
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 1525
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setMirror(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 867
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Y:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_assist_gradienter"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ax:Ljava/lang/String;

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResumeMessage, mAssistGradienterState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 871
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/g;->a(Z)V

    .line 872
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ax:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/g;->b(Z)V

    .line 873
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bd:Ljava/lang/Thread;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 3295
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 3296
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setMainFaceIndex(I)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1530
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    .line 1532
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->j:Z

    if-eqz p1, :cond_0

    .line 1533
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->cu()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/g;->k:I

    .line 1534
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->O()Lcom/oplus/camera/gl/GLRootView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLRootView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    const-string v0, "CameraPreviewUI"

    const-string v1, "releaseTextures"

    .line 877
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    new-instance v2, Lcom/oplus/camera/ui/preview/g$35;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/g$35;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    sget-object v2, Lcom/oplus/camera/gl/t$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/h;->a(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    sget-object v2, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/h;->a(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    sget-object v2, Lcom/oplus/camera/gl/t$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/h;->a(Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    sget-object v2, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/h;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 906
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/g;->az:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x1

    .line 907
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->be:Z

    .line 909
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g(I)V
    .locals 5

    .line 3706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSlowVideoMotionDetectViewVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 3709
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 3710
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 3711
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3712
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3713
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    .line 3714
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 3715
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070cfa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 3716
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3717
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3718
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->setBottomRestrict(I)V

    .line 3719
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b()V

    .line 3722
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 1612
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->a(Z)V

    :cond_0
    return-void
.end method

.method public h(I)Landroid/graphics/RectF;
    .locals 1

    .line 3735
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    if-eqz v0, :cond_0

    .line 3736
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->w()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a(Landroid/util/Size;I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()V
    .locals 3

    const-string v0, "CameraPreviewUI"

    const-string v1, "onPause"

    .line 913
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 915
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->p:Z

    .line 916
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->q:Z

    .line 918
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->s()V

    .line 920
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v1, :cond_0

    .line 921
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/FaceView;->b()V

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    if-eqz v1, :cond_1

    .line 925
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a()V

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v1, :cond_2

    .line 929
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->b()V

    .line 932
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v1, :cond_3

    .line 933
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/ac;->h()V

    .line 936
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->at:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    .line 937
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 940
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 941
    invoke-virtual {v1, v2}, Lcom/oplus/camera/gl/GLRootView;->setAlpha(F)V

    .line 944
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->av:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 945
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 946
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/g;->av:Landroid/graphics/Bitmap;

    .line 949
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/h;->n(Z)V

    .line 951
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->o()V

    const/4 v0, 0x0

    .line 952
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/g;->r(Z)V

    .line 953
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->t:Z

    .line 954
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/g;->u:Z

    .line 955
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 958
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->bq:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 959
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 962
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->g()V

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz v0, :cond_8

    .line 965
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->eh()V

    .line 968
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_9

    .line 969
    invoke-virtual {v0}, Lcom/oplus/camera/gl/GLRootView;->d()V

    .line 972
    :cond_9
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/g;->aB()V

    .line 974
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    if-eqz p0, :cond_a

    .line 975
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->b()V

    :cond_a
    return-void
.end method

.method public h(Z)V
    .locals 4

    .line 1913
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getWidth()I

    move-result v0

    .line 1914
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v1

    .line 1915
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v2, v0

    .line 1916
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1918
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    if-eqz p1, :cond_2

    const-string v1, "func_id_photo"

    .line 1920
    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/preview/g$b;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 1922
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    .line 1923
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    .line 1924
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setForegroundGravity(I)V

    .line 1926
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->cv()I

    move-result p1

    if-nez p1, :cond_1

    .line 1927
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    const v0, 0x7f0804c9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1929
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    const v0, 0x7f0804c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1932
    :goto_1
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1934
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1936
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 1937
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1938
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aR:Landroid/widget/ImageView;

    :cond_3
    :goto_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    const/high16 v1, -0x1000000

    .line 981
    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->setBackgroundColor(I)V

    .line 984
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/h;->h(Z)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 2221
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/g;->t:Z

    if-nez v1, :cond_0

    .line 2222
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setMirror(Z)V

    .line 2223
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/FaceView;->setVisibility(I)V

    .line 2224
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/FaceView;->b()V

    .line 2225
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/FaceView;->d()V

    const/4 p1, 0x1

    .line 2227
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->t:Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "CameraPreviewUI"

    const-string v1, "onDestroy"

    .line 990
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->k()V

    const/4 v0, 0x0

    .line 993
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aa:Lcom/coui/appcompat/dialog/app/b;

    .line 994
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 995
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    .line 996
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ab:Lcom/coui/appcompat/dialog/app/b$a;

    .line 997
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    .line 999
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v1}, Lcom/oplus/camera/ui/widget/a;->a()V

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/FaceView;->e()V

    .line 1005
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v1, :cond_2

    .line 1009
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    .line 1012
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v1, :cond_3

    .line 1013
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->e()V

    .line 1014
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    .line 1017
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    if-eqz v1, :cond_4

    .line 1018
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeAllViewsInLayout()V

    .line 1019
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeAllViews()V

    .line 1020
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    :cond_4
    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 3289
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 3290
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setShowBeauty3DFace(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->q()V

    .line 1029
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aL:Lcom/oplus/camera/gl/GLRootView;

    if-eqz p0, :cond_1

    .line 1030
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->f()V

    :cond_1
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 3418
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 3419
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/h;->e(Z)V

    .line 3422
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ac:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_1

    .line 3423
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->setRearMirrorEnable(Z)V

    .line 3426
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ad:Lcom/oplus/camera/ui/preview/ac;

    if-eqz p0, :cond_2

    .line 3427
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->setRearMirrorEnable(Z)V

    :cond_2
    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 3432
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 3433
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/h;->f(Z)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 1119
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    if-eqz p0, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    .line 1127
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ar:Lcom/oplus/camera/ui/preview/p;

    if-eqz p0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getOrientation()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected m(Z)V
    .locals 9

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMultiTypeView, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3498
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 3499
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/a;->isShown()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3500
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 3505
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/g$b;->aX()I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 3506
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/g$b;->ei()I

    move-result v2

    .line 3507
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/widget/a;->setAlpha(F)V

    if-eqz p1, :cond_4

    const/16 p1, 0x10e

    if-ne p1, v2, :cond_3

    .line 3512
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    neg-int p1, p1

    .line 3513
    :goto_2
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    neg-int v3, p1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/widget/a;->setTranslationX(F)V

    const-string v2, "translationX"

    goto :goto_3

    .line 3516
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    iget v2, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/widget/a;->setTranslationY(F)V

    .line 3518
    iget p1, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    const-string v2, "translationY"

    .line 3521
    :goto_3
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {v3, v0}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    .line 3523
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3524
    :cond_5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    .line 3526
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const-string v7, "alpha"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3528
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x12c

    .line 3529
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3531
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    new-array v5, v5, [F

    int-to-float p1, p1

    aput p1, v5, v0

    aput v4, v5, v1

    invoke-static {v8, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3533
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3534
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3536
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3537
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/ui/preview/g$25;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/g$25;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3549
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3552
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 3554
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public n()V
    .locals 4

    .line 1135
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1140
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/g$b;->aX()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    .line 1141
    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/g$b;->aX()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002f

    .line 1145
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1146
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotableTextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    .line 1147
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const v2, 0x7f0900e5

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1142
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ej()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->N:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    .line 1151
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_3

    .line 1152
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1153
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/g;->ai:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 1154
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    .line 1156
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070472

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/g;->aZ:I

    :cond_3
    return-void
.end method

.method protected n(Z)V
    .locals 9

    .line 3559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideMultiTypeView, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 3563
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/a;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 3564
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-eqz p1, :cond_9

    .line 3569
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3570
    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    .line 3572
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3574
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 3575
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3577
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/g$b;->aX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v5, v3, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v4

    .line 3578
    :goto_1
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g;->ak:Lcom/oplus/camera/ui/preview/g$b;

    invoke-interface {v6}, Lcom/oplus/camera/ui/preview/g$b;->ei()I

    move-result v6

    if-eqz v3, :cond_7

    const/16 v3, 0x10e

    if-ne v3, v6, :cond_6

    .line 3584
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    neg-int v3, v3

    :goto_2
    const-string v6, "translationX"

    goto :goto_3

    .line 3587
    :cond_7
    iget v3, p0, Lcom/oplus/camera/ui/preview/g;->aW:I

    const-string v6, "translationY"

    .line 3590
    :goto_3
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    new-array v0, v0, [F

    const/4 v8, 0x0

    aput v8, v0, v4

    int-to-float v3, v3

    aput v3, v0, v5

    invoke-static {v7, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3592
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3593
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3595
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3596
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/ui/preview/g$26;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/g$26;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3622
    :cond_8
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aU:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 3624
    :cond_9
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz p0, :cond_a

    const/16 p1, 0x8

    .line 3625
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    :cond_a
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public o()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v1, :cond_1

    .line 1167
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1168
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aM:Lcom/oplus/camera/ui/RotableTextView;

    :cond_1
    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 3679
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->aS:Lcom/oplus/camera/ui/widget/a;

    if-eqz p0, :cond_0

    .line 3680
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/a;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    :cond_0
    sub-int p1, p4, p2

    sub-int p6, p5, p3

    .line 2203
    iget-object p7, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    invoke-static {p7}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;)I

    move-result p7

    rem-int/lit16 p7, p7, 0xb4

    if-nez p7, :cond_1

    .line 2204
    iget-object p7, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {p7, p1, p6}, Lcom/oplus/camera/ui/preview/h;->c(II)V

    goto :goto_0

    .line 2206
    :cond_1
    iget-object p7, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    invoke-virtual {p7, p6, p1}, Lcom/oplus/camera/ui/preview/h;->c(II)V

    .line 2209
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2210
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 2211
    :try_start_0
    iget-object p6, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz p6, :cond_2

    .line 2212
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ae:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->g()V

    .line 2214
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2217
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onLayoutChange, layout: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 p6, 0x0

    aput p2, p1, p6

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPreviewUI"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->X:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1289
    new-instance v1, Lcom/oplus/camera/ui/preview/g$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/g$4;-><init>(Lcom/oplus/camera/ui/preview/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 3727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSlowVideoMotionDetectView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->af:Lcom/oplus/camera/ui/preview/IntelligentDragView;

    if-eqz p0, :cond_0

    .line 3730
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1316
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/g;->p()V

    .line 1318
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1319
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1320
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 2

    .line 4023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShowPreviewImageAnimation, isChanging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 4026
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/g;->A:Z

    .line 4027
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public r()V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1326
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->br:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    if-eqz v1, :cond_0

    .line 1333
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1334
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/g;->aN:Lcom/oplus/camera/ui/t;

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1356
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1357
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/h;->n(Z)V

    .line 1361
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/g;->a(Z)V

    .line 1362
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/g;->b(Z)V

    return-void
.end method

.method public u()Z
    .locals 0

    .line 1366
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 1367
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()V
    .locals 1

    .line 1401
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->am:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public w()Landroid/util/Size;
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 1418
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ay:Landroid/util/Size;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public x()Lcom/oplus/camera/ui/preview/h;
    .locals 0

    .line 1423
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    return-object p0
.end method

.method public y()Landroid/widget/RelativeLayout;
    .locals 0

    .line 1427
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->ap:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    return-object p0
.end method

.method public z()V
    .locals 0

    .line 1598
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g;->Z:Lcom/oplus/camera/ui/preview/h;

    if-eqz p0, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->y()V

    :cond_0
    return-void
.end method

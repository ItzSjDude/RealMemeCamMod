.class public Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;
.super Landroid/widget/RelativeLayout;
.source "CameraScreenHintView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:I

.field private G:I

.field private H:J

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lcom/oplus/camera/ui/RotateImageView;

.field private Q:Lcom/oplus/camera/ui/f;

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

.field private U:Lcom/oplus/camera/ui/r;

.field private V:Lcom/oplus/camera/ui/camerascreenhint/c;

.field private W:Lcom/oplus/camera/ui/camerascreenhint/b;

.field private aa:Landroid/util/Size;

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Landroid/os/Handler;

.field private al:Lcom/oplus/camera/ui/r$a;

.field private f:Landroid/view/animation/PathInterpolator;

.field private g:Landroid/view/animation/PathInterpolator;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

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
    .locals 1

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 80
    sput v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c:I

    .line 81
    sput v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->d:I

    .line 82
    sput v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {p3, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->f:Landroid/view/animation/PathInterpolator;

    .line 85
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p3, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->g:Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x1

    .line 87
    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->h:I

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    .line 89
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    .line 90
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k:I

    .line 91
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    .line 92
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m:I

    .line 93
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->n:I

    .line 94
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    .line 95
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->s:I

    .line 99
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    .line 100
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->u:I

    .line 103
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->x:I

    .line 104
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->y:I

    .line 105
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->z:I

    .line 106
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->A:I

    .line 107
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->B:I

    .line 108
    iput v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->C:I

    .line 109
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    .line 110
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->E:Z

    .line 111
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->F:I

    .line 112
    iput v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->G:I

    .line 115
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    .line 116
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    .line 117
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->K:Z

    .line 118
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->L:Z

    .line 119
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->M:Z

    .line 120
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->N:Z

    .line 121
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->O:Z

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    .line 124
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    .line 125
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->S:Ljava/util/List;

    .line 127
    new-instance v2, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;-><init>(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    .line 128
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    .line 129
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->V:Lcom/oplus/camera/ui/camerascreenhint/c;

    .line 130
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->W:Lcom/oplus/camera/ui/camerascreenhint/b;

    .line 131
    iput-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aa:Landroid/util/Size;

    .line 132
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ab:Z

    .line 133
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ac:Z

    .line 134
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ad:Z

    .line 135
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ae:Z

    .line 136
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->af:Z

    .line 137
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ag:Z

    .line 138
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ah:Z

    .line 139
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ai:Z

    .line 140
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aj:Z

    .line 142
    new-instance v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$1;-><init>(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;-><init>(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->al:Lcom/oplus/camera/ui/r$a;

    .line 277
    sget-object v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a:Ljava/util/HashMap;

    const v1, 0x7f10065c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    sget-object v0, Lcom/oplus/camera/R$styleable;->CameraScreenHintView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v0, 0x2a

    .line 285
    :try_start_0
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k:I

    const/4 p3, 0x2

    .line 287
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    const/4 p3, 0x3

    const/16 v0, 0x14

    .line 289
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m:I

    .line 291
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07014c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->x:I

    .line 292
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07014d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->y:I

    .line 293
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07014e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    .line 304
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p2

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070c37

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    sput p2, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c:I

    .line 306
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p2

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070c38

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    sput p2, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->d:I

    .line 308
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    sput p1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    .line 309
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p1, v0

    double-to-int p1, p1

    sput p1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b:I

    .line 310
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->u:I

    .line 311
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->v:I

    .line 312
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->w:I

    .line 313
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070812

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->B:I

    .line 315
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void

    :catchall_0
    move-exception p0

    .line 295
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    throw p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    return-object p0
.end method

.method private a(IZ)V
    .locals 2

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHintTextViewVisible, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenHintView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 1631
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1635
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->V:Lcom/oplus/camera/ui/camerascreenhint/c;

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1637
    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/camerascreenhint/c;->a(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 1639
    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/camerascreenhint/c;->a(I)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 1644
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/f;->a(Ljava/lang/CharSequence;)V

    .line 1647
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;IZ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IZ)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    .line 410
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "TEXT"

    .line 412
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TEXT_BG_COLOR"

    .line 413
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "TEXT_COLOR"

    .line 414
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    move p3, p2

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 422
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_3

    .line 425
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->af:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    return-object p0
.end method

.method private b(II)V
    .locals 2

    .line 447
    iget-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->M:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 448
    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/f;->a(III)V

    goto :goto_1

    .line 450
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextViewBGDrawableID()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/oplus/camera/ui/f;->a(III)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    .line 319
    sget-object p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    return-object p0
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m()V

    return-void
.end method

.method private getChildMeasureHeight()I
    .locals 3

    .line 833
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_3

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->j()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->j()I

    move-result v2

    .line 851
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 852
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    if-le v2, p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p0

    goto :goto_1

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->j()I

    move-result v0

    add-int/2addr v2, v0

    .line 840
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 841
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr v2, p0

    :cond_5
    :goto_1
    return v2
.end method

.method private getChildMeasureWidth()I
    .locals 3

    .line 802
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->i()I

    move-result v0

    add-int/2addr v2, v0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 821
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr v2, p0

    goto :goto_1

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->i()I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->i()I

    move-result v2

    .line 809
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 810
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    if-le v2, p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, p0

    :cond_5
    :goto_1
    return v2
.end method

.method private getHintTextViewBGDrawableID()I
    .locals 4

    .line 1235
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aa:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aa:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1239
    :goto_0
    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->F:I

    const v2, 0x7f0805eb

    const v3, 0x7f0805e9

    if-eqz v1, :cond_1

    .line 1240
    iget-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aj:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 1245
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aj:Z

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    const/4 v0, 0x4

    .line 1255
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v0, p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method private getUpHintMaxWidth()I
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->W:Lcom/oplus/camera/ui/camerascreenhint/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/camerascreenhint/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->y:I

    return p0

    .line 1117
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->x:I

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->n()V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    return p0
.end method

.method private j()Z
    .locals 1

    .line 332
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j()Z

    move-result p0

    return p0
.end method

.method private k()V
    .locals 3

    .line 366
    new-instance v0, Lcom/oplus/camera/ui/r;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/r;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/r;->setDuration(J)V

    .line 368
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->al:Lcom/oplus/camera/ui/r$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/r;->a(Lcom/oplus/camera/ui/r$a;)V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aj:Z

    return p0
.end method

.method private declared-synchronized l()V
    .locals 1

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    return p0
.end method

.method private m()V
    .locals 4

    .line 599
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->C:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->C:I

    .line 600
    new-instance v0, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->S:Ljava/util/List;

    iget v3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->C:I

    .line 601
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 603
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object v0

    .line 605
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    .line 606
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->H:J

    const/4 p0, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->K:Z

    return p0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->f:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->S:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->C:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Ljava/lang/String;)V

    .line 611
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->g:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    sget v2, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/f;->a(II)V

    .line 794
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_1

    .line 795
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->measure(II)V

    :cond_1
    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ai:Z

    return p0
.end method

.method private setHintTextViewVisible(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1625
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IZ)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 774
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 776
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 768
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    .line 769
    iput p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    .line 770
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    .line 760
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    .line 761
    iput p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->n:I

    .line 762
    iput p3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    .line 763
    iput-boolean p4, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->L:Z

    .line 764
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    return-void
.end method

.method public a(IZZIZI)V
    .locals 4

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCameraScreenHintImage, lowPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideAuto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideAutoTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenHintView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ab:Z

    if-eqz v0, :cond_0

    return-void

    .line 639
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->s:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, -0x1

    if-ne v0, p1, :cond_3

    :cond_2
    return-void

    .line 644
    :cond_3
    iput-boolean p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ad:Z

    .line 646
    iget-boolean p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ae:Z

    const/4 v0, 0x0

    if-nez p5, :cond_4

    .line 647
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ac:Z

    .line 650
    :cond_4
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->s:I

    .line 652
    iget-object p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p5, :cond_a

    .line 653
    iget-boolean p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->O:Z

    if-eqz p5, :cond_5

    .line 654
    sget-object p5, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p5, v2, v3}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 657
    :cond_5
    iget-object p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p5, p1}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 658
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result p5

    if-eqz p5, :cond_6

    iget p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    goto :goto_0

    :cond_6
    move p5, v0

    :goto_0
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setOrientation(I)V

    .line 659
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 660
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    iput p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    .line 661
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    if-eqz p2, :cond_7

    .line 664
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    .line 665
    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p2, :cond_7

    .line 667
    invoke-virtual {p2}, Lcom/oplus/camera/ui/f;->c()I

    move-result p2

    if-nez p2, :cond_7

    const-string p0, "showCameraScreenHintImage, lowPriority, so wait text hint hide."

    .line 668
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_7
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p2, :cond_8

    const/16 p2, 0x8

    .line 674
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    .line 677
    :cond_8
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 678
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 679
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 680
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    invoke-virtual {p2, p1, p6}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    if-eqz p3, :cond_9

    .line 683
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    int-to-long p3, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 687
    :cond_9
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o()V

    .line 688
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    :cond_a
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 0

    .line 1731
    iput-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aa:Landroid/util/Size;

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;I)V
    .locals 1

    .line 1211
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    .line 1212
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->p()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->G:I

    .line 1213
    iput p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->F:I

    .line 1214
    iput p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/camerascreenhint/a;)V
    .locals 13

    .line 486
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->i()Z

    move-result v1

    .line 488
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->h()Z

    move-result v2

    .line 489
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->j()Z

    move-result v3

    .line 490
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->d()I

    move-result v4

    .line 491
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->e()I

    move-result v5

    .line 492
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->b()Z

    move-result v6

    .line 493
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->c()Z

    move-result v7

    .line 494
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->f()I

    move-result v8

    .line 495
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a;->g()I

    move-result p1

    .line 497
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showCameraScreenHintText, hintText: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mCurOrientation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", showAlways: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hideAuto: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", bgDrawable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", color: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", hideAutoTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", showRecordCenter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", showFullScreen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mbMoreMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ab:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mbAnimationRunning: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", startOffset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CameraScreenHintView"

    invoke-static {v10, v9}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100473

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v10

    .line 506
    :goto_0
    iget-boolean v12, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ab:Z

    if-nez v12, :cond_d

    iget-boolean v12, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    if-eqz v12, :cond_1

    if-eqz v9, :cond_1

    goto/16 :goto_2

    .line 510
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ad:Z

    .line 512
    iget-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ae:Z

    if-nez v1, :cond_2

    .line 513
    iput-boolean v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ac:Z

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v1, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 517
    iget-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    iput-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ai:Z

    .line 518
    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v11

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    return-void

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 528
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(II)V

    .line 530
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v2, :cond_5

    const/16 v3, 0x8

    .line 531
    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 534
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v6, :cond_6

    .line 537
    invoke-direct {p0, v0, v4, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Ljava/lang/String;II)V

    .line 540
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    goto :goto_1

    :cond_7
    move v2, v10

    :goto_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setOrientation(I)V

    if-eqz v9, :cond_8

    .line 543
    iput-boolean v11, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->af:Z

    .line 544
    iput-boolean v11, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ag:Z

    .line 547
    :cond_8
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/f;->c(I)V

    .line 549
    invoke-direct {p0, v10}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    .line 550
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/f;->a(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_9

    .line 552
    iget-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ah:Z

    if-eqz v0, :cond_a

    .line 553
    :cond_9
    iput-boolean v10, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ah:Z

    .line 554
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 555
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    invoke-virtual {v0, v10, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    :cond_a
    if-nez v6, :cond_b

    if-eqz v7, :cond_b

    .line 559
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    add-int/2addr v8, p1

    int-to-long v2, v8

    invoke-virtual {v0, v11, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    if-nez v1, :cond_c

    .line 563
    iget-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    if-eqz p1, :cond_d

    .line 564
    :cond_c
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o()V

    .line 565
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 573
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 576
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ah:Z

    .line 577
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ak:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 701
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 702
    iput-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    const/4 v2, -0x1

    .line 703
    iput v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->s:I

    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 710
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 713
    :cond_1
    :goto_0
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 715
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "TEXT_BG_COLOR"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    .line 716
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "TEXT_COLOR"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 715
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(II)V

    .line 717
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "TEXT"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/f;->a(Ljava/lang/CharSequence;)V

    .line 718
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    .line 719
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 720
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    invoke-virtual {p1, v1, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    .line 721
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    .line 723
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 740
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    .line 741
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ai:Z

    .line 743
    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 745
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(II)V

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {v2}, Lcom/oplus/camera/ui/f;->g()V

    .line 748
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->h()V

    .line 749
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    .line 750
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 755
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l()V

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Ljava/lang/String;)Z

    move-result v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisplayingUninterruptibleHintText, text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", displaying: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " in: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraScreenHintView"

    .line 325
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->K:Z

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    .line 374
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ag:Z

    .line 376
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->g()V

    const/16 v0, 0x8

    .line 378
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    .line 381
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1200
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    if-eq p1, v0, :cond_0

    .line 1201
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    .line 1202
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(ZZ)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->K:Z

    .line 394
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ag:Z

    return-void
.end method

.method public d()V
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->T:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->cancel()V

    return-void
.end method

.method public e()V
    .locals 16

    move-object/from16 v0, p0

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getChildMeasureWidth()I

    move-result v1

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getChildMeasureHeight()I

    move-result v2

    .line 937
    iget-object v3, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v3, :cond_0

    .line 938
    invoke-virtual {v3}, Lcom/oplus/camera/ui/f;->a()V

    .line 941
    :cond_0
    iget-object v3, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aa:Landroid/util/Size;

    if-eqz v3, :cond_1

    .line 942
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v5, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aa:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 945
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshLayout, width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sizeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CameraScreenHintView"

    invoke-static {v6, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->g()V

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v3, v7, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v6, :cond_2

    .line 967
    sget v9, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b:I

    .line 968
    sget v10, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    goto :goto_1

    .line 963
    :cond_2
    iget v9, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->w:I

    goto :goto_1

    .line 958
    :cond_3
    iget v9, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->v:I

    .line 959
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    sget v10, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    goto :goto_1

    .line 953
    :cond_4
    iget v9, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->u:I

    .line 954
    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    sget v10, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    .line 972
    :goto_1
    iget-boolean v10, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ad:Z

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v9

    .line 974
    :cond_5
    iget-object v10, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v10, :cond_7

    iget-boolean v11, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    if-nez v11, :cond_7

    .line 975
    iget-boolean v11, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ac:Z

    if-eqz v11, :cond_6

    iget v11, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->z:I

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getUpHintMaxWidth()I

    move-result v11

    :goto_2
    invoke-virtual {v10, v11}, Lcom/oplus/camera/ui/f;->d(I)V

    .line 978
    :cond_7
    iget v10, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    const/16 v11, 0x5a

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v4, 0x9

    const/4 v12, 0x3

    const/16 v13, 0xa

    const/16 v14, 0xb

    if-eq v10, v11, :cond_18

    const/16 v11, 0x10e

    if-eq v10, v11, :cond_12

    .line 1053
    iget-boolean v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->L:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_9

    const/16 v2, 0xc

    .line 1054
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1056
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v3, v2, :cond_8

    iget-boolean v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->E:Z

    if-eqz v2, :cond_8

    .line 1057
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1058
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v2, v1

    div-int/2addr v2, v8

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_8
    const/16 v1, 0xe

    .line 1060
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1063
    :goto_3
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k:I

    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->n:I

    add-int/2addr v1, v2

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_8

    .line 1065
    :cond_9
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1066
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1069
    iget-boolean v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->I:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 1070
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v7, v2, :cond_a

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0704cf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_4

    :cond_a
    if-ne v3, v2, :cond_b

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0709e6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    .line 1076
    :goto_4
    sget v2, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c:I

    iget v6, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k:I

    add-int/2addr v2, v6

    iget v6, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 1078
    :cond_c
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v7, v2, :cond_d

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0704d0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5

    :cond_d
    if-ne v3, v2, :cond_e

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0709ce

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    .line 1084
    :goto_5
    sget v2, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->d:I

    iget v6, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k:I

    add-int/2addr v2, v6

    iget v6, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1087
    :goto_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget v4, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v2, v4

    div-int/2addr v2, v8

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1089
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v7, v2, :cond_f

    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->F:I

    if-eqz v2, :cond_f

    .line 1091
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1093
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v2, v1

    div-int/2addr v2, v8

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_8

    .line 1094
    :cond_f
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v12, v2, :cond_11

    .line 1095
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->G:I

    if-nez v2, :cond_10

    .line 1096
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07054b

    .line 1097
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1100
    :cond_10
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v8

    sub-int/2addr v2, v1

    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v2, v1

    div-int/2addr v2, v8

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_8

    :cond_11
    if-ne v3, v2, :cond_1d

    .line 1102
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v2, v1

    div-int/2addr v2, v8

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_8

    .line 1015
    :cond_12
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1017
    iget-boolean v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->L:Z

    if-eqz v1, :cond_15

    .line 1018
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1019
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    iget v4, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    add-int/2addr v1, v4

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v8, v3, :cond_13

    sub-int/2addr v9, v2

    .line 1022
    div-int/2addr v9, v8

    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v1

    add-int/2addr v9, v1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_8

    :cond_13
    if-ne v6, v3, :cond_14

    sub-int/2addr v9, v2

    .line 1024
    div-int/2addr v9, v8

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_8

    :cond_14
    sub-int/2addr v9, v2

    .line 1026
    div-int/2addr v9, v8

    sget v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    add-int/2addr v9, v1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_8

    .line 1029
    :cond_15
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1030
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    iget v3, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    add-int/2addr v1, v3

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1032
    iget-boolean v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ad:Z

    if-eqz v1, :cond_17

    .line 1033
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->A:I

    if-nez v1, :cond_16

    sub-int/2addr v9, v2

    .line 1034
    div-int/2addr v9, v8

    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    add-int/2addr v9, v1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_7

    :cond_16
    sub-int/2addr v9, v2

    .line 1036
    div-int/2addr v9, v8

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v9, v1

    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->B:I

    sub-int/2addr v9, v1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_7

    .line 1039
    :cond_17
    sget v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b:I

    sub-int/2addr v1, v2

    iget v3, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    sub-int/2addr v1, v3

    div-int/2addr v1, v8

    sget v3, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    add-int/2addr v1, v3

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1043
    :goto_7
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v12, v1, :cond_1d

    .line 1044
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-double v3, v1

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v3, v6

    double-to-int v1, v3

    sub-int/2addr v1, v2

    .line 1045
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v8

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070539

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_8

    .line 980
    :cond_18
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 982
    iget-boolean v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->L:Z

    if-eqz v1, :cond_1b

    .line 983
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 984
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    iget v4, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    add-int/2addr v1, v4

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-ne v8, v3, :cond_19

    sub-int/2addr v9, v2

    .line 987
    div-int/2addr v9, v8

    sget v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    add-int/2addr v9, v1

    .line 988
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v1

    add-int/2addr v9, v1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_19
    if-ne v6, v3, :cond_1a

    sub-int/2addr v9, v2

    .line 990
    div-int/2addr v9, v8

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_1a
    sub-int/2addr v9, v2

    .line 992
    div-int/2addr v9, v8

    sget v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    add-int/2addr v9, v1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_8

    .line 995
    :cond_1b
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 996
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    iget v3, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    add-int/2addr v1, v3

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 998
    iget-boolean v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ad:Z

    if-eqz v1, :cond_1c

    sub-int/2addr v9, v2

    .line 999
    div-int/2addr v9, v8

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_8

    .line 1001
    :cond_1c
    sget v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b:I

    sub-int/2addr v1, v2

    iget v3, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v1, v3

    div-int/2addr v1, v8

    sget v3, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e:I

    add-int/2addr v1, v3

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1004
    iget v1, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->D:I

    if-ne v12, v1, :cond_1d

    .line 1005
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-double v3, v1

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v3, v6

    double-to-int v1, v3

    sub-int/2addr v1, v2

    .line 1006
    iget v2, v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    add-int/2addr v1, v2

    div-int/2addr v1, v8

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070539

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1109
    :cond_1d
    :goto_8
    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    .line 1227
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextViewBGDrawableID()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/f;->b(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1609
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->V:Lcom/oplus/camera/ui/camerascreenhint/c;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1611
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->t:I

    :cond_0
    return-void
.end method

.method public getCurrentOrientation()I
    .locals 0

    .line 919
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    return p0
.end method

.method public getHintIconView()Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHintIconViewResId()I
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->s:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/ui/f;->f()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHintTextViewString()Ljava/lang/String;
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getIconWidth()I
    .locals 0

    .line 398
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    return p0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 1676
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getViewGap()I

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 1672
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getViewGap()I

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getSupportRotaeScreen()Z
    .locals 1

    .line 927
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->h:I

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextWidth()I
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/f;->k()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getViewGap()I
    .locals 2

    .line 862
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    const/16 v1, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v1, 0x10e

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l:I

    :goto_1
    return p0
.end method

.method public h()V
    .locals 2

    .line 1667
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/f;->a(Ljava/lang/CharSequence;)V

    .line 1668
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/f;->h()V

    return-void
.end method

.method public i()Z
    .locals 0

    .line 1711
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->J:Z

    return p0
.end method

.method public isShown()Z
    .locals 2

    .line 1681
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 337
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900aa

    .line 338
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 340
    new-instance v0, Lcom/oplus/camera/ui/f;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/f;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    .line 341
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setHintTextViewVisible(I)V

    .line 342
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1127
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    const/16 p2, 0x5a

    const/4 p3, 0x0

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_2

    .line 1176
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1177
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    sub-int p1, p5, p1

    div-int/lit8 p1, p1, 0x2

    .line 1179
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oplus/camera/ui/f;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    iget p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    sub-int p2, p4, p2

    div-int/lit8 p3, p2, 0x2

    .line 1185
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    add-int/2addr v1, p1

    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->layout(IIII)V

    .line 1186
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr p3, p1

    .line 1189
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1190
    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p3

    .line 1191
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 1192
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    invoke-virtual {p1, p3, p5, p0}, Lcom/oplus/camera/ui/f;->b(III)V

    goto/16 :goto_3

    .line 1153
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1154
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    sub-int p1, p4, p1

    div-int/lit8 p1, p1, 0x2

    .line 1156
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oplus/camera/ui/f;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p5, 0x0

    .line 1159
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 1162
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr v1, p3

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->layout(IIII)V

    .line 1163
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr p3, p1

    .line 1167
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1168
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 1169
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    .line 1170
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    invoke-virtual {p1, p4, p3, p0}, Lcom/oplus/camera/ui/f;->b(III)V

    goto :goto_3

    .line 1129
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1130
    div-int/lit8 p1, p4, 0x2

    .line 1132
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    .line 1135
    :cond_6
    div-int/lit8 p2, p5, 0x2

    add-int/2addr p3, p2

    .line 1138
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/oplus/camera/ui/f;->b(III)V

    .line 1139
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->l()I

    move-result p1

    add-int/2addr p3, p1

    .line 1142
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 1143
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 1144
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    .line 1145
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object p5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    .line 1146
    invoke-virtual {p5}, Lcom/oplus/camera/ui/RotateImageView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    .line 1145
    invoke-virtual {p1, p4, p3, p2, p5}, Lcom/oplus/camera/ui/RotateImageView;->layout(IIII)V

    .line 1147
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    iget p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->q:I

    add-int/2addr p2, p4

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->r:I

    add-int/2addr p0, p3

    invoke-virtual {p1, p4, p3, p2, p0}, Lcom/oplus/camera/ui/RotateImageView;->layout(IIII)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setBMarginBottom(Z)V
    .locals 0

    .line 1222
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->L:Z

    return-void
.end method

.method public setCameraScreenHintInterface(Lcom/oplus/camera/ui/camerascreenhint/b;)V
    .locals 0

    .line 1621
    iput-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->W:Lcom/oplus/camera/ui/camerascreenhint/b;

    return-void
.end method

.method public setCameraScreenHintListener(Lcom/oplus/camera/ui/camerascreenhint/c;)V
    .locals 0

    .line 1617
    iput-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->V:Lcom/oplus/camera/ui/camerascreenhint/c;

    return-void
.end method

.method public setChangeHintColor(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->M:Z

    return-void
.end method

.method public setChangeHintTextShadow(Z)V
    .locals 0

    .line 1727
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->N:Z

    return-void
.end method

.method public setIconAlpha(F)V
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 1264
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->aj:Z

    .line 1266
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->f()V

    return-void
.end method

.method public setIsGestureHintNeedInverse(Z)V
    .locals 0

    .line 1735
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->O:Z

    return-void
.end method

.method public setIsLowRack(Z)V
    .locals 0

    .line 1218
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->E:Z

    return-void
.end method

.method public setLDAFShowed(Z)V
    .locals 0

    .line 1715
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ag:Z

    return-void
.end method

.method public setMoreMode(Z)V
    .locals 0

    .line 1689
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ab:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .line 886
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    .line 888
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v0

    .line 890
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    if-eqz v1, :cond_0

    move v0, v2

    move p1, v3

    :cond_0
    if-eqz v0, :cond_7

    .line 896
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    if-nez v0, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k()V

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    move p1, v3

    .line 901
    :cond_2
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_3

    move p1, v3

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->al:Lcom/oplus/camera/ui/r$a;

    if-eqz v0, :cond_6

    .line 904
    invoke-interface {v0}, Lcom/oplus/camera/ui/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 905
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->V:Lcom/oplus/camera/ui/camerascreenhint/c;

    if-eqz v0, :cond_4

    .line 907
    invoke-interface {v0}, Lcom/oplus/camera/ui/camerascreenhint/c;->a()I

    move-result v0

    if-eq v2, v0, :cond_5

    .line 908
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    .line 909
    invoke-virtual {v0}, Lcom/oplus/camera/ui/r;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    .line 910
    invoke-virtual {v0}, Lcom/oplus/camera/ui/r;->a()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 911
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 914
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->U:Lcom/oplus/camera/ui/r;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/r;->a(IZ)V

    :cond_7
    return-void
.end method

.method public setOrientationNoAnim(I)V
    .locals 2

    .line 867
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getSupportRotaeScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 868
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    move p1, v1

    .line 871
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    .line 872
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i:I

    .line 874
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->Q:Lcom/oplus/camera/ui/f;

    if-eqz p1, :cond_1

    .line 875
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/f;->a(IZ)V

    .line 878
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->P:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_2

    .line 879
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 882
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    return-void
.end method

.method public setRecordTimeWidth(I)V
    .locals 0

    .line 785
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->A:I

    .line 786
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    return-void
.end method

.method public setScreenLayoutParams(Lcom/oplus/camera/screen/b/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1207
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/screen/b/a;I)V

    return-void
.end method

.method public setShowRecorderCenter(Z)V
    .locals 0

    .line 1719
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ac:Z

    return-void
.end method

.method public setShowRecorderCenterAlways(Z)V
    .locals 0

    .line 1723
    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->ae:Z

    return-void
.end method

.method public setSupportRotateScreen(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    .line 923
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->h:I

    return-void
.end method

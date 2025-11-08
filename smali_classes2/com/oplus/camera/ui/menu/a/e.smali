.class public Lcom/oplus/camera/ui/menu/a/e;
.super Landroid/view/View;
.source "ModePickerView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/a/e$b;,
        Lcom/oplus/camera/ui/menu/a/e$c;,
        Lcom/oplus/camera/ui/menu/a/e$d;,
        Lcom/oplus/camera/ui/menu/a/e$a;,
        Lcom/oplus/camera/ui/menu/a/e$f;,
        Lcom/oplus/camera/ui/menu/a/e$e;
    }
.end annotation


# instance fields
.field private A:I

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

.field private O:I

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:Lcom/a/a/f;

.field private V:[Ljava/lang/String;

.field private W:[F

.field private final a:Ljava/lang/Object;

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Landroid/graphics/Paint;

.field private aF:Landroid/view/GestureDetector;

.field private aG:Lcom/oplus/camera/ui/menu/a/e$e;

.field private aH:Lcom/oplus/camera/ui/menu/a/a;

.field private aI:F

.field private aJ:Z

.field private aK:I

.field private aL:Z

.field private aM:I

.field private aN:F

.field private aO:I

.field private aP:Lcom/oplus/camera/screen/b/a;

.field private aQ:Z

.field private aa:[F

.field private ab:Landroid/content/Context;

.field private ac:Lcom/oplus/camera/ui/menu/a/b;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:[F

.field private ah:[F

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:F

.field private at:F

.field private au:I

.field private av:I

.field private aw:F

.field private ax:F

.field private ay:I

.field private az:Z

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I

.field private volatile f:I

.field private volatile g:Z

.field private h:Lcom/oplus/camera/ui/CameraUIListener;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/animation/ValueAnimator;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/view/animation/PathInterpolator;

.field private m:Landroid/view/animation/PathInterpolator;

.field private n:Landroid/view/animation/PathInterpolator;

.field private o:[F

.field private p:Landroid/text/TextPaint;

.field private q:Landroid/text/TextPaint;

.field private r:Landroid/text/TextPaint;

.field private s:[Ljava/lang/String;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 8

    .line 193
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->c:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    .line 102
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    const/4 v2, 0x0

    .line 105
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->h:Lcom/oplus/camera/ui/CameraUIListener;

    .line 106
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    .line 107
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    .line 108
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    .line 109
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->l:Landroid/view/animation/PathInterpolator;

    .line 110
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f2b851f    # 0.67f

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    .line 111
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v6, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->n:Landroid/view/animation/PathInterpolator;

    .line 112
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    .line 113
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    .line 114
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    .line 115
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    .line 116
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->t:Landroid/graphics/drawable/Drawable;

    .line 118
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    .line 119
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->v:F

    .line 120
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->w:F

    .line 121
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->x:F

    .line 122
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->y:F

    .line 123
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->z:F

    .line 124
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    .line 125
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->B:I

    .line 126
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->C:I

    .line 127
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->D:I

    .line 128
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->E:I

    .line 129
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->F:I

    .line 130
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->G:I

    .line 131
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->H:I

    .line 132
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->I:I

    const/4 v3, -0x1

    .line 133
    iput v3, p0, Lcom/oplus/camera/ui/menu/a/e;->J:I

    .line 134
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->K:I

    .line 135
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->L:I

    .line 136
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->M:I

    .line 137
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    .line 138
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->O:I

    .line 139
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 140
    iput v4, p0, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    .line 141
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    .line 142
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    .line 143
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    .line 144
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    .line 145
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    .line 147
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aa:[F

    .line 149
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    .line 150
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    const/16 v4, 0xff

    .line 151
    iput v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    .line 152
    iput v4, p0, Lcom/oplus/camera/ui/menu/a/e;->af:I

    .line 153
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    .line 154
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ah:[F

    .line 155
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    .line 156
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    .line 157
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    .line 158
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->al:I

    .line 159
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->am:I

    .line 160
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->an:I

    .line 161
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    .line 162
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 163
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aq:I

    .line 164
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ar:I

    .line 165
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    .line 166
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->at:F

    .line 167
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->au:I

    .line 168
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->av:I

    .line 169
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->aw:F

    .line 170
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->ax:F

    .line 171
    iput v3, p0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    .line 172
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->az:Z

    .line 173
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aA:Z

    .line 174
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aB:Z

    .line 175
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aC:Z

    .line 176
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aD:Z

    .line 177
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    .line 178
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aF:Landroid/view/GestureDetector;

    .line 179
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    .line 180
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    .line 181
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    .line 182
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aJ:Z

    .line 183
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aK:I

    .line 184
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    .line 185
    iput v4, p0, Lcom/oplus/camera/ui/menu/a/e;->aM:I

    .line 186
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->aN:F

    .line 188
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    .line 189
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aP:Lcom/oplus/camera/screen/b/a;

    .line 190
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aQ:Z

    .line 194
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->I:I

    .line 196
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->h:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a/e;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a/e;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aM:I

    return p1
.end method

.method private a([Ljava/lang/String;ZLjava/lang/String;)I
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextAndIndex, textArray: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 467
    array-length v0, p1

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/a/e;->b([Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 473
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget-object p3, p3, v1

    .line 474
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    .line 475
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    .line 476
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    .line 477
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aa:[F

    .line 478
    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    return p0

    :catchall_0
    move-exception p0

    .line 479
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 468
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the text array can\'t be null or it\'s length can\'t be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 2210
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2211
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2212
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2213
    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2215
    new-instance p2, Lcom/oplus/camera/ui/menu/a/e$8;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/a/e$8;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2226
    invoke-virtual {p1, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/b;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    return-object p0
.end method

.method private a(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V
    .locals 14

    move-object v9, p0

    move/from16 v10, p8

    if-nez p5, :cond_0

    .line 2100
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const-wide/16 v11, 0x12c

    if-gtz v1, :cond_1

    move-wide v1, v11

    goto :goto_1

    :cond_1
    move-wide v1, p1

    :goto_1
    const/4 v13, 0x1

    if-eqz p7, :cond_2

    .line 2108
    invoke-direct {p0, v13}, Lcom/oplus/camera/ui/menu/a/e;->c(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2109
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 2110
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    .line 2111
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    move-object v7, v0

    move-wide v5, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p3

    move-object v7, v0

    :goto_2
    move-wide v3, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2114
    new-instance v8, Lcom/oplus/camera/ui/menu/a/e$c;

    move-object/from16 v0, p6

    invoke-direct {v8, p0, v0}, Lcom/oplus/camera/ui/menu/a/e$c;-><init>(Lcom/oplus/camera/ui/menu/a/e;Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne v0, v10, :cond_3

    move v2, v13

    goto :goto_3

    :cond_3
    move v2, v1

    .line 2117
    :goto_3
    iput-boolean v2, v9, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    const/4 v2, 0x0

    .line 2118
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/a/e;->g(F)V

    .line 2120
    iget-object v3, v9, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v3, :cond_4

    .line 2121
    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/menu/a/b;->setAlpha(F)V

    .line 2124
    :cond_4
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 2125
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setEnabled(Z)V

    .line 2126
    iget-object v3, v9, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    const/4 v3, 0x2

    if-ne v3, v10, :cond_5

    .line 2129
    new-array v0, v3, [F

    iget v3, v9, Lcom/oplus/camera/ui/menu/a/e;->aK:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v0, v1

    aput v2, v0, v13

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    .line 2130
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2131
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2132
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    iget-object v1, v9, Lcom/oplus/camera/ui/menu/a/e;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2133
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/a/e$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/a/e$6;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2140
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_5
    if-ne v0, v10, :cond_6

    .line 2142
    invoke-direct {p0, v13}, Lcom/oplus/camera/ui/menu/a/e;->d(Z)V

    :cond_6
    :goto_4
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 1406
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->af:I

    .line 1407
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 1409
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(F)I

    move-result v0

    int-to-float v0, v0

    .line 1410
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    add-float/2addr p3, v1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFII)V
    .locals 0

    if-eq p5, p6, :cond_0

    .line 1135
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object p4, p4, p5

    iget p5, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    add-float/2addr p3, p5

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1137
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    add-float/2addr p4, p5

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFIF)V
    .locals 7

    .line 1461
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->getPreviewFrameWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->C:I

    int-to-float v2, v0

    sub-float/2addr p2, v2

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->F:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    float-to-int p2, p2

    sub-int v2, p4, v0

    const/4 v3, 0x2

    .line 1462
    div-int/2addr v2, v3

    .line 1463
    div-int/2addr p4, v3

    div-int/2addr v0, v3

    add-int/2addr p4, v0

    int-to-float p2, p2

    .line 1464
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->getPreviewFrameWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 1466
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->getPreviewFrameWidth()I

    move-result v0

    if-le p2, v0, :cond_0

    return-void

    .line 1470
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->getPreviewFrameWidth()I

    move-result p2

    div-int/2addr p2, v3

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->C:I

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->F:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    int-to-float p2, p2

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    add-float/2addr p2, v4

    float-to-int p2, p2

    .line 1471
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->t:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, p2

    invoke-virtual {v4, p2, v2, v0, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1473
    iget-boolean p4, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    goto :goto_0

    :cond_1
    iget p4, p0, Lcom/oplus/camera/ui/menu/a/e;->af:I

    .line 1474
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1476
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1477
    new-array p4, v3, [F

    iput-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    .line 1478
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->D:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->C:I

    sub-int v4, v0, v2

    div-int/2addr v4, v3

    sub-int v4, p2, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, p4, v5

    add-int v4, p2, v2

    sub-int v6, v0, v2

    .line 1479
    div-int/2addr v6, v3

    add-int/2addr v4, v6

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, p4, v6

    .line 1480
    new-array p4, v3, [F

    iput-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->ah:[F

    .line 1481
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->ah:[F

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->E:I

    sub-int v2, v0, v2

    div-int/2addr v2, v3

    sub-int/2addr v4, v2

    int-to-float v2, v4

    aput v2, p4, v5

    .line 1482
    aget v2, p4, v5

    int-to-float v0, v0

    add-float/2addr v2, v0

    aput v2, p4, v6

    .line 1484
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    const v0, 0x7f100243

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/oplus/camera/ui/menu/a/e;->d(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1485
    iget p4, p0, Lcom/oplus/camera/ui/menu/a/e;->C:I

    div-int/2addr p4, v3

    add-int/2addr p2, p4

    iget p4, p0, Lcom/oplus/camera/ui/menu/a/e;->G:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40400000    # 3.0f

    .line 1486
    invoke-static {p4}, Lcom/oplus/camera/util/Util;->a(F)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, v1

    add-float/2addr p2, p3

    add-float/2addr p2, p4

    .line 1488
    iget p3, p0, Lcom/oplus/camera/ui/menu/a/e;->H:I

    int-to-float p3, p3

    sub-float/2addr p5, p3

    invoke-direct {p0, p1, p2, p5}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;FF)V

    :cond_2
    return-void
.end method

.method private a(Landroid/text/TextPaint;)V
    .locals 2

    .line 955
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 956
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->c(Landroid/text/TextPaint;)V

    goto :goto_0

    .line 958
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Landroid/text/TextPaint;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a/e;Landroid/text/TextPaint;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/text/TextPaint;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextArray, textArray: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 409
    array-length v0, p1

    if-lez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    .line 415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    .line 418
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    .line 419
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aa:[F

    .line 420
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/text/TextPaint;)V

    return-void

    :catchall_0
    move-exception p0

    .line 415
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 410
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the text array can\'t be null or it\'s length can\'t be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(FFI)Z
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->t()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnimation, startTransit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", endTransit: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ModePickerView"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    if-eqz p1, :cond_1

    .line 640
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/a/e;->c(I)V

    .line 642
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 643
    :try_start_0
    invoke-direct {p0, p3}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    .line 644
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    invoke-interface {p0, p3}, Lcom/oplus/camera/ui/menu/a/e$e;->o(I)V

    .line 645
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(II)Z
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    .line 626
    aget v2, v0, p2

    add-int/lit8 v3, p2, 0x1

    aget v0, v0, v3

    add-float/2addr v2, v0

    div-float/2addr v2, p1

    .line 627
    invoke-direct {p0, v1, v2, p2}, Lcom/oplus/camera/ui/menu/a/e;->a(FFI)Z

    move-result p0

    return p0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 873
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->x:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 875
    :goto_0
    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    .line 876
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 878
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->y:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    .line 879
    :goto_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->y:F

    cmpg-float p1, v0, v7

    if-ltz p1, :cond_2

    .line 881
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    move v4, v5

    :cond_3
    return v4

    :cond_4
    const/4 p1, 0x4

    if-ne p1, v6, :cond_7

    .line 883
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->x:F

    cmpg-float p1, v0, v7

    if-ltz p1, :cond_5

    .line 885
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_6

    :cond_5
    if-nez v2, :cond_6

    move v4, v5

    :cond_6
    return v4

    .line 888
    :cond_7
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->x:F

    .line 890
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getTop()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_9

    :cond_8
    if-nez v2, :cond_9

    move v4, v5

    :cond_9
    return v4
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a/e;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aD:Z

    return p1
.end method

.method private a(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 683
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 685
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(FF)F
    .locals 5

    .line 1618
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 1619
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    .line 1621
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1623
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_0
    sub-float v2, p2, p1

    .line 1631
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->n:Landroid/view/animation/PathInterpolator;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    invoke-virtual {p2, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr p1, v2

    return p1

    .line 1634
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1635
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->n:Landroid/view/animation/PathInterpolator;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    invoke-virtual {p1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr v2, p0

    sub-float/2addr p2, v2

    return p2

    .line 1637
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return p2

    :cond_3
    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/a/e;)Landroid/text/TextPaint;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    return-object p0
.end method

.method private b([Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    .line 516
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    aget-object p0, p1, p0

    return-object p0

    .line 519
    :cond_0
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 520
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    const p1, 0x7f100266

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V
    .locals 12

    move-object v9, p0

    move/from16 v10, p8

    if-nez p5, :cond_0

    .line 2149
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_1
    move-wide v1, p1

    :goto_1
    const/4 v11, 0x0

    if-eqz p7, :cond_2

    .line 2157
    invoke-direct {p0, v11}, Lcom/oplus/camera/ui/menu/a/e;->c(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 2159
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    .line 2160
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    move-object v7, v0

    move-wide v5, v3

    goto :goto_2

    :cond_2
    move-wide v5, p3

    move-object v7, v0

    :goto_2
    move-wide v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2163
    new-instance v8, Lcom/oplus/camera/ui/menu/a/e$b;

    move-object/from16 v0, p6

    invoke-direct {v8, p0, v0}, Lcom/oplus/camera/ui/menu/a/e$b;-><init>(Lcom/oplus/camera/ui/menu/a/e;Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne v1, v10, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v11

    .line 2166
    :goto_3
    iput-boolean v2, v9, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2167
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/a/e;->g(F)V

    .line 2169
    iget-object v3, v9, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v3, :cond_4

    .line 2170
    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/menu/a/b;->setAlpha(F)V

    .line 2173
    :cond_4
    invoke-virtual {p0, v11}, Lcom/oplus/camera/ui/menu/a/e;->setEnabled(Z)V

    .line 2174
    iget-object v2, v9, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    const/4 v2, 0x2

    if-ne v2, v10, :cond_5

    .line 2177
    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v2, v1, v11

    iget v2, v9, Lcom/oplus/camera/ui/menu/a/e;->aK:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    .line 2178
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2179
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    iget-object v1, v9, Lcom/oplus/camera/ui/menu/a/e;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2180
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/a/e$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/a/e$7;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2187
    iget-object v0, v9, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_5
    if-ne v1, v10, :cond_6

    .line 2189
    invoke-direct {p0, v11}, Lcom/oplus/camera/ui/menu/a/e;->d(Z)V

    :cond_6
    :goto_4
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    .line 1041
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->q()V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->r()V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->a()V

    .line 1045
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    .line 1046
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 1047
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->av:I

    int-to-float v1, v1

    const/high16 v16, 0x40000000    # 2.0f

    div-float v1, v1, v16

    iget v2, v15, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    iget v2, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    div-float v2, v2, v16

    sub-float v17, v1, v2

    .line 1048
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->av:I

    int-to-float v1, v1

    div-float v1, v1, v16

    iget v2, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    div-float v2, v2, v16

    sub-float v11, v1, v2

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070792

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070793

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v1, v1

    sub-float v3, v17, v1

    int-to-float v4, v2

    add-float v18, v3, v4

    sub-float v1, v11, v1

    add-float/2addr v1, v4

    .line 1053
    iget v2, v7, Lcom/oplus/camera/ui/menu/a/e;->aN:F

    add-float v19, v1, v2

    .line 1057
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1059
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 1060
    iget-object v9, v7, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-boolean v13, v7, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    iget v14, v7, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    move/from16 v10, v17

    move-object v12, v15

    invoke-virtual/range {v9 .. v14}, Lcom/oplus/camera/ui/menu/a/a;->a(FFLandroid/graphics/Paint$FontMetrics;ZI)V

    .line 1063
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v16

    iget v9, v7, Lcom/oplus/camera/ui/menu/a/e;->S:F

    sub-float/2addr v1, v9

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move v9, v0

    move v0, v2

    move v10, v0

    .line 1065
    :goto_0
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v11, v1

    const/4 v12, 0x1

    if-ge v9, v11, :cond_e

    .line 1067
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    aget-object v1, v1, v9

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 1069
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-direct {v7, v9}, Lcom/oplus/camera/ui/menu/a/e;->f(I)V

    .line 1073
    :cond_1
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v12

    if-ne v9, v1, :cond_2

    float-to-int v1, v10

    .line 1074
    iput v1, v7, Lcom/oplus/camera/ui/menu/a/e;->aq:I

    :cond_2
    add-float v1, v0, v10

    .line 1077
    iget v2, v7, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float v2, v2

    add-float v11, v1, v2

    add-float/2addr v0, v11

    div-float v0, v0, v16

    .line 1080
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/lit8 v1, v1, -0x2

    if-ne v9, v1, :cond_3

    add-float/2addr v0, v4

    .line 1084
    :cond_3
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->A:I

    sub-int/2addr v1, v12

    if-ne v9, v1, :cond_4

    int-to-float v1, v5

    sub-float/2addr v0, v1

    .line 1088
    :cond_4
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/2addr v1, v12

    if-ne v9, v1, :cond_5

    int-to-float v1, v5

    add-float/2addr v0, v1

    .line 1092
    :cond_5
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/lit8 v1, v1, 0x2

    if-ne v9, v1, :cond_6

    sub-float/2addr v0, v4

    :cond_6
    move v13, v0

    .line 1096
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    iget-boolean v1, v7, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-eqz v1, :cond_7

    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->aM:I

    goto :goto_1

    :cond_7
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1097
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-boolean v1, v7, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-eqz v1, :cond_8

    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_2

    :cond_8
    iget v1, v7, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1098
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    aput v13, v0, v9

    .line 1100
    iget v0, v7, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    if-ne v0, v12, :cond_9

    .line 1101
    iget v14, v7, Lcom/oplus/camera/ui/menu/a/e;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v12, v3

    move/from16 v3, v18

    move/from16 v20, v4

    move/from16 v4, v19

    move/from16 v21, v5

    move v5, v9

    move-object/from16 v22, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;FFFII)V

    goto :goto_3

    :cond_9
    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    if-ne v0, v12, :cond_a

    .line 1103
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-object v3, v7, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    iget-object v4, v7, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v5, v7, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    move v1, v9

    move-object/from16 v2, p1

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/a/a;->a(ILandroid/graphics/Canvas;Landroid/graphics/Paint;[Ljava/lang/String;IF)V

    goto :goto_3

    .line 1106
    :cond_a
    iget v6, v7, Lcom/oplus/camera/ui/menu/a/e;->f:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;FFFII)V

    .line 1110
    :goto_3
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-direct {v7, v0}, Lcom/oplus/camera/ui/menu/a/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x40400000    # 3.0f

    .line 1111
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(F)I

    move-result v0

    int-to-float v0, v0

    div-float v1, v10, v16

    add-float/2addr v13, v1

    add-float/2addr v13, v0

    .line 1113
    iget v0, v7, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-eq v9, v0, :cond_b

    iget v0, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    move v1, v0

    move-object/from16 v0, v22

    goto :goto_4

    :cond_b
    move-object/from16 v0, v22

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    :goto_4
    add-float v1, v17, v1

    .line 1114
    invoke-direct {v7, v8, v13, v1}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, v22

    :goto_5
    const/4 v1, 0x1

    .line 1119
    invoke-virtual {v7, v1}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1120
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    add-int/lit8 v2, v9, 0x1

    aput v11, v1, v2

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move-object v6, v0

    move v0, v11

    move v2, v0

    move v3, v12

    move/from16 v4, v20

    move/from16 v5, v21

    goto/16 :goto_0

    .line 1124
    :cond_e
    iget v0, v7, Lcom/oplus/camera/ui/menu/a/e;->B:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_f

    iget-boolean v0, v7, Lcom/oplus/camera/ui/menu/a/e;->aD:Z

    if-eqz v0, :cond_f

    .line 1125
    iget v0, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float v5, v17, v0

    .line 1126
    invoke-static {}, Lcom/oplus/camera/util/Util;->T()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;FFIF)V

    .line 1129
    :cond_f
    iget v0, v7, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    invoke-direct {v7, v0}, Lcom/oplus/camera/ui/menu/a/e;->setHeadlineAngle(I)V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->h()V

    return-void
.end method

.method private b(Landroid/text/TextPaint;)V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 968
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v0, v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->al:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->am:I

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    .line 972
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 974
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v2, v0

    .line 975
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 977
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    add-int/lit8 v1, v1, 0x1

    aput v2, v0, v1

    goto :goto_1

    .line 980
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    if-le p1, v1, :cond_3

    goto :goto_2

    .line 983
    :cond_3
    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    .line 985
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setFinalTransit(F)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, "ModePickerView"

    const-string v0, "setHeadlineAngle, ROTATE_MODE_NO_ANIMATION , the parameter is illegal"

    .line 981
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/a/e;F)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->g(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/a/e;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    return-void
.end method

.method private b(F)Z
    .locals 3

    .line 894
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    cmpg-float v0, v1, p1

    if-ltz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length p0, p0

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_1

    cmpl-float p0, v1, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/a/e;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    return p1
.end method

.method private b(Z)Z
    .locals 5

    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    const/4 v0, 0x1

    .line 899
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aD:Z

    .line 901
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    sub-float/2addr v1, v2

    .line 903
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    if-ne v0, v2, :cond_0

    .line 904
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    .line 907
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performMoveAction, computeMoveAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModePickerView"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 909
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/menu/a/e$e;->p(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 915
    :cond_1
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    .line 916
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    aget p1, p1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    add-int/2addr v4, v0

    aget v2, v2, v4

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performMoveAction, mScrollCurrentIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", startTransit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", endTransit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-eq v2, v3, :cond_2

    .line 921
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    invoke-direct {p0, v1, p1, v2}, Lcom/oplus/camera/ui/menu/a/e;->a(FFI)Z

    goto :goto_0

    .line 923
    :cond_2
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->e(F)V

    :goto_0
    return v0

    .line 910
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->e(F)V

    return v0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/a/e;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aN:F

    return p1
.end method

.method private c(Z)Landroid/view/animation/Animation;
    .locals 1

    if-eqz p1, :cond_0

    .line 2197
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01009d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 2199
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01009e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 2202
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2203
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/b;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    return-object p0
.end method

.method private c(Landroid/text/TextPaint;)V
    .locals 5

    .line 992
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ca1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    sub-float/2addr v0, p1

    .line 994
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    const/4 v1, 0x0

    aput v0, p1, v1

    move p1, v1

    .line 996
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v3, v2

    if-ge p1, v3, :cond_1

    .line 998
    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->av:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1000
    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_1

    :cond_0
    move v0, v3

    .line 1005
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    add-int/lit8 p1, p1, 0x1

    aput v0, v2, p1

    goto :goto_0

    .line 1008
    :cond_1
    array-length p1, v2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x2

    if-le p1, v2, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget v3, p1, v2

    const/4 v4, 0x3

    aget p1, p1, v4

    add-float/2addr v3, p1

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float p1, p1

    sub-float/2addr v3, p1

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    .line 1011
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 1012
    aget v4, p1, v1

    sub-float/2addr v4, v3

    aput v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1016
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    const-string v1, "ModePickerView"

    if-ltz p1, :cond_4

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v4, v3

    sub-int/2addr v4, v2

    if-le p1, v4, :cond_3

    goto :goto_3

    .line 1019
    :cond_3
    aget v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v3, p1

    add-float/2addr v2, p1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    .line 1020
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    goto :goto_4

    :cond_4
    :goto_3
    const-string p1, "setHeadlineAngle, ROTATE_MODE_NO_ANIMATION , the parameter is illegal"

    .line 1017
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initVerticalMeasure, mTextArray: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mTextItemTransit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    .line 1024
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1023
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method private c(F)Z
    .locals 4

    const/4 v0, 0x1

    .line 930
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v0

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v1, v2

    sub-int/2addr v1, v0

    aget v1, p0, v1

    array-length v2, v2

    aget p0, p0, v2

    add-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    cmpl-float p0, p1, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/a/e;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aQ:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/a/e;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->h:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method

.method private d(Z)V
    .locals 11

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 2233
    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->aK:I

    neg-int v3, v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz p1, :cond_3

    move v4, v1

    goto :goto_3

    .line 2234
    :cond_3
    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->aK:I

    neg-int v4, v4

    :goto_3
    const/16 v5, 0x190

    if-eqz p1, :cond_4

    const/16 p1, 0x96

    goto :goto_4

    :cond_4
    move p1, v1

    .line 2239
    :goto_4
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aM:I

    int-to-float v3, v3

    .line 2240
    iput v3, p0, Lcom/oplus/camera/ui/menu/a/e;->aN:F

    .line 2241
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    const/4 v6, 0x2

    .line 2243
    new-array v7, v6, [I

    aput v2, v7, v1

    const/4 v2, 0x1

    aput v0, v7, v2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    .line 2244
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    int-to-long v7, v5

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2245
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    int-to-long v9, p1

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2246
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2247
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/menu/a/e$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/a/e$9;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2254
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2256
    new-array p1, v6, [F

    aput v3, p1, v1

    int-to-float v0, v4

    aput v0, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    .line 2257
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2258
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2259
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2260
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/menu/a/e$10;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/a/e$10;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2268
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/menu/a/e$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/a/e$2;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2292
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private d(F)Z
    .locals 2

    const/4 v0, 0x1

    .line 936
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget p0, p0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/a/e;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aA:Z

    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/a/e;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private e(F)V
    .locals 2

    .line 942
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    .line 943
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(FFI)Z

    return-void
.end method

.method private f(F)F
    .locals 4

    .line 1689
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1690
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    if-ne v0, v1, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1692
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    goto :goto_0

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1695
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1698
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070ca3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    int-to-float p0, v2

    cmpl-float v2, v0, p0

    if-lez v2, :cond_1

    move v0, p0

    :cond_1
    cmpl-float v2, v1, p0

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    goto :goto_1

    .line 1708
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    if-ne v0, v1, :cond_4

    .line 1709
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->g(I)F

    move-result v0

    .line 1710
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->g(I)F

    move-result p0

    goto :goto_1

    .line 1712
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->g(I)F

    move-result v0

    .line 1713
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->g(I)F

    move-result p0

    .line 1717
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentBackgroundLocation, startLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModePickerView"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private f(I)V
    .locals 12

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 1145
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 1147
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v5, v0, v3

    .line 1148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const v1, 0x7f07078f

    .line 1149
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    .line 1150
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 1153
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget v7, v6, p1

    cmpl-float v7, v3, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-lez v7, :cond_1

    aget v6, v6, p1

    add-float/2addr v6, v0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_1

    .line 1154
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v0, 0x0

    add-float v5, v3, v1

    const/4 v6, 0x0

    new-array v7, v10, [I

    aput v4, v7, v9

    aput v2, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 1156
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget v6, v3, p1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    aget p1, v3, p1

    add-float/2addr p1, v0

    cmpg-float p1, v5, p1

    if-gez p1, :cond_2

    .line 1157
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sub-float v7, v5, v1

    const/4 v0, 0x0

    new-array v1, v10, [I

    aput v4, v1, v9

    aput v2, v1, v8

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, p1

    move v8, v0

    move-object v9, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1162
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/a/e;)[Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    return-object p0
.end method

.method private g(I)F
    .locals 7

    .line 1734
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    aget p1, v0, p1

    sub-float/2addr v1, p1

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 1735
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    div-float/2addr p1, v4

    float-to-double v5, p1

    sub-double/2addr v0, v5

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->L:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-double p0, p0

    add-double/2addr v0, p0

    mul-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/a/e;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    return p0
.end method

.method private g(F)V
    .locals 2

    .line 2585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlpha, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-nez v0, :cond_0

    .line 2588
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setAlpha(F)V

    .line 2591
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setBGAlphaValue(F)V

    .line 2592
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->h()V

    return-void
.end method

.method private getPreviewFrameWidth()I
    .locals 2

    .line 2721
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 2722
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_0
    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 2724
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0709e5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 2726
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/menu/a/e;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private h(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2307
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->g(F)V

    const/4 v0, 0x0

    .line 2308
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    .line 2309
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aN:F

    const/16 v0, 0xff

    .line 2310
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aM:I

    .line 2311
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/ui/menu/a/e;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aQ:Z

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/menu/a/e;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/menu/a/e;)Lcom/a/a/f;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/ui/menu/a/e;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->getPreviewFrameWidth()I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/menu/a/e;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    return p0
.end method

.method static synthetic o(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aP:Lcom/oplus/camera/screen/b/a;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/ui/menu/a/e;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/menu/a/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-direct {v0, v1, p0, v2}, Lcom/oplus/camera/ui/menu/a/a;-><init>(Lcom/oplus/camera/ui/menu/a/b;Lcom/oplus/camera/ui/menu/a/e;Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/a;->a(I)V

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    new-instance v1, Lcom/oplus/camera/ui/menu/a/e$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/a/e$1;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/a;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    new-instance v1, Lcom/oplus/camera/ui/menu/a/e$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/a/e$3;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/a;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic q(Lcom/oplus/camera/ui/menu/a/e;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private q()V
    .locals 9

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 368
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    const v1, 0x7f070ce1

    const/4 v2, 0x0

    const v3, 0x7f070ce0

    const/4 v4, 0x0

    const v5, 0x7f0604d4

    if-nez v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 371
    iget-boolean v6, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-eqz v6, :cond_0

    .line 372
    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 373
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 372
    invoke-static {v6, v7, v8, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 376
    :cond_0
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 377
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    .line 376
    invoke-virtual {v6, v7, v2, v8, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-static {v6}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-boolean v7, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    const/4 v8, -0x1

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    goto :goto_0

    :cond_2
    move v7, v8

    :goto_0
    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    invoke-static {v6}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    iget-boolean v6, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    if-eqz v6, :cond_3

    iget v8, p0, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    :cond_3
    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 391
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 392
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    .line 390
    invoke-virtual {v0, v3, v2, v1, p0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private r()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 400
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 403
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/ui/menu/a/e;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aB:Z

    return p0
.end method

.method private s()Z
    .locals 0

    .line 947
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/f;->i()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBGAlphaValue(F)V
    .locals 1

    .line 2596
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2597
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    .line 2598
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    .line 2599
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setCurrentIndex(I)V
    .locals 2

    const-string v0, "ModePickerView"

    if-ltz p1, :cond_2

    .line 2048
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->O:I

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 2054
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-eq p1, v1, :cond_1

    .line 2055
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    .line 2057
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz p1, :cond_1

    .line 2058
    new-instance p1, Lcom/oplus/camera/ui/menu/a/e$5;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/menu/a/e$5;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->post(Ljava/lang/Runnable;)Z

    .line 2069
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentIndex, mCurrentIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2049
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentIndex, index is wrong, index: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFinalTransit(F)V
    .locals 0

    .line 951
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    return-void
.end method

.method private setHeadlineAngle(I)V
    .locals 8

    const-string v0, "ModePickerView"

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_0

    goto/16 :goto_4

    .line 1555
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v6, v5

    sub-int/2addr v6, v1

    if-le p1, v6, :cond_1

    goto :goto_0

    .line 1561
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget p1, v5, p1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    add-int/2addr v5, v4

    aget v1, v1, v5

    add-float/2addr p1, v1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    .line 1562
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setFinalTransit(F)V

    .line 1563
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 1565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadlineAngle, ROTATE_MODE_NO_ANIMATION, angle:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    const-string p0, "setHeadlineAngle, ROTATE_MODE_NO_ANIMATION , the parameter is illegal"

    .line 1556
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1524
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-ltz p1, :cond_8

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    if-gt p1, v5, :cond_8

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    if-ltz p1, :cond_8

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    if-le p1, v5, :cond_4

    goto :goto_2

    .line 1533
    :cond_4
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-eq p1, v1, :cond_5

    .line 1534
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget v6, v5, v1

    add-int/2addr v1, v4

    aget v1, v5, v1

    add-float/2addr v6, v1

    div-float/2addr v6, v3

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    aget v1, v1, v5

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    add-int/2addr v6, v4

    aget v5, v5, v6

    add-float/2addr v1, v5

    div-float/2addr v1, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    aget v7, v5, v6

    add-int/2addr v6, v4

    aget v5, v5, v6

    add-float/2addr v7, v5

    div-float/2addr v7, v3

    sub-float/2addr v1, v7

    .line 1536
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 1539
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 1540
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    goto :goto_1

    .line 1543
    :cond_5
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 1546
    :cond_6
    :goto_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    if-eq v4, p1, :cond_7

    .line 1547
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setFinalTransit(F)V

    .line 1550
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadlineAngle, ROTATE_MODE_FOLLOW_FINGER, angle:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    :goto_2
    const-string p0, "setHeadlineAngle, ROTATE_MODE_FOLLOW_FINGER , the parameter is illegal"

    .line 1528
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1495
    :cond_9
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    if-ltz p1, :cond_d

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    if-gt p1, v5, :cond_d

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    if-ltz p1, :cond_d

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    if-le p1, v5, :cond_a

    goto :goto_5

    .line 1504
    :cond_a
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    if-eq p1, v1, :cond_b

    .line 1505
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    aget v6, v1, v5

    add-int/2addr v5, v4

    aget v1, v1, v5

    add-float/2addr v6, v1

    div-float/2addr v6, v3

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget v1, v1, v5

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    add-int/2addr v6, v4

    aget v5, v5, v6

    add-float/2addr v1, v5

    div-float/2addr v1, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    aget v7, v5, v6

    add-int/2addr v6, v4

    aget v4, v5, v6

    add-float/2addr v7, v4

    div-float/2addr v7, v3

    sub-float/2addr v1, v7

    .line 1507
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 1510
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_c

    .line 1511
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    goto :goto_3

    .line 1514
    :cond_b
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 1517
    :cond_c
    :goto_3
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setFinalTransit(F)V

    .line 1519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadlineAngle, ROTATE_MODE_SLIDE, angle:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_d
    :goto_5
    const-string p0, "setHeadlineAngle, ROTATE_MODE_SLIDE, the parameter is illegal"

    .line 1499
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide v2, 0x4041800000000000L    # 35.0

    .line 2433
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 2434
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    .line 2435
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    new-instance v1, Lcom/oplus/camera/ui/menu/a/e$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/a/e$f;-><init>(Lcom/oplus/camera/ui/menu/a/e;Lcom/oplus/camera/ui/menu/a/e$1;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    return-void
.end method

.method private u()[I
    .locals 13

    .line 2703
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    const v10, 0x7f060072

    const v11, 0x7f0600a2

    if-eqz v0, :cond_0

    .line 2704
    new-array v0, v9, [I

    const/high16 v9, 0x1a000000

    aput v9, v0, v8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v0, v7

    .line 2705
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v0, v6

    .line 2706
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v0, v5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v0, v4

    .line 2707
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v0, v3

    .line 2708
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, v0, v2

    aput v9, v0, v1

    return-object v0

    .line 2711
    :cond_0
    new-array v0, v9, [I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f060094

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v0, v8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v0, v7

    .line 2712
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v0, v6

    .line 2713
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v0, v5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v0, v4

    .line 2714
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v0, v3

    .line 2715
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(F)I
    .locals 8

    .line 1880
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 1887
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1888
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_1

    add-float/2addr v3, v1

    goto :goto_0

    :cond_1
    sub-float/2addr v3, v1

    .line 1898
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    aget p1, p1, v1

    .line 1899
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    aget p1, p1, v6

    .line 1900
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_2

    const/4 p0, -0x2

    .line 1901
    monitor-exit v0

    return p0

    :cond_2
    move p1, v1

    .line 1904
    :goto_1
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v5, v5

    sub-int/2addr v5, v6

    if-ge p1, v5, :cond_4

    .line 1905
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    aget v5, v5, p1

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    add-int/lit8 v7, p1, 0x1

    aget v5, v5, v7

    .line 1906
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 1912
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_7

    if-ltz p1, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_7

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    if-ne v3, p1, :cond_5

    goto :goto_3

    .line 1923
    :cond_5
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 1924
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    .line 1925
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 1926
    iput-boolean v6, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    .line 1928
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    aget p1, p1, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    add-int/2addr v2, v6

    aget v1, v1, v2

    add-float/2addr p1, v1

    div-float/2addr p1, v4

    .line 1929
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    add-int/2addr v3, v6

    aget v2, v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 1931
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    if-nez v2, :cond_6

    .line 1932
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->t()V

    .line 1935
    :cond_6
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v2

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    const-string v2, "ModePickerView"

    .line 1937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeVerticalIndexOnTap,  mCurrentAnimIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , startAngle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", endAngle: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    monitor-exit v0

    return p0

    :cond_7
    :goto_3
    const-string v1, "ModePickerView"

    .line 1917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeVerticalIndexOnTap, mTextArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", targetIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentAnimIndex: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    monitor-exit v0

    return v2

    :cond_8
    :goto_4
    const-string p0, "ModePickerView"

    const-string p1, "computeVerticalIndexOnTap, mTextItemTransit is illegal"

    .line 1882
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1941
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(FF)I
    .locals 8

    .line 1810
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1811
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 1817
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1818
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_1

    add-float/2addr v3, v1

    goto :goto_0

    :cond_1
    sub-float/2addr v3, v1

    .line 1828
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ah:[F

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    aget p1, p1, v1

    .line 1830
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ag:[F

    aget p1, p1, v6

    .line 1831
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ah:[F

    aget p1, p1, v1

    .line 1832
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ah:[F

    aget p1, p1, v6

    .line 1833
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_2

    const/4 p0, -0x2

    .line 1834
    monitor-exit v0

    return p0

    :cond_2
    move p1, v1

    .line 1837
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length p2, p2

    sub-int/2addr p2, v6

    if-ge p1, p2, :cond_4

    .line 1838
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 1839
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    aget v5, v5, p1

    div-float/2addr p2, v4

    sub-float/2addr v5, p2

    iget v7, p0, Lcom/oplus/camera/ui/menu/a/e;->I:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    .line 1840
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    aget v7, v7, p1

    add-float/2addr v7, p2

    iget p2, p0, Lcom/oplus/camera/ui/menu/a/e;->I:I

    int-to-float p2, p2

    add-float/2addr v7, p2

    .line 1842
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-ltz p2, :cond_3

    .line 1843
    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 1849
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length p2, p2

    if-lez p2, :cond_7

    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_7

    iget p2, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    if-ne p2, p1, :cond_5

    goto :goto_3

    .line 1860
    :cond_5
    iget p2, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iput p2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 1861
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    .line 1862
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 1863
    iput-boolean v6, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    .line 1864
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget p2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    aget p1, p1, p2

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    add-int/2addr v1, v6

    aget p2, p2, v1

    add-float/2addr p1, p2

    div-float/2addr p1, v4

    .line 1865
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    aget p2, p2, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    add-int/2addr v2, v6

    aget v1, v1, v2

    add-float/2addr p2, v1

    div-float/2addr p2, v4

    .line 1867
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    if-nez v1, :cond_6

    .line 1868
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->t()V

    .line 1871
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object p1

    float-to-double v1, p2

    invoke-virtual {p1, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    const-string p1, "ModePickerView"

    .line 1873
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeIndexOnTap, mCurrentAnimIndex: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    monitor-exit v0

    return p0

    :cond_7
    :goto_3
    const-string p2, "ModePickerView"

    .line 1854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeIndexOnTap, mTextArray: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", targetIndex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentAnimIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    monitor-exit v0

    return v2

    :cond_8
    :goto_4
    const-string p0, "ModePickerView"

    const-string p1, "computeIndexOnTap, mTextItemTransit is illegal"

    .line 1812
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1876
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 362
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 223
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->B:I

    .line 224
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->getPreviewFrameWidth()I

    move-result p1

    .line 225
    invoke-static {}, Lcom/oplus/camera/util/Util;->T()I

    move-result v0

    const v1, 0x7f0705f3

    .line 227
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    .line 229
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070739

    .line 230
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->al:I

    .line 231
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->am:I

    .line 234
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070caf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 236
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 237
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070ca7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    .line 238
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070ca8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->an:I

    .line 239
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070ca4

    .line 240
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->M:I

    .line 241
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070ca5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    .line 242
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070cae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    const v3, 0x7f060467

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    .line 246
    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    invoke-virtual {v1, v3, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 247
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    const v3, 0x7f080564

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->t:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f07078d

    .line 248
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->C:I

    .line 249
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07078e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->D:I

    const v1, 0x7f0705e1

    .line 250
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->K:I

    const v1, 0x7f070789

    .line 251
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->F:I

    const v1, 0x7f07078a

    .line 252
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->E:I

    .line 254
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    .line 255
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->J:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 256
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    int-to-float p1, p1

    .line 257
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aw:F

    div-float/2addr v0, v1

    .line 258
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ax:F

    .line 259
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aw:F

    float-to-double v0, p1

    const-wide v3, 0x4036800000000000L    # 22.5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v0, v3

    double-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->at:F

    .line 260
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->at:F

    float-to-double v0, p1

    const-wide v3, 0x405f800000000000L    # 126.0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    float-to-double v3, p1

    mul-double/2addr v0, v3

    double-to-int p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->au:I

    .line 261
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->av:I

    .line 263
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v0, 0x0

    if-ne v2, p1, :cond_2

    .line 264
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/menu/a/e$d;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/ui/menu/a/e$d;-><init>(Lcom/oplus/camera/ui/menu/a/e;Lcom/oplus/camera/ui/menu/a/e$1;)V

    invoke-direct {p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aF:Landroid/view/GestureDetector;

    goto :goto_0

    .line 266
    :cond_2
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/menu/a/e$a;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/ui/menu/a/e$a;-><init>(Lcom/oplus/camera/ui/menu/a/e;Lcom/oplus/camera/ui/menu/a/e$1;)V

    invoke-direct {p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aF:Landroid/view/GestureDetector;

    :goto_0
    const p1, 0x7f07078b

    .line 269
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->G:I

    const p1, 0x7f07078c

    .line 270
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->H:I

    .line 271
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->p:Landroid/text/TextPaint;

    .line 272
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    .line 273
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    .line 274
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    .line 275
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->a()V

    .line 276
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->q()V

    .line 277
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aK:I

    return-void
.end method

.method public a(IIF)V
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/a/b;->a(II)V

    .line 1680
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/menu/a/b;->setAlpha(F)V

    .line 1681
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/a/b;->setOffsetY(F)V

    :cond_0
    return-void
.end method

.method public a(IIZZ)V
    .locals 9

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility, visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", animType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModePickerView"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 2333
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2334
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2335
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    :cond_2
    if-eqz p2, :cond_d

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 2382
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_4

    .line 2383
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->n:Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2384
    invoke-virtual {v0, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2383
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->f(F)F

    move-result v0

    .line 2385
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->K:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    div-float/2addr v2, v4

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ax:F

    div-float/2addr v4, v3

    div-float/2addr v2, v4

    .line 2387
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    float-to-int v0, v0

    float-to-int v2, v2

    const/16 v4, 0xfa

    const/16 v5, 0x96

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/oplus/camera/ui/menu/a/b;->a(IIII)V

    :cond_4
    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x96

    .line 2391
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto/16 :goto_1

    :cond_5
    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x0

    .line 2394
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto/16 :goto_1

    :cond_6
    if-nez p1, :cond_8

    if-eqz p4, :cond_7

    const/16 v0, 0x12c

    goto :goto_0

    :cond_7
    const/16 v0, 0x64

    :goto_0
    const-wide/16 v2, 0x12c

    int-to-long v4, v0

    .line 2371
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto :goto_1

    :cond_8
    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x0

    .line 2374
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto :goto_1

    .line 2344
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2345
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2348
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2349
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2350
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->j:Landroid/animation/ValueAnimator;

    :cond_b
    const/4 v0, 0x0

    .line 2354
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    .line 2355
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aN:F

    const/16 v0, 0xff

    .line 2356
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aM:I

    if-nez p1, :cond_c

    const-wide/16 v2, 0xa0

    const-wide/16 v4, 0x0

    .line 2359
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto :goto_1

    :cond_c
    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x0

    .line 2362
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e;->m:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v1, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;ZI)V

    goto :goto_1

    .line 2340
    :cond_d
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->h(I)V

    .line 2406
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/b;->setOffsetY(F)V

    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V
    .locals 11

    move-object v0, p0

    move v1, p1

    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibilityWithAnimator, visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, p2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", startDelay: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", interpolator: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", listener: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", animType: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "ModePickerView"

    invoke-static {v10, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2084
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 2085
    iput-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2088
    :goto_0
    iput-boolean v2, v0, Lcom/oplus/camera/ui/menu/a/e;->aJ:Z

    if-nez v1, :cond_2

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 2091
    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->a(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 2093
    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/a/e;->b(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V

    :goto_1
    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;ZI)V
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 2074
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/ui/menu/a/e;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V

    return-void
.end method

.method public a(ILjava/lang/Runnable;)V
    .locals 2

    .line 1999
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->p()V

    .line 2000
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/Runnable;)V

    .line 2001
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    invoke-virtual {p2, p1, v0, v1}, Lcom/oplus/camera/ui/menu/a/a;->a(I[Ljava/lang/String;[F)V

    const/4 p1, 0x3

    .line 2002
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 2004
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x4

    .line 2005
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 1646
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1650
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    .line 1652
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_1

    .line 1653
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/a/b;->setScreenLayoutMode(I)V

    .line 1656
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    if-eqz v0, :cond_2

    .line 1657
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/a;->a(I)V

    .line 1660
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutMode, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ModePickerView"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 1663
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aQ:Z

    .line 1664
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 1667
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->B:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(I)V

    .line 1668
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/e;->b(IZ)Z

    .line 1669
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/text/TextPaint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 1170
    iget v12, v0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    const/4 v13, 0x0

    .line 1171
    invoke-virtual {v11, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cbf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    .line 1175
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->q()V

    .line 1176
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->r()V

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->a()V

    const v1, 0x7f070ca6

    .line 1179
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v2, v15

    const v3, 0x7f070ca7

    .line 1180
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v3

    div-float/2addr v3, v15

    add-float/2addr v2, v3

    .line 1181
    iget v3, v0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    .line 1182
    iget v2, v0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v10, 0x3

    if-eq v12, v10, :cond_1

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->u()[I

    move-result-object v16

    const/16 v2, 0x8

    .line 1185
    new-array v8, v2, [F

    fill-array-data v8, :array_0

    .line 1186
    new-array v9, v2, [F

    fill-array-data v9, :array_1

    .line 1188
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    iget v2, v0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    neg-float v4, v2

    const/4 v5, 0x0

    neg-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v7

    move-object v10, v7

    move-object/from16 v7, v16

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1190
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    neg-float v4, v2

    neg-float v2, v2

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v2, v1

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v9

    move-object/from16 v8, v19

    move-object v13, v9

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1194
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->M:I

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ca2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1197
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/a/b;->getBGHeight()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 1198
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v1, v10}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1199
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v1, v10}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 1201
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v1, v13}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1202
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v1, v13}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 1205
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1206
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1209
    :goto_0
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 1210
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 1212
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->av:I

    int-to-float v1, v1

    div-float/2addr v1, v15

    iget v2, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr v2, v15

    sub-float/2addr v1, v2

    iget v2, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    div-float/2addr v2, v15

    sub-float v17, v1, v2

    .line 1213
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->av:I

    int-to-float v1, v1

    div-float/2addr v1, v15

    iget v2, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr v2, v15

    sub-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    div-float/2addr v2, v15

    sub-float v19, v1, v2

    .line 1215
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    .line 1217
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v12, v2, :cond_2

    .line 1223
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-boolean v6, v0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    iget v7, v0, Lcom/oplus/camera/ui/menu/a/e;->aj:I

    move/from16 v3, v17

    move/from16 v4, v19

    move-object v5, v13

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/menu/a/a;->a(FFLandroid/graphics/Paint$FontMetrics;ZI)V

    .line 1226
    :cond_2
    iget-boolean v2, v0, Lcom/oplus/camera/ui/menu/a/e;->aC:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    goto :goto_1

    :cond_3
    iget v2, v0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    :goto_1
    move/from16 v20, v2

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v2, v15

    const/4 v8, 0x0

    .line 1229
    :goto_2
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v3, v2

    if-ge v8, v3, :cond_12

    .line 1231
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    aget-object v2, v2, v8

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 1233
    iget v2, v0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    int-to-float v2, v2

    cmpl-float v2, v21, v2

    const/4 v3, 0x1

    if-lez v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 1235
    :goto_3
    iget v4, v0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    int-to-float v4, v4

    .line 1237
    iget v5, v0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float v6, v5

    add-float/2addr v6, v4

    add-float v7, v17, v1

    add-float v22, v19, v1

    if-eqz v2, :cond_5

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x7f070ca5

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v6, v5

    :cond_5
    add-int/lit8 v5, v20, -0x1

    if-ne v8, v5, :cond_6

    int-to-float v5, v14

    sub-float/2addr v7, v5

    sub-float v22, v22, v5

    :cond_6
    add-int/lit8 v5, v20, 0x1

    if-ne v8, v5, :cond_7

    int-to-float v5, v14

    add-float/2addr v7, v5

    add-float v22, v22, v5

    :cond_7
    move v15, v7

    move/from16 v5, v22

    add-float v22, v1, v6

    .line 1257
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    iget v6, v0, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1258
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    iget v6, v0, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1259
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->aa:[F

    aput v15, v1, v8

    if-ne v12, v3, :cond_b

    .line 1263
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    if-eq v8, v1, :cond_9

    if-eqz v2, :cond_8

    .line 1265
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 1266
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1267
    aget-object v5, v2, v4

    int-to-float v1, v1

    sub-float v4, v15, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v11, v5, v9, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1268
    aget-object v2, v2, v3

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v15

    sub-float/2addr v3, v1

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v11, v2, v9, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1270
    :cond_8
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v1, v1, v8

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v11, v1, v9, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    .line 1274
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 1275
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1276
    aget-object v6, v2, v4

    int-to-float v1, v1

    sub-float/2addr v5, v1

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v11, v6, v9, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1277
    aget-object v2, v2, v3

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v15

    sub-float/2addr v3, v1

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v11, v2, v9, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1280
    :cond_a
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v1, v1, v8

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v11, v1, v9, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    move-object/from16 v27, v10

    move/from16 v26, v12

    move/from16 v25, v14

    const/4 v4, 0x0

    move v14, v8

    move v12, v9

    goto/16 :goto_6

    :cond_b
    const/4 v7, 0x3

    if-ne v12, v7, :cond_c

    .line 1284
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    iget-object v5, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v6, v0, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v18

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    move v2, v8

    move/from16 v23, v3

    move-object/from16 v3, p1

    move/from16 v24, v7

    move/from16 v7, v21

    move/from16 v25, v14

    move v14, v8

    move v8, v9

    move/from16 v26, v12

    move v12, v9

    move/from16 v9, v18

    move-object/from16 v27, v10

    move/from16 v10, v23

    .line 1284
    invoke-virtual/range {v1 .. v10}, Lcom/oplus/camera/ui/menu/a/a;->a(ILandroid/graphics/Canvas;Landroid/graphics/Paint;[Ljava/lang/String;IFFIF)V

    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_c
    move-object/from16 v27, v10

    move/from16 v26, v12

    move/from16 v25, v14

    move v14, v8

    move v12, v9

    .line 1288
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    if-eq v14, v1, :cond_e

    if-eqz v2, :cond_d

    .line 1290
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 1291
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v2, v2, v14

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1292
    aget-object v5, v2, v4

    int-to-float v1, v1

    sub-float v4, v15, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v11, v5, v12, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1293
    aget-object v2, v2, v3

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v15

    sub-float/2addr v3, v1

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v11, v2, v12, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1295
    :cond_d
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v1, v1, v14

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {v11, v1, v12, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_e
    if-eqz v2, :cond_f

    .line 1299
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 1300
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v2, v2, v14

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1301
    aget-object v6, v2, v4

    int-to-float v1, v1

    sub-float v7, v5, v1

    iget-object v8, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v11, v6, v12, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1302
    aget-object v2, v2, v3

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/e;->N:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v5, v3

    sub-float/2addr v5, v1

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v11, v2, v12, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    .line 1304
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v1, v1, v14

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->r:Landroid/text/TextPaint;

    invoke-virtual {v11, v1, v12, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1310
    :goto_6
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    aget-object v1, v1, v14

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->e()Landroid/graphics/LinearGradient;

    move-result-object v1

    .line 1312
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/e;->aE:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v1, 0x40400000    # 3.0f

    .line 1313
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v21, v21, v2

    add-float v9, v12, v21

    add-float/2addr v9, v1

    .line 1315
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-eq v14, v1, :cond_10

    iget v1, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    move v3, v1

    move-object/from16 v1, v27

    goto :goto_7

    :cond_10
    move-object/from16 v1, v27

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    :goto_7
    add-float/2addr v15, v3

    .line 1316
    invoke-direct {v0, v11, v9, v15}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_8

    :cond_11
    move-object/from16 v1, v27

    const/high16 v2, 0x40000000    # 2.0f

    .line 1320
    :goto_8
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    add-int/lit8 v8, v14, 0x1

    aput v22, v3, v8

    move-object v10, v1

    move v15, v2

    move v9, v12

    move/from16 v1, v22

    move/from16 v14, v25

    move/from16 v12, v26

    goto/16 :goto_2

    :cond_12
    move/from16 v26, v12

    .line 1323
    iget v1, v0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setHeadlineAngle(I)V

    move/from16 v1, v26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/e;->h()V

    :cond_13
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3daa9931    # 0.0833f
        0x3ecccccd    # 0.4f
        0x3ece3bcd    # 0.4028f
        0x3f18e219    # 0.5972f
        0x3f19999a    # 0.6f
        0x3f6aacda    # 0.9167f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3daa9931    # 0.0833f
        0x3eb0a3d7    # 0.345f
        0x3eb1c433    # 0.3472f
        0x3f271de7    # 0.6528f
        0x3f27ae14    # 0.655f
        0x3f6aacda    # 0.9167f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Lcom/oplus/camera/screen/b/a;Z)V
    .locals 0

    .line 1673
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aP:Lcom/oplus/camera/screen/b/a;

    .line 1674
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/e;->a(IZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 485
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 486
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    const/4 v1, 0x0

    move v2, v1

    .line 490
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 491
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    move v3, v1

    .line 497
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 498
    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_3
    if-eq v0, v2, :cond_4

    .line 505
    iput v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 508
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(IZ)Z

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIndex, mLastIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModePickerView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateText, textIdList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    .line 434
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 437
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->O:I

    .line 438
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    .line 439
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a([Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, p2, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(IZ)Z

    return-void

    :catchall_0
    move-exception p0

    .line 439
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 434
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_0
    const-string p0, "ModePickerView"

    const-string p1, "updateText, the parameter is illegal"

    .line 427
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextAndIndex, textIdList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 448
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    .line 456
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 459
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->O:I

    .line 460
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/oplus/camera/ui/menu/a/e;->a([Ljava/lang/String;ZLjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    .line 461
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

    .line 456
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    :goto_0
    const-string p0, "ModePickerView"

    const-string p1, "updateText, the parameter is illegal"

    .line 449
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10025a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getLastIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    .line 656
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 658
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backToLastHeadlineIndex, last index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ModePickerView"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->b(IZ)Z

    .line 664
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setHeadlineAngle(I)V

    .line 666
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void

    :catchall_0
    move-exception p0

    .line 656
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public varargs a([I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1415
    array-length v2, p1

    if-lez v2, :cond_2

    .line 1416
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v4, p1, v0

    .line 1417
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1418
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/menu/a/e;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1419
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1420
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 1426
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1427
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1428
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    move v0, v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1433
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    :cond_4
    return-void
.end method

.method public a([II)V
    .locals 3

    .line 2029
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->p()V

    .line 2030
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/text/TextPaint;)V

    .line 2031
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/oplus/camera/ui/menu/a/a;->a([I[Ljava/lang/String;FI)V

    const/16 p1, 0xff

    .line 2032
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setArrangeAlpha(I)V

    const/4 p1, 0x3

    .line 2033
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    const/4 p1, 0x0

    .line 2034
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    return-void
.end method

.method public a([ILjava/lang/Runnable;I)V
    .locals 2

    .line 2010
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->p()V

    .line 2011
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/Runnable;)V

    .line 2012
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aa:[F

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/oplus/camera/ui/menu/a/a;->a([I[Ljava/lang/String;[FI)V

    const/4 p1, 0x3

    .line 2013
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1335
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 1336
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public varargs b([I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1440
    array-length v1, p1

    if-lez v1, :cond_2

    .line 1441
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v3, p1, v0

    .line 1442
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ab:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1444
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1445
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 1452
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    :cond_3
    return-void
.end method

.method public b()Z
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 535
    monitor-exit v0

    return v2

    .line 538
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f10025a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 539
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(I)Z
    .locals 5

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentIndexWithAnim, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAnimIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 599
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v2, v2

    if-lez v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v3, v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 617
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    const/4 p1, 0x1

    .line 618
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    .line 619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(II)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    :try_start_1
    const-string p0, "ModePickerView"

    const-string p1, "setCurrentIndexWithAnim, mTextItemTransit is illegal"

    .line 611
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    monitor-exit v1

    return v0

    :cond_3
    :goto_1
    const-string v2, "ModePickerView"

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentIndexWithAnim, mTextArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentAnimIndex: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    .line 619
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(IZ)Z
    .locals 3

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentIndex, from mCurrentAnimIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to target index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateLastIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1784
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1794
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    if-eqz p2, :cond_1

    .line 1797
    iget p2, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iput p2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 1800
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    const/4 p1, 0x1

    .line 1801
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    .line 1803
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    .line 1805
    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p2, "ModePickerView"

    .line 1788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentIndex, mTextArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentAnimIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1791
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1806
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const-string v0, " "

    .line 1340
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    .line 1341
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, "\\s"

    .line 1343
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 1347
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    .line 1348
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x2

    .line 1354
    new-array v3, v3, [Ljava/lang/String;

    .line 1355
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1357
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_2

    .line 1358
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 1363
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "..."

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->ao:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1369
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    :goto_2
    return-object v3
.end method

.method public c()V
    .locals 3

    const-string v0, "ModePickerView"

    const-string v1, "slideNextItem"

    .line 547
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/a/e$e;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->O:I

    if-le v1, v2, :cond_1

    .line 557
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->O:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    const-string p0, "ModePickerView"

    const-string v1, "slideNextItem, current index is max, can not slide"

    .line 559
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    monitor-exit v0

    return-void

    .line 563
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->b(I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 565
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const-string p0, "ModePickerView"

    const-string v0, "slideNextItem, can not slide"

    .line 550
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    if-eq p1, v1, :cond_1

    .line 707
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    .line 708
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    :cond_1
    const-string p1, "ModePickerView"

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentIndex, mLastIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAnimIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    const-string v1, "ModePickerView"

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentIndex, mTextArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentIndex: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->f:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1577
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e;->s:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1578
    aget-object v2, v2, v1

    .line 1580
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 1586
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 1587
    :try_start_0
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    .line 1588
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndex, index: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ModePickerView"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 1593
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->b(IZ)Z

    return-void

    :catchall_0
    move-exception p0

    .line 1588
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public c([I)V
    .locals 3

    .line 2017
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->p()V

    .line 2018
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->q:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/text/TextPaint;)V

    .line 2019
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/camera/ui/menu/a/a;->a([I[Ljava/lang/String;F)V

    const/16 p1, 0xff

    .line 2020
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setArrangeAlpha(I)V

    const/4 p1, 0x3

    .line 2021
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 2023
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2024
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "slidePreviousItem"

    .line 571
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/a/e$e;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 581
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    const-string p0, "ModePickerView"

    const-string v1, "slidePreviousItem, current index is min, can not slide"

    .line 583
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    monitor-exit v0

    return-void

    .line 587
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setCurrentIndex(I)V

    .line 589
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->b(I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 589
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const-string p0, "ModePickerView"

    const-string v0, "slidePreviousItem, can not slide"

    .line 574
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(I)Z
    .locals 0

    .line 1402
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()Landroid/graphics/LinearGradient;
    .locals 9

    const/4 v0, 0x4

    .line 1377
    new-array v6, v0, [I

    const v1, 0xea3447

    const/4 v2, 0x0

    aput v1, v6, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f060049

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v5, 0x1

    aput v2, v6, v5

    .line 1378
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v6, v3

    const/4 v2, 0x3

    aput v1, v6, v2

    .line 1379
    new-array v7, v0, [F

    fill-array-data v7, :array_0

    .line 1381
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    neg-float v3, v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070ca6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float v5, v1, p0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3df9096c    # 0.1216f
        0x3f60ded3    # 0.8784f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public e(I)V
    .locals 1

    .line 2315
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->h(I)V

    .line 2316
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/a/b;->setOffsetY(F)V

    .line 2317
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method public f()Z
    .locals 0

    .line 1386
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aA:Z

    return p0
.end method

.method public g()Z
    .locals 0

    .line 1390
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/a/e;->az:Z

    return p0
.end method

.method public getLastIndex()I
    .locals 0

    .line 529
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ap:I

    return p0
.end method

.method public getLastTextWidth()I
    .locals 0

    .line 1398
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aq:I

    return p0
.end method

.method public getTextGap()F
    .locals 0

    .line 2038
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->ak:I

    int-to-float p0, p0

    return p0
.end method

.method public getVerticalOffset()F
    .locals 0

    .line 1166
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/e;->T:F

    return p0
.end method

.method public h()V
    .locals 6

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadlineDrawer, mAnimationRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->n:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->P:F

    .line 1600
    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1599
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->f(F)F

    move-result v0

    .line 1601
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->K:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->as:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->ax:F

    div-float/2addr v3, v2

    div-float/2addr v1, v3

    .line 1602
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->Q:F

    .line 1603
    :goto_0
    iget-boolean v3, p0, Lcom/oplus/camera/ui/menu/a/e;->aJ:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oplus/camera/ui/menu/a/e;->aL:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    .line 1605
    :goto_2
    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    if-ne v4, v5, :cond_3

    .line 1606
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->M:I

    int-to-float v1, v1

    iget v4, p0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 1607
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ca2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1608
    invoke-direct {p0, v4, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(FF)F

    move-result v1

    :cond_3
    if-eqz v3, :cond_4

    float-to-int v0, v0

    .line 1612
    iget v3, p0, Lcom/oplus/camera/ui/menu/a/e;->ay:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/menu/a/e;->a(IIF)V

    :cond_4
    return-void
.end method

.method public i()Z
    .locals 0

    .line 1724
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/a;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()V
    .locals 0

    .line 1728
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    if-eqz p0, :cond_0

    .line 1729
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/a;->e()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->i:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 1767
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l()Z
    .locals 0

    .line 1995
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m()V
    .locals 0

    .line 2042
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aH:Lcom/oplus/camera/ui/menu/a/a;

    if-eqz p0, :cond_0

    .line 2043
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/a;->c()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    .line 2321
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    .line 2322
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aI:F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/b;->setOffsetY(F)V

    .line 2323
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method public o()Z
    .locals 0

    .line 2581
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1031
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1033
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 1034
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1036
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 717
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 721
    :cond_0
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/a/e$e;->X()Z

    move-result v0

    const-string v2, "ModePickerView"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p0, "onTouchEvent, return when isTimerSnapShotRunning"

    .line 722
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 727
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1a

    if-eq v0, v3, :cond_19

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto/16 :goto_8

    .line 740
    :cond_2
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 741
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(Z)Z

    move-result p0

    return p0

    .line 754
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aB:Z

    if-nez v0, :cond_4

    return v1

    .line 758
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->w:F

    sub-float/2addr v0, v5

    .line 760
    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    if-ne v3, v5, :cond_5

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->z:F

    sub-float/2addr v0, v5

    .line 764
    :cond_5
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p0, "onTouchEvent, return when envet out of view"

    .line 765
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    const/high16 v5, 0x41200000    # 10.0f

    .line 770
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    const-string p0, "onTouchEvent, return when distance too small"

    .line 771
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 776
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    const/high16 v6, 0x42960000    # 75.0f

    mul-float/2addr v5, v6

    .line 778
    iget v7, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    if-ne v3, v7, :cond_8

    .line 779
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    mul-float/2addr v5, v6

    .line 782
    :cond_8
    iget v6, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    sub-float/2addr v6, v0

    .line 784
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->b(F)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 785
    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    goto :goto_1

    .line 786
    :cond_9
    invoke-direct {p0, v6}, Lcom/oplus/camera/ui/menu/a/e;->d(F)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-direct {p0, v6}, Lcom/oplus/camera/ui/menu/a/e;->c(F)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_0

    .line 789
    :cond_a
    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    iput v5, p0, Lcom/oplus/camera/ui/menu/a/e;->v:F

    .line 790
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    goto :goto_1

    .line 787
    :cond_b
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->v:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    .line 793
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/e;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "onTouchEvent, spring animation is running, set at rest"

    .line 794
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/a/e;->aQ:Z

    .line 797
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->U:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 800
    :cond_c
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    .line 802
    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->aO:I

    const-string v6, ", currentIndex: "

    const-string v7, "onTouchEvent, new index: "

    if-ne v3, v5, :cond_14

    .line 803
    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    iget v8, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    sub-float/2addr v5, v8

    move v8, v0

    move v0, v1

    .line 806
    :goto_2
    iget-object v9, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v10, v9

    sub-int/2addr v10, v3

    if-ge v0, v10, :cond_e

    .line 807
    aget v10, v9, v0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_d

    add-int/lit8 v10, v0, 0x1

    aget v9, v9, v10

    cmpg-float v9, v5, v9

    if-gez v9, :cond_d

    .line 808
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    cmpg-float v0, v5, v4

    if-gez v0, :cond_f

    move v0, v1

    goto :goto_3

    .line 816
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v3

    aget v2, v9, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_10

    .line 817
    array-length v0, v0

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_10
    move v0, v8

    .line 820
    :goto_3
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    sub-int v2, v0, v2

    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v4, v6

    const/high16 v6, 0x43480000    # 200.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_12

    if-eqz v2, :cond_13

    if-gez v2, :cond_11

    const/4 v0, -0x1

    goto :goto_4

    :cond_11
    move v0, v3

    .line 826
    :goto_4
    iget v2, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    add-int/2addr v2, v0

    move v0, v2

    goto :goto_5

    .line 829
    :cond_12
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/a/e;->setFinalTransit(F)V

    .line 832
    :cond_13
    :goto_5
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 833
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aD:Z

    move v1, v0

    goto :goto_7

    .line 836
    :cond_14
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->R:F

    iget v5, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    sub-float/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setFinalTransit(F)V

    .line 837
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 838
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->aD:Z

    .line 839
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    move v5, v0

    move v0, v1

    .line 841
    :goto_6
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    array-length v9, v8

    sub-int/2addr v9, v3

    if-ge v0, v9, :cond_16

    .line 842
    iget v9, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    aget v10, v8, v0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_15

    add-int/lit8 v10, v0, 0x1

    aget v8, v8, v10

    cmpg-float v8, v9, v8

    if-gez v8, :cond_15

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 849
    :cond_16
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->S:F

    cmpg-float v2, v0, v4

    if-gez v2, :cond_17

    goto :goto_7

    .line 851
    :cond_17
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v2, v1

    sub-int/2addr v2, v3

    aget v2, v8, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    .line 852
    array-length v0, v1

    add-int/lit8 v1, v0, -0x1

    goto :goto_7

    :cond_18
    move v1, v5

    .line 856
    :goto_7
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/e;->e:I

    .line 857
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    .line 858
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    goto :goto_8

    .line 747
    :cond_19
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 748
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/a/e;->b(Z)Z

    move-result p0

    return p0

    .line 729
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->w:F

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->z:F

    .line 731
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->w:F

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->x:F

    .line 732
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/e;->z:F

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/e;->y:F

    .line 733
    iput v4, p0, Lcom/oplus/camera/ui/menu/a/e;->u:F

    .line 734
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/a/e;->az:Z

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/e;->A:I

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/a/e$e;->p(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/e;->aB:Z

    .line 862
    :cond_1b
    :goto_8
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e;->aF:Landroid/view/GestureDetector;

    if-eqz p0, :cond_1c

    .line 863
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1c
    return v3
.end method

.method public setArrangeAlpha(I)V
    .locals 2

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setArrangeAlpha, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1948
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ae:I

    const/4 p1, 0x1

    .line 1949
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->g:Z

    .line 1950
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setArrangeEditAlpha(I)V
    .locals 2

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setArrangeEditAlpha, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->af:I

    .line 1958
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setHeadlineBackground(Lcom/oplus/camera/ui/menu/a/b;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    .line 283
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/a/b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 1741
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ai:Z

    .line 1742
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method public setListener(Lcom/oplus/camera/ui/menu/a/e$e;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aG:Lcom/oplus/camera/ui/menu/a/e$e;

    return-void
.end method

.method public setMultiFinger(Z)V
    .locals 0

    .line 1394
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/e;->az:Z

    return-void
.end method

.method public setRotateMode(I)V
    .locals 2

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRotateMode, rotateMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/e;->ad:I

    return-void
.end method

.method public setTextArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 670
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    .line 671
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->V:[Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->o:[F

    .line 672
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->W:[F

    .line 673
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e;->aa:[F

    .line 674
    new-instance p1, Lcom/oplus/camera/ui/menu/a/e$4;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/menu/a/e$4;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePickerView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2301
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e;->ac:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_0

    .line 2302
    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/menu/a/b;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

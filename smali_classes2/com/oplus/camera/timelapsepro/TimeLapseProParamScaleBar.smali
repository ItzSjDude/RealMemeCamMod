.class public Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
.super Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;
.source "TimeLapseProParamScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;,
        Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;,
        Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/ValueAnimator;

.field private B:Landroid/animation/ValueAnimator;

.field private C:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/camera/timelapsepro/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/graphics/Paint;

.field private p:Ljava/lang/String;

.field private q:F

.field private r:F

.field private s:F

.field private t:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

.field private u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

.field private v:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;

.field private w:J

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->k:I

    .line 41
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->l:I

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    const/4 p3, 0x0

    .line 52
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->t:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    .line 53
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    .line 54
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->v:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->w:J

    .line 58
    iput-boolean p2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    .line 59
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->y:Z

    const/16 p1, 0xff

    .line 60
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->z:I

    .line 61
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    .line 62
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    .line 64
    new-instance p1, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->C:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    .line 111
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->g()V

    .line 112
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->C:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleBarValueChangeListener(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;)V

    .line 114
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->i:I

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->e()V

    .line 117
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c2f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->j:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->l:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->t:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 8

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->p:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 392
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 393
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Ljava/lang/String;)I

    move-result v3

    .line 394
    aget-object v4, v0, v2

    invoke-direct {p0, v4}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Ljava/lang/String;)I

    move-result v4

    .line 395
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    aget-object v1, v0, v1

    iget v5, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->j:I

    shr-int/2addr v5, v2

    int-to-float v5, v5

    sub-float v5, p2, v5

    shr-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, p3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0709ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 402
    :cond_0
    aget-object v0, v0, v2

    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->j:I

    shr-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr p2, v1

    shr-int/lit8 v1, v3, 0x1

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->p:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[\u4e00-\u9fa5]"

    .line 409
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 410
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 411
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->z:I

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 209
    array-length p0, v0

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget v2, v0, v1

    add-float/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-int p0, p1

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->l:I

    return p0
.end method

.method private d(I)Ljava/lang/String;
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/g;->f_()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/g;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/g;->g_()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 224
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/g;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/g;->f_()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/timelapsepro/a/g;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/g;->g_()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c:I

    return p0
.end method

.method private synthetic e(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    return-object p0
.end method

.method private synthetic f(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    return-void
.end method

.method private g()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 199
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 200
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 201
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a:Landroid/content/Context;

    const v4, 0x7f060069

    invoke-static {p0, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v3, v0, v1, v2, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private synthetic g(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    return-void
.end method

.method private h()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 306
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$2;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 317
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$3;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private i()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 335
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$4;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$5;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public static synthetic lambda$2ZepaALwnTxHUpHtvX40N4CfGtM(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->e(Z)V

    return-void
.end method

.method public static synthetic lambda$cLlMrtj8OSzMdwiNQYHg6MarDjg(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->f(Z)V

    return-void
.end method

.method public static synthetic lambda$ranlkqjM1bzxzD99u5kjNwnCea4(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->d(Z)V

    return-void
.end method

.method public static synthetic lambda$xlfwaDzBjMFpdGiACziW5O8brf0(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->g(Z)V

    return-void
.end method

.method private setTextForDraw(Ljava/lang/String;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->p:Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->q:F

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->s:F

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c2d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->r:F

    .line 242
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->v:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->w:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x28

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->w:J

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v0, 0x6

    .line 122
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->g:[I

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->h:I

    .line 124
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected a(I)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(I)V

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->k:I

    .line 254
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->l:I

    .line 255
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setTextForDraw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 440
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleSpace(I)V

    .line 441
    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setRemainder(I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 151
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$2ZepaALwnTxHUpHtvX40N4CfGtM;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$2ZepaALwnTxHUpHtvX40N4CfGtM;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$ranlkqjM1bzxzD99u5kjNwnCea4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$ranlkqjM1bzxzD99u5kjNwnCea4;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V

    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTextWithAnim, showText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbShowText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProParamScaleBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 284
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    .line 285
    iput-boolean p2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->y:Z

    .line 287
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->y:Z

    if-eqz p1, :cond_4

    .line 288
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    :goto_0
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->z:I

    .line 290
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    if-eqz p1, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->h()V

    goto :goto_1

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    const-string p1, "showTextWithAnim, cancel: "

    .line 294
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 299
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->i()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected b()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b()V

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZZ)V

    return-void
.end method

.method protected c()V
    .locals 0

    .line 419
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c()V

    .line 421
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c:I

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    .line 469
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->t:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    .line 470
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->v:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;

    .line 472
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 363
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 366
    iget v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->r:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c2d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->r:F

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->z:I

    if-lez v0, :cond_3

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 373
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->r:F

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getRotation()F

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    const v2, 0x7f070c2c

    if-nez v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 377
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->q:F

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 378
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->s:F

    add-float/2addr v1, v2

    .line 377
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 381
    iget v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->q:F

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 382
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->s:F

    add-float/2addr v1, v2

    .line 381
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Landroid/graphics/Canvas;FF)V

    .line 385
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public setAutoState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->C:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->k:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;->a(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->C:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->l:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;->a(I)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->t:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    if-eqz v0, :cond_1

    .line 143
    iget v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->l:I

    invoke-interface {v0, p0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;->onValueChanged(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V

    :cond_1
    :goto_0
    xor-int/lit8 v0, p1, 0x1

    .line 147
    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$xlfwaDzBjMFpdGiACziW5O8brf0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$xlfwaDzBjMFpdGiACziW5O8brf0;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V

    new-instance v2, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$cLlMrtj8OSzMdwiNQYHg6MarDjg;

    invoke-direct {v2, p0, p1}, Lcom/oplus/camera/timelapsepro/-$$Lambda$TimeLapseProParamScaleBar$cLlMrtj8OSzMdwiNQYHg6MarDjg;-><init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;Z)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setCurrentIndex(I)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setTextForDraw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDefaultIndex(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->k:I

    return-void
.end method

.method public setLineSpace(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->e:I

    return-void
.end method

.method public setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->u:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    return-void
.end method

.method public setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->t:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    return-void
.end method

.method public setScaleSpace(I)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->f:I

    return-void
.end method

.method public setShowText(Z)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowText, showText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProParamScaleBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 265
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->y:Z

    .line 268
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->x:Z

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :cond_1
    iput v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->z:I

    .line 270
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->invalidate()V

    return-void
.end method

.method public setTextUpdateListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->v:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;

    return-void
.end method

.method public setValueList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/camera/timelapsepro/a/g;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->n:Ljava/util/List;

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setLevelNum(I)V

    .line 168
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->m:Z

    if-eqz p1, :cond_0

    .line 169
    iget p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setTextForDraw(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    iget p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->k:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setTextForDraw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

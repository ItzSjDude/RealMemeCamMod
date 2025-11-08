.class public Lcom/oplus/camera/ui/widget/XPanExposureWheel;
.super Lcom/oplus/camera/ui/widget/f;
.source "XPanExposureWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/XPanExposureWheel$a;,
        Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "XPanExposureWheel"

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I


# instance fields
.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/Rect;

.field private o:Ljava/lang/String;

.field private final p:Landroid/graphics/Paint;

.field private q:Lcom/oplus/camera/ui/widget/g;

.field private r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

.field private s:Lcom/oplus/camera/ui/widget/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->c:I

    .line 35
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->d:I

    .line 37
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->e:I

    .line 39
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->f:I

    .line 41
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d63

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->g:I

    .line 43
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v0, p0

    .line 122
    invoke-direct/range {p0 .. p2}, Lcom/oplus/camera/ui/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "-3.0"

    const-string v3, "-2.7"

    const-string v4, "-2.3"

    const-string v5, "-2.0"

    const-string v6, "-1.7"

    const-string v7, "-1.3"

    const-string v8, "-1.0"

    const-string v9, "-0.7"

    const-string v10, "-0.3"

    const-string v11, "+0.3"

    const-string v12, "+0.7"

    const-string v13, "+1.0"

    const-string v14, "+1.3"

    const-string v15, "+1.7"

    const-string v16, "+2.0"

    const-string v17, "+2.3"

    const-string v18, "+2.7"

    const-string v19, "+3.0"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->i:Ljava/util/ArrayList;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->k:Z

    .line 50
    iput v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->l:I

    const/4 v1, 0x0

    .line 51
    iput-object v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->m:Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->n:Landroid/graphics/Rect;

    const-string v2, "0.0"

    .line 53
    iput-object v2, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    .line 54
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->p:Landroid/graphics/Paint;

    .line 55
    iput-object v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    .line 56
    iput-object v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    .line 62
    new-instance v1, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;

    invoke-direct {v1, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;-><init>(Lcom/oplus/camera/ui/widget/XPanExposureWheel;)V

    iput-object v1, v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->s:Lcom/oplus/camera/ui/widget/f$a;

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->d()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/XPanExposureWheel;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->l:I

    return p0
.end method

.method private a(I)V
    .locals 7

    .line 149
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x5

    .line 150
    div-int/lit8 v1, v1, 0xa

    .line 151
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    .line 153
    sget-object v4, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWheelValueChanged() - getMaxValue(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", wheelValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", invertedWheelValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mappingNowValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-ge v0, v3, :cond_1

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;->onExposureChanged(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/widget/g;->a(I)V

    goto/16 :goto_0

    :cond_1
    if-ge v0, v2, :cond_3

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    if-eqz v0, :cond_2

    .line 167
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;->onExposureChanged(I)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/g;->a(I)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0xa

    if-ge v0, v2, :cond_5

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    if-eqz v0, :cond_4

    .line 174
    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;->onExposureChanged(I)V

    :cond_4
    const-string v0, "0.0"

    .line 177
    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/g;->a(I)V

    goto :goto_0

    :cond_5
    if-lt v0, v2, :cond_7

    .line 179
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_7

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    if-eqz v0, :cond_6

    .line 181
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;->onExposureChanged(I)V

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->i:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/g;->a(I)V

    goto :goto_0

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    if-eqz v0, :cond_8

    .line 188
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;->onExposureChanged(I)V

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/g;->a(I)V

    .line 196
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->l:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/XPanExposureWheel;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(I)V

    return-void
.end method

.method private static synthetic b(I)Z
    .locals 0

    .line 143
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->p:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d5c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 132
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0806a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->m:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->s:Lcom/oplus/camera/ui/widget/f$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(Lcom/oplus/camera/ui/widget/f$a;)V

    .line 134
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 235
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setWheelLengthRatio(F)V

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setFadingEdgeLength(I)V

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/oplus/camera/ui/widget/g;

    invoke-direct {v0}, Lcom/oplus/camera/ui/widget/g;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->q:Lcom/oplus/camera/ui/widget/g;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setCurrentValueIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    new-instance v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$a;-><init>(Lcom/oplus/camera/ui/widget/XPanExposureWheel;Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setWheelDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    .line 248
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setMaxValue(I)V

    .line 249
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    return-void
.end method

.method public static synthetic lambda$KTFn2bAysia70b-MCm2AjNFQaGA(I)Z
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->b(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 143
    invoke-static {p1, p2}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object p2, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$KTFn2bAysia70b-MCm2AjNFQaGA;->INSTANCE:Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$KTFn2bAysia70b-MCm2AjNFQaGA;

    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/oplus/camera/ui/widget/-$$Lambda$hobVwP6p8vZmS_btJelTxt7Jx3k;

    invoke-direct {v0, p2}, Lcom/oplus/camera/ui/widget/-$$Lambda$hobVwP6p8vZmS_btJelTxt7Jx3k;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 144
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->r:Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 202
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->k:Z

    .line 205
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->e()V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/widget/f;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->k:Z

    if-nez v0, :cond_1

    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sget v2, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->e:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 215
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->c:I

    add-int/2addr v2, v3

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sget v4, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->e:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 217
    sget v4, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->d:I

    add-int/2addr v4, v2

    .line 218
    iget-object v5, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->n:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 220
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->n:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 226
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->g:I

    add-int/2addr v2, v3

    .line 227
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->h:I

    add-int/2addr v0, v3

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x42b40000    # 90.0f

    int-to-float v4, v1

    int-to-float v0, v0

    .line 229
    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->o:Ljava/lang/String;

    sget v3, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->f:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.class public Lcom/oplus/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "EffectiveAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationView$b;,
        Lcom/oplus/anim/EffectiveAnimationView$a;,
        Lcom/oplus/anim/EffectiveAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EffectiveAnimationView"


# instance fields
.field private final b:Lcom/oplus/anim/b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/oplus/anim/n;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/oplus/anim/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/f<",
            "Lcom/oplus/anim/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/oplus/anim/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/oplus/anim/b;

    invoke-direct {p1}, Lcom/oplus/anim/b;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->e:Z

    .line 66
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Z

    .line 67
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->g:Z

    .line 68
    sget-object p1, Lcom/oplus/anim/n;->AUTOMATIC:Lcom/oplus/anim/n;

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Ljava/util/Set;

    const/4 p1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Lcom/oplus/anim/b;

    invoke-direct {p1}, Lcom/oplus/anim/b;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->e:Z

    .line 66
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Z

    .line 67
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->g:Z

    .line 68
    sget-object p1, Lcom/oplus/anim/n;->AUTOMATIC:Lcom/oplus/anim/n;

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Ljava/util/Set;

    .line 85
    invoke-direct {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p1, Lcom/oplus/anim/b;

    invoke-direct {p1}, Lcom/oplus/anim/b;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->e:Z

    .line 66
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Z

    .line 67
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->g:Z

    .line 68
    sget-object p1, Lcom/oplus/anim/n;->AUTOMATIC:Lcom/oplus/anim/n;

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Ljava/util/Set;

    .line 90
    invoke-direct {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 96
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 97
    sget v2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 98
    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawRes and fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 103
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 108
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 113
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 119
    :cond_4
    :goto_1
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 120
    iput-boolean v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Z

    .line 121
    iput-boolean v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->g:Z

    .line 124
    :cond_5
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0, v3}, Lcom/oplus/anim/b;->e(I)V

    .line 128
    :cond_6
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 133
    :cond_7
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    .line 138
    :cond_8
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 139
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setSpeed(F)V

    .line 142
    :cond_9
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 143
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_progress:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    .line 144
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->a(Z)V

    .line 146
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    new-instance v0, Lcom/oplus/anim/o;

    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    .line 148
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/oplus/anim/o;-><init>(I)V

    .line 149
    new-instance v3, Lcom/oplus/anim/c/f;

    const-string v4, "**"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oplus/anim/c/f;-><init>([Ljava/lang/String;)V

    .line 150
    new-instance v4, Lcom/oplus/anim/g/b;

    invoke-direct {v4, v0}, Lcom/oplus/anim/g/b;-><init>(Ljava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/oplus/anim/d;->z:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v3, v0, v4}, Lcom/oplus/anim/EffectiveAnimationView;->a(Lcom/oplus/anim/c/f;Ljava/lang/Object;Lcom/oplus/anim/g/b;)V

    .line 153
    :cond_a
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/anim/b;->d(F)V

    .line 156
    :cond_b
    sget v0, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    invoke-static {}, Lcom/oplus/anim/n;->values()[Lcom/oplus/anim/n;

    move-result-object v0

    .line 158
    sget v2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    .line 161
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 800
    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:Lcom/oplus/anim/a;

    .line 801
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->d()V

    return-void
.end method

.method private h()V
    .locals 7

    .line 824
    sget-boolean v0, Lcom/oplus/anim/f/f;->b:Z

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    invoke-virtual {v1}, Lcom/oplus/anim/n;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->a(Ljava/lang/String;)V

    .line 827
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$2;->a:[I

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    invoke-virtual {v1}, Lcom/oplus/anim/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    goto :goto_2

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:Lcom/oplus/anim/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/anim/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-ge v0, v6, :cond_2

    goto :goto_0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:Lcom/oplus/anim/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oplus/anim/a;->b()I

    move-result v0

    if-le v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    .line 844
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 835
    :cond_5
    invoke-virtual {p0, v5, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 832
    :cond_6
    invoke-virtual {p0, v3, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 829
    :cond_7
    invoke-virtual {p0, v1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private setCompositionTask(Lcom/oplus/anim/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/f<",
            "Lcom/oplus/anim/a;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->g()V

    .line 350
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->a()V

    .line 351
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$b;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    .line 352
    invoke-virtual {p1, v0}, Lcom/oplus/anim/f;->a(Lcom/oplus/anim/c;)Lcom/oplus/anim/f;

    move-result-object p1

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$a;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$a;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    .line 353
    invoke-virtual {p1, v0}, Lcom/oplus/anim/f;->b(Lcom/oplus/anim/c;)Lcom/oplus/anim/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Lcom/oplus/anim/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Lcom/oplus/anim/f;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/oplus/anim/f;->a()Lcom/oplus/anim/f;

    .line 362
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Lcom/oplus/anim/f;

    invoke-virtual {p0}, Lcom/oplus/anim/f;->b()Lcom/oplus/anim/f;

    :cond_0
    return-void
.end method

.method public a(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 0

    .line 333
    invoke-static {p1, p2}, Lcom/oplus/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/f;)V

    return-void
.end method

.method public a(Lcom/oplus/anim/c/f;Ljava/lang/Object;Lcom/oplus/anim/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/c/f;",
            "TT;",
            "Lcom/oplus/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 707
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/c/f;Ljava/lang/Object;Lcom/oplus/anim/g/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->a(Landroid/util/JsonReader;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->e()V

    .line 423
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->g()V

    .line 433
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->n()Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->s()V

    .line 752
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->t()V

    .line 758
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public getComposition()Lcom/oplus/anim/a;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:Lcom/oplus/anim/a;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 787
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:Lcom/oplus/anim/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/a;->e()F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->k()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFrame()F
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->i()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->h()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/m;
    .locals 0

    .line 796
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->c()Lcom/oplus/anim/m;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->u()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->m()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->l()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->q()F

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->j()F

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    if-ne v0, v1, :cond_0

    .line 189
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 254
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->b()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->e()V

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Z

    .line 265
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 212
    instance-of v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 213
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 217
    :cond_0
    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    .line 218
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 219
    iget-object v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 223
    :cond_1
    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationResId:I

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->d:I

    .line 224
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->d:I

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    .line 227
    :cond_2
    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    .line 228
    iget-boolean v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->b()V

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    iget-object v1, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/b;->a(Ljava/lang/String;)V

    .line 232
    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 233
    iget p1, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 198
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 200
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 201
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->d:I

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationResId:I

    .line 202
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->u()F

    move-result v0

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->progress:F

    .line 203
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->n()Z

    move-result v0

    iput-boolean v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    .line 204
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0}, Lcom/oplus/anim/b;->l()I

    move-result v0

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    .line 206
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0}, Lcom/oplus/anim/b;->m()I

    move-result p0

    iput p0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 239
    iget-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->e:Z

    .line 241
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->c()V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->e:Z

    .line 246
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimation(I)V
    .locals 1

    .line 291
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->d:I

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/g;->a(Landroid/content/Context;I)Lcom/oplus/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/f;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->d:I

    .line 305
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/g;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/f;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/f;)V

    return-void
.end method

.method public setAnimationUsingActivityContext(I)V
    .locals 1

    .line 297
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->d:I

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/g;->b(Landroid/content/Context;I)Lcom/oplus/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/f;)V

    return-void
.end method

.method public setComposition(Lcom/oplus/anim/a;)V
    .locals 3

    .line 377
    sget-boolean v0, Lcom/oplus/anim/f/f;->b:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Composition \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/f/f;->b(Ljava/lang/String;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/b;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 381
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:Lcom/oplus/anim/a;

    .line 382
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/a;)Z

    move-result v0

    .line 383
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    .line 384
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->requestLayout()V

    .line 396
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/l;

    .line 397
    invoke-interface {v0, p1}, Lcom/oplus/anim/l;->a(Lcom/oplus/anim/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFontAssetDelegate(Lcom/oplus/anim/i;)V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/i;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->c(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/oplus/anim/j;)V
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/j;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->a()V

    .line 181
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->a()V

    .line 175
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->a()V

    .line 169
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->b(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->b(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->b(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->e(F)V

    return-void
.end method

.method public setRenderMode(Lcom/oplus/anim/n;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:Lcom/oplus/anim/n;

    .line 820
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->e(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->d(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/b;->d(F)V

    .line 743
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 744
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->c(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/oplus/anim/p;)V
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/b;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/p;)V

    return-void
.end method

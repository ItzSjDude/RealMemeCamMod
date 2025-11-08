.class public Lcom/oplus/camera/t/a;
.super Ljava/lang/Object;
.source "FixFocusControl.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Z

.field private g:Lcom/oplus/camera/e/d;

.field private h:Landroid/content/SharedPreferences;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/oplus/camera/t/d;

.field private l:Landroid/app/Activity;

.field private m:Lcom/oplus/camera/ui/CameraUIInterface;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/oplus/camera/t/a;->a:I

    const-string v1, "1"

    .line 43
    iput-object v1, p0, Lcom/oplus/camera/t/a;->b:Ljava/lang/String;

    const-string v1, "28"

    .line 44
    iput-object v1, p0, Lcom/oplus/camera/t/a;->c:Ljava/lang/String;

    const-string v1, "169"

    .line 45
    iput-object v1, p0, Lcom/oplus/camera/t/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/oplus/camera/t/a;->e:[Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/t/a;->f:Z

    .line 48
    iput-object v1, p0, Lcom/oplus/camera/t/a;->g:Lcom/oplus/camera/e/d;

    .line 49
    iput-object v1, p0, Lcom/oplus/camera/t/a;->h:Landroid/content/SharedPreferences;

    .line 50
    iput-object v1, p0, Lcom/oplus/camera/t/a;->i:Ljava/util/ArrayList;

    .line 51
    iput-object v1, p0, Lcom/oplus/camera/t/a;->j:Ljava/util/ArrayList;

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/t/a;->l:Landroid/app/Activity;

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/t/a;->m:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/t/a;->g:Lcom/oplus/camera/e/d;

    .line 58
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/t/a;->h:Landroid/content/SharedPreferences;

    .line 59
    iput-object p4, p0, Lcom/oplus/camera/t/a;->m:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 60
    iput-object p3, p0, Lcom/oplus/camera/t/a;->l:Landroid/app/Activity;

    .line 62
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    const-string p2, "street"

    invoke-static {p2, p1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/t/a;->a(FF)V

    .line 64
    invoke-direct {p0}, Lcom/oplus/camera/t/a;->h()V

    .line 65
    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->d()V

    return-void
.end method

.method private a(FF)V
    .locals 10

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/t/a;->i:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/t/a;->j:Ljava/util/ArrayList;

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move v9, p2

    move p2, p1

    move p1, v9

    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    sub-float p2, p1, p2

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p2, v0

    const v0, 0x3ca3d70a    # 0.02f

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x32

    if-gt v3, v4, :cond_4

    int-to-float v4, v3

    mul-float v5, p2, v4

    sub-float v5, p1, v5

    .line 92
    iget-object v6, p0, Lcom/oplus/camera/t/a;->i:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v5, 0x42340000    # 45.0f

    if-ltz v3, :cond_2

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_2

    mul-float v6, v0, v4

    goto :goto_1

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v4, v5

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    .line 100
    :goto_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v8, v2

    const-string v6, "%.2f"

    invoke-static {v7, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 103
    iget-object v4, p0, Lcom/oplus/camera/t/a;->j:Ljava/util/ArrayList;

    const-string v5, "1.00m"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_3
    iget-object v4, p0, Lcom/oplus/camera/t/a;->j:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->a()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/a;->a:I

    return-void

    .line 79
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generateFocusValues, return, minFocusDistance: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FixFocusCtrol"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/oplus/camera/t/a;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/t/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 147
    iget-object p0, p0, Lcom/oplus/camera/t/a;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private h()V
    .locals 7

    const-string v0, "com.oplus.edge.filter.line.size"

    .line 188
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/a;->b:Ljava/lang/String;

    const-string v0, "com.oplus.edge.filter.color"

    .line 190
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 192
    array-length v5, v0

    if-ne v1, v5, :cond_0

    .line 193
    aget v5, v0, v4

    aget v6, v0, v3

    aget v0, v0, v2

    invoke-static {v5, v6, v0}, Lcom/oplus/camera/util/Util;->b(III)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    array-length v5, v0

    if-ne v2, v5, :cond_0

    .line 196
    aget-object v5, v0, v4

    iput-object v5, p0, Lcom/oplus/camera/t/a;->c:Ljava/lang/String;

    .line 197
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/oplus/camera/t/a;->d:Ljava/lang/String;

    .line 201
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/t/a;->b:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/oplus/camera/t/a;->c:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/oplus/camera/t/a;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oplus/camera/t/a;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 139
    iget-object p0, p0, Lcom/oplus/camera/t/a;->h:Landroid/content/SharedPreferences;

    const-string v0, "pref_fix_focus_value"

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChange value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FixFocusCtrol"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/a;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    invoke-direct {p0, p1}, Lcom/oplus/camera/t/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/d;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/a;->b(I)V

    .line 121
    iget-object p0, p0, Lcom/oplus/camera/t/a;->g:Lcom/oplus/camera/e/d;

    if-eqz p0, :cond_0

    .line 122
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->a(FZ)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 181
    iput-boolean p1, p0, Lcom/oplus/camera/t/a;->f:Z

    .line 182
    iget-object p1, p0, Lcom/oplus/camera/t/a;->g:Lcom/oplus/camera/e/d;

    iget-boolean v0, p0, Lcom/oplus/camera/t/a;->f:Z

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->E(Z)V

    .line 183
    iget-object p1, p0, Lcom/oplus/camera/t/a;->g:Lcom/oplus/camera/e/d;

    iget-object v0, p0, Lcom/oplus/camera/t/a;->e:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a([Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/oplus/camera/t/a;->g:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/t/a;->h:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_fix_focus_value"

    .line 133
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "pref_fix_focus_manual_state"

    const/4 v0, 0x1

    .line 134
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->f()V

    .line 157
    iget v0, p0, Lcom/oplus/camera/t/a;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 158
    iput v0, p0, Lcom/oplus/camera/t/a;->a:I

    .line 159
    invoke-virtual {p0, v1}, Lcom/oplus/camera/t/a;->a(Z)V

    .line 160
    iget v0, p0, Lcom/oplus/camera/t/a;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/a;->a(I)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->f()V

    .line 170
    iget v0, p0, Lcom/oplus/camera/t/a;->a:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 171
    iput v0, p0, Lcom/oplus/camera/t/a;->a:I

    .line 172
    invoke-virtual {p0, v1}, Lcom/oplus/camera/t/a;->a(Z)V

    .line 173
    iget v0, p0, Lcom/oplus/camera/t/a;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/a;->a(I)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 5

    .line 205
    new-instance v0, Lcom/oplus/camera/t/d;

    iget-object v1, p0, Lcom/oplus/camera/t/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/t/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/t/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/d;->setVerticalDraw(Z)V

    .line 208
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t/d;->setIncludeFontPadding(Z)V

    .line 209
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const v4, 0x7f070b1d

    .line 210
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 209
    invoke-virtual {v1, v3, v4}, Lcom/oplus/camera/t/d;->setTextSize(IF)V

    .line 211
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    iget-object v3, p0, Lcom/oplus/camera/t/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t/d;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t/d;->setGravity(I)V

    .line 213
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const v3, 0x7f060470

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t/d;->setTextColor(I)V

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t/d;->setId(I)V

    .line 215
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 216
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xe

    .line 217
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0x7f070b27

    .line 218
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070b24

    .line 219
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/t/a;->m:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const-string v1, "street"

    const/4 v3, 0x4

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 226
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/d;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/t/d;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->a()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/t/a;->a:I

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    iget v1, p0, Lcom/oplus/camera/t/a;->a:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/t/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/d;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p0, p0, Lcom/oplus/camera/t/a;->k:Lcom/oplus/camera/t/d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/d;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 239
    iget-object p0, p0, Lcom/oplus/camera/t/a;->h:Landroid/content/SharedPreferences;

    const-string v0, "pref_fix_focus_manual_state"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

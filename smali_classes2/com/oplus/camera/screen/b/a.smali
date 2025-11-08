.class public abstract Lcom/oplus/camera/screen/b/a;
.super Lcom/oplus/camera/screen/b/o;
.source "BaseScreenMode.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/screen/c;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field private d:Z

.field private e:Lcom/oplus/camera/screen/ScreenRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/o;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/screen/b/a;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/oplus/camera/screen/b/a;->b:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/screen/b/a;->c:I

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/screen/b/a;->d:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)I
    .locals 0

    return p2
.end method

.method public abstract a(Z)I
.end method

.method public a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;
    .locals 1

    .line 134
    new-instance p0, Lcom/oplus/camera/ui/preview/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/w;-><init>(II)V

    return-object p0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/oplus/camera/screen/b/a;->d:Z

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/oplus/camera/screen/b/a;->d:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/oplus/camera/screen/f;->a:I

    .line 78
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/oplus/camera/screen/f;->b:I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sScreenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/screen/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sScreenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/screen/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseScreenMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p2}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p2, v0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    .line 86
    invoke-virtual {p2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/screen/b/a;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    invoke-virtual {p2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/screen/b/a;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    invoke-virtual {p2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->requestLayout()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    const/4 p1, 0x2

    .line 59
    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p1, v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->T()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    iput-object p1, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/screen/b/a;->a:Ljava/util/Map;

    const p1, 0x7f0901cd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;)V
    .locals 2

    const/16 p0, 0x5a

    .line 270
    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    const/16 v0, 0xc

    .line 271
    iput v0, p1, Lcom/oplus/camera/p$a;->a:I

    const v0, 0x7f0707b3

    .line 272
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 273
    invoke-static {}, Lcom/oplus/camera/util/Util;->aG()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/oplus/camera/p$a;->c:I

    const v0, 0x7f0707b4

    .line 274
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/p$a;->d:I

    .line 275
    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;II)V
    .locals 4

    const p0, 0x7f070999

    .line 253
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f070998

    .line 254
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f070614

    .line 255
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    const v2, 0x7f070613

    .line 256
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v2

    .line 258
    rem-int/lit16 v3, p3, 0xb4

    if-nez v3, :cond_0

    add-int/2addr p2, p0

    .line 259
    iput p2, p1, Lcom/oplus/camera/p$a;->b:I

    .line 260
    iput v0, p1, Lcom/oplus/camera/p$a;->d:I

    .line 261
    iput p3, p1, Lcom/oplus/camera/p$a;->e:I

    goto :goto_0

    :cond_0
    sub-int v3, v1, v2

    .line 263
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    add-int/2addr v3, p0

    iput v3, p1, Lcom/oplus/camera/p$a;->b:I

    sub-int/2addr v2, v1

    .line 264
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iput v2, p1, Lcom/oplus/camera/p$a;->d:I

    add-int/lit16 p3, p3, 0xb4

    .line 265
    rem-int/lit16 p3, p3, 0x168

    iput p3, p1, Lcom/oplus/camera/p$a;->e:I

    :goto_0
    return-void
.end method

.method protected abstract a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
.end method

.method public varargs a([Landroid/view/View;)V
    .locals 5

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 66
    iget-object v3, p0, Lcom/oplus/camera/screen/b/a;->a:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/screen/c;

    if-eqz v3, :cond_0

    .line 69
    invoke-static {v2, v3}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;Lcom/oplus/camera/screen/c;)V

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/screen/b/a;->b:I

    return p0
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/a;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 2

    const p0, 0x7f0900a1

    const v0, 0x7f090384

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f08063f

    .line 284
    invoke-static {p1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 285
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    goto :goto_1

    :cond_1
    :goto_0
    const p2, 0x7f080641

    .line 281
    invoke-static {p1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 282
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    :goto_1
    return-void
.end method

.method public c(Landroid/app/Activity;)I
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070974

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "idPhoto"

    .line 121
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "sticker"

    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "breenoScan"

    .line 123
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public d()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 208
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0708ca

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 210
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 211
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    .line 212
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f070180

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 214
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v0

    add-int/2addr v0, p0

    const/4 p0, 0x0

    .line 215
    invoke-virtual {v1, p0, p0, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method public d(Landroid/app/Activity;)V
    .locals 8

    const v0, 0x7f090196

    .line 147
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    .line 152
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 153
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    new-instance v5, Lcom/oplus/camera/screen/ScreenRelativeLayout;

    invoke-direct {v5, p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    .line 155
    iget-object v5, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    invoke-virtual {v5, v0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setId(I)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setVisibility(I)V

    .line 160
    new-instance v0, Lcom/oplus/camera/ui/inverse/InverseRelativeLayout;

    invoke-direct {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseRelativeLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09019d

    .line 161
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseRelativeLayout;->setId(I)V

    .line 162
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f060450

    .line 164
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseRelativeLayout;->setBackgroundResource(I)V

    .line 165
    iget-object v2, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v2, p1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09019c

    .line 168
    invoke-virtual {v2, v5}, Landroidx/viewpager2/widget/ViewPager2;->setId(I)V

    .line 169
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    .line 171
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xe

    .line 172
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    invoke-virtual {v2, v5}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    .line 174
    invoke-virtual {v2, v5}, Landroidx/viewpager2/widget/ViewPager2;->setHorizontalFadingEdgeEnabled(Z)V

    .line 175
    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOverScrollMode(I)V

    .line 176
    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->setSaveEnabled(Z)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseRelativeLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance v0, Lcom/oplus/camera/ui/j;

    invoke-direct {v0, p1}, Lcom/oplus/camera/ui/j;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090198

    .line 180
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/j;->setId(I)V

    .line 181
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const v5, 0x7f07058d

    .line 182
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v7, 0x7f07058c

    .line 183
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v5, 0x7f070594

    .line 184
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const v5, 0x7f070595

    .line 185
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 v5, 0xc

    .line 186
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/j;->setOrientation(I)V

    const v2, 0x7f08022c

    .line 189
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/j;->setBackgroundResource(I)V

    .line 190
    iget-object v2, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-direct {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09019e

    .line 193
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setId(I)V

    .line 194
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const v5, 0x7f0705a1

    .line 195
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v7, 0x7f0705a0

    .line 196
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f1001ca

    .line 200
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(I)V

    const v2, 0x7f07059f

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    const v1, 0x7f06009a

    .line 202
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 203
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setGravity(I)V

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/screen/b/a;->e:Lcom/oplus/camera/screen/ScreenRelativeLayout;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 221
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 222
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object p0
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090193

    .line 305
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 308
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/b/a;->a(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 311
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const-string p0, "BaseScreenMode"

    const-string p1, "relayoutPreviewFrame, layoutParams is null"

    .line 313
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 231
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0706fc

    .line 232
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 233
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    .line 234
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p0
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    const p0, 0x7f070b2f

    .line 240
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f0706fc

    .line 241
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0709ad

    .line 242
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 243
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    add-int/2addr p0, v1

    invoke-direct {v2, v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p0, 0x0

    .line 245
    invoke-virtual {v2, p0, p0, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0xe

    .line 246
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xc

    .line 247
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v2
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "common"

    return-object p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 295
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

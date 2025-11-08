.class public Lcom/oplus/camera/filmvideomode/c;
.super Lcom/oplus/camera/professional/LevelPanel;
.source "FilmLevelPanel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;ZZLcom/oplus/camera/professional/z;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/professional/LevelPanel;-><init>(Landroid/content/Context;ZLandroid/os/Handler;ZZLcom/oplus/camera/professional/z;Landroid/content/SharedPreferences;)V

    .line 29
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->b()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->a()V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 211
    sget-object p0, Lcom/oplus/camera/filmvideomode/c;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/z;->a()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pref_film_mode_exposure"

    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 182
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/filmvideomode/c;->a(Lcom/oplus/camera/professional/z;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/filmvideomode/c;->a(Lcom/oplus/camera/professional/z;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v3}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    .line 196
    invoke-virtual {v3}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    invoke-direct {p0, v1}, Lcom/oplus/camera/filmvideomode/c;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 198
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 199
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move-object p0, v2

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/c;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected a()V
    .locals 16

    move-object/from16 v0, p0

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070715

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 43
    iget-object v5, v0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    invoke-virtual {v5}, Lcom/oplus/camera/professional/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xa

    .line 44
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v7, 0x15

    .line 45
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v7, 0xc

    .line 46
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x14

    .line 47
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    invoke-virtual {v8, v5}, Lcom/oplus/camera/professional/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v8, v9}, Lcom/oplus/camera/professional/a;->setRotation(F)V

    .line 51
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v8, v10}, Lcom/oplus/camera/professional/a;->setTranslationX(F)V

    .line 52
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v12, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v10, v12

    neg-int v10, v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    invoke-virtual {v8, v10}, Lcom/oplus/camera/professional/a;->setTranslationY(F)V

    .line 55
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v8}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    .line 56
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0709b0

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 58
    invoke-virtual {v8}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v10

    const/4 v13, 0x0

    if-gez v10, :cond_0

    move v10, v13

    :cond_0
    add-int/2addr v4, v10

    .line 64
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 65
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 66
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v3, v8}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setTranslationY(F)V

    .line 68
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setHorizontalFadingEdgeEnabled(Z)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 72
    iget-object v4, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v4}, Lcom/oplus/camera/professional/w;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 74
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f0706a6

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f0706a3

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 77
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v8, v4}, Lcom/oplus/camera/professional/w;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    const v15, 0x800015

    invoke-virtual {v8, v15}, Lcom/oplus/camera/professional/w;->setGravity(I)V

    .line 79
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v8, v9}, Lcom/oplus/camera/professional/w;->setRotation(F)V

    .line 80
    iget-object v8, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v9, v4

    int-to-float v4, v9

    div-float/2addr v4, v11

    int-to-float v1, v1

    add-float/2addr v4, v1

    int-to-float v3, v3

    add-float/2addr v4, v3

    int-to-float v2, v2

    add-float/2addr v4, v2

    neg-float v4, v4

    invoke-virtual {v8, v4}, Lcom/oplus/camera/professional/w;->setTranslationY(F)V

    .line 82
    iget-object v4, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v4, v8}, Lcom/oplus/camera/professional/w;->setTranslationX(F)V

    .line 83
    iget-object v4, v0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0704ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    .line 83
    invoke-virtual {v4, v13, v8}, Lcom/oplus/camera/professional/w;->setTextSize(IF)V

    .line 87
    iget-object v4, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 88
    iget-object v4, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 90
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 93
    iget-object v6, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v6, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    iget-object v6, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setRotation(F)V

    .line 96
    iget-object v6, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v7, v4

    int-to-float v4, v7

    div-float/2addr v4, v11

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    add-float/2addr v4, v2

    neg-float v1, v4

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 98
    iget-object v1, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v10, v2

    int-to-float v2, v10

    div-float/2addr v2, v11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 99
    iget-object v1, v0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 99
    invoke-virtual {v1, v13, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 11

    .line 105
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070504

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070502

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    invoke-static {v3}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    const/16 v3, 0xc

    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    .line 112
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 114
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070500

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 115
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    invoke-virtual {v4, v2}, Lcom/oplus/camera/professional/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->e:Lcom/oplus/camera/professional/a;

    const v4, 0x7f0801cf

    invoke-virtual {v2, v4}, Lcom/oplus/camera/professional/a;->setBackgroundResource(I)V

    .line 119
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    .line 120
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 122
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 123
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/c;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setHorizontalFadingEdgeEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/w;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    invoke-static {v2}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 132
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070503

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 133
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    const/16 v5, 0x51

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/w;->setGravity(I)V

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v8, v4}, Lcom/oplus/camera/professional/w;->setShadowLayer(FFFI)V

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->c:Lcom/oplus/camera/professional/w;

    .line 138
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0704ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 137
    invoke-virtual {v0, v4, v9}, Lcom/oplus/camera/professional/w;->setTextSize(IF)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    iget-object v9, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 148
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 149
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8, v8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/c;->d:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 152
    invoke-virtual {v0, v4, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method protected getPreferencesKey()Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

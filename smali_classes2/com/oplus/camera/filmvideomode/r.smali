.class public Lcom/oplus/camera/filmvideomode/r;
.super Lcom/oplus/camera/filmvideomode/q;
.source "FilmUIControlV2Rack.java"


# instance fields
.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/filmvideomode/q;-><init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->z:Landroid/widget/RelativeLayout;

    .line 29
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->b:Landroid/app/Activity;

    const p2, 0x7f0900a8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->z:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private C()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    const/16 v1, 0x8

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/filmvideomode/f;->setMenuItemClickListener(Lcom/oplus/camera/filmvideomode/f$a;)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/f;->setMenuItemClickListener(Lcom/oplus/camera/filmvideomode/f$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "FilmUIControlV2Rack"

    const-string v1, "initMenuList"

    .line 50
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const/4 v3, 0x1

    .line 55
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->c()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f080582

    .line 57
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080265

    .line 58
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080264

    .line 59
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->f()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f08062f

    .line 64
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080630

    .line 65
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->b()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080536

    .line 71
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080535

    .line 72
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->d()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080465

    .line 77
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080464

    .line 78
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->e()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f0804be

    .line 83
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f080461

    .line 84
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/oplus/camera/filmvideomode/e;

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/r;->i:Landroid/content/SharedPreferences;

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/oplus/camera/filmvideomode/e;-><init>(Ljava/util/List;Landroid/content/SharedPreferences;ZZ)V

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/f;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/r;->i(Z)V

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(IIZ)Z
    .locals 5

    .line 235
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/r;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/oplus/camera/filmvideomode/r;->p:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/r;->r:Lcom/oplus/camera/filmvideomode/a$a;

    invoke-interface {p3}, Lcom/oplus/camera/filmvideomode/a$a;->a()Landroid/graphics/Rect;

    move-result-object p3

    .line 240
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/r;->q:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 243
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v1, p3}, Lcom/oplus/camera/ui/control/MainShutterButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 249
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 251
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/k;->a(Landroid/graphics/Rect;)V

    .line 256
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 258
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/r;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/r;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/SwitchCameraBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 262
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 264
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/r;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v4, :cond_4

    .line 265
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/r;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v4, v3}, Lcom/oplus/camera/ui/control/ThumbImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 268
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 269
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 270
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 271
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 272
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 122
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/r;->d:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/r;->d:Lcom/oplus/camera/capmode/a;

    .line 123
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/r;->d:Lcom/oplus/camera/capmode/a;

    .line 124
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    move v0, v1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->i()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 130
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/k;->a()Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v0, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 139
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p2, v0, p3}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    const/4 p2, 0x3

    if-ne p2, p3, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/r;->l(Z)V

    :cond_3
    const/4 p2, 0x4

    if-ne p2, p3, :cond_4

    .line 146
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/r;->k(Z)V

    :cond_4
    const/4 p2, 0x2

    if-ne p2, p3, :cond_5

    .line 150
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/r;->d(Lcom/oplus/camera/filmvideomode/g;)V

    :cond_5
    if-ne v1, p3, :cond_6

    .line 154
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/r;->a(Lcom/oplus/camera/filmvideomode/g;)V

    :cond_6
    if-nez p3, :cond_7

    .line 158
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/r;->j(Z)V

    .line 161
    :cond_7
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/r;->i:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_8

    .line 162
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/r;->i:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v0

    const-string v1, "pref_film_show_ui_default"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    :cond_8
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/oplus/camera/filmvideomode/r;->b(IZ)V

    return-void

    :cond_9
    :goto_1
    const-string p0, "FilmUIControlV2Rack"

    const-string p1, "onMenuItemClick is intercepted, return"

    .line 132
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/r;->C()V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/r;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result p1

    if-nez p1, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/r;->D()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/r;->i()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 39
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->b()V

    .line 45
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->g:Lcom/oplus/camera/filmvideomode/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/r;->j(Z)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 5

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/r;->o:Z

    .line 194
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/r;->C()V

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/16 v4, 0x8

    invoke-static {v0, v4, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 202
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/r;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 204
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v0, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 4

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/r;->o:Z

    .line 213
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/k;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/r;->D()V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/r;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz v1, :cond_1

    .line 218
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/r;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_1
    return-void
.end method

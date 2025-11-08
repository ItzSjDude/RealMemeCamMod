.class public Lcom/oplus/camera/filmvideomode/e;
.super Landroid/widget/BaseAdapter;
.source "FilmMenuAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/filmvideomode/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/SharedPreferences;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/filmvideomode/g;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "ZZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/e;->b:Z

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/e;->c:Landroid/content/SharedPreferences;

    .line 24
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/e;->d:Z

    .line 25
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/e;->a:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/e;->c:Landroid/content/SharedPreferences;

    .line 30
    iput-boolean p3, p0, Lcom/oplus/camera/filmvideomode/e;->d:Z

    .line 31
    iput-boolean p4, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    return-void
.end method

.method private a(Landroid/view/View;ILcom/oplus/camera/filmvideomode/g;)V
    .locals 3

    if-eqz p3, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 171
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->a()I

    move-result v2

    if-lez v2, :cond_3

    .line 180
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->c()I

    move-result v2

    if-lez v2, :cond_3

    .line 184
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 188
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->d()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0xff

    .line 191
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne v0, p2, :cond_6

    .line 200
    iget-boolean v1, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    if-nez v1, :cond_b

    :cond_6
    const/4 v1, 0x4

    if-ne v1, p2, :cond_7

    iget-boolean v1, p0, Lcom/oplus/camera/filmvideomode/e;->d:Z

    if-nez v1, :cond_b

    :cond_7
    const/4 v1, 0x2

    if-eq v1, p2, :cond_8

    const/4 v1, 0x3

    if-ne v1, p2, :cond_9

    :cond_8
    iget-boolean p2, p0, Lcom/oplus/camera/filmvideomode/e;->d:Z

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    if-nez p2, :cond_9

    goto :goto_4

    .line 207
    :cond_9
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->g()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->h()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    .line 204
    :cond_b
    :goto_4
    invoke-virtual {p3}, Lcom/oplus/camera/filmvideomode/g;->g()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/e;->c:Landroid/content/SharedPreferences;

    const-string p2, "pref_film_video_eis_and_flash_enable"

    .line 205
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_5

    :cond_c
    move v0, v2

    .line 204
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public a(I)Lcom/oplus/camera/filmvideomode/g;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/e;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/g;

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/filmvideomode/g;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/e;->a:Ljava/util/List;

    return-object p0
.end method

.method public a(Lcom/oplus/camera/filmvideomode/f;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/f;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/filmvideomode/e;->a(Landroid/view/View;ILcom/oplus/camera/filmvideomode/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/filmvideomode/f;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZZ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/filmvideomode/f;IZZ)V
    .locals 5

    .line 76
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1, p3, p4}, Lcom/oplus/camera/filmvideomode/e;->b(Lcom/oplus/camera/filmvideomode/f;ZZ)V

    return-void

    :cond_0
    if-eqz p1, :cond_7

    .line 81
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result p4

    if-lez p4, :cond_7

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move v1, p4

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_7

    .line 85
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v1

    .line 86
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p2

    .line 87
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/e;->b:Z

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 90
    invoke-virtual {p0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v3

    .line 91
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v4, p4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 92
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v4, p4

    :goto_5
    invoke-virtual {v3, v4}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_6
    invoke-virtual {p0, p1, p3, v0}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;ZZ)V

    :cond_7
    return-void
.end method

.method public a(Lcom/oplus/camera/filmvideomode/f;ZZ)V
    .locals 4

    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 60
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v2

    .line 61
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/f;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/oplus/camera/filmvideomode/e;->a(Landroid/view/View;ILcom/oplus/camera/filmvideomode/g;)V

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/g;->i()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/g;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    :cond_1
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/g;->f()Z

    move-result v3

    invoke-static {v2, v1, v3, v0, p3}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;IZIZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(Lcom/oplus/camera/filmvideomode/f;IZZ)V
    .locals 6

    if-eqz p1, :cond_7

    .line 116
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 117
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    if-eqz v0, :cond_7

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    .line 121
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p2

    .line 122
    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/e;->b:Z

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 125
    invoke-virtual {p0, v3}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v4

    .line 127
    iget-boolean v5, p0, Lcom/oplus/camera/filmvideomode/e;->e:Z

    if-eqz v5, :cond_2

    .line 128
    invoke-virtual {v4, v2}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 129
    invoke-virtual {v4, v1}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    .line 131
    :goto_2
    invoke-virtual {v4, v5}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    if-eqz v3, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    .line 132
    :goto_3
    invoke-virtual {v4, v5}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez p4, :cond_6

    .line 137
    invoke-virtual {p2, v1}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 140
    :cond_6
    invoke-virtual {p0, p1, p3, v2}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;ZZ)V

    :cond_7
    return-void
.end method

.method public b(Lcom/oplus/camera/filmvideomode/f;ZZ)V
    .locals 4

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/f;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/e;->b:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v3

    .line 107
    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 108
    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;ZZ)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/e;->b:Z

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 155
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p3

    .line 161
    invoke-direct {p0, p2, p1, p3}, Lcom/oplus/camera/filmvideomode/e;->a(Landroid/view/View;ILcom/oplus/camera/filmvideomode/g;)V

    return-object p2
.end method

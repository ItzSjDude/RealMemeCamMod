.class public Lcom/oplus/camera/sticker/ui/h;
.super Ljava/lang/Object;
.source "StickerMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/sticker/ui/h$a;,
        Lcom/oplus/camera/sticker/ui/h$b;,
        Lcom/oplus/camera/sticker/ui/h$c;,
        Lcom/oplus/camera/sticker/ui/h$d;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/sticker/ui/i;

.field private B:Lcom/oplus/camera/sticker/ui/c;

.field private C:Z

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Lcom/oplus/camera/sticker/ui/e;

.field private H:Lcom/oplus/camera/sticker/ui/g;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Lcom/oplus/camera/sticker/ui/f;

.field private K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

.field private L:Lcom/oplus/camera/ui/RotateImageView;

.field private M:Lcom/oplus/camera/ui/RotateImageView;

.field private N:I

.field private O:Z

.field private P:Lcom/oplus/camera/sticker/ui/h$c;

.field private Q:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private R:Lcom/oplus/camera/sticker/ui/h$d;

.field private S:Lcom/oplus/camera/sticker/ui/h$b;

.field private T:Lcom/oplus/camera/sticker/ui/h$a;

.field private U:Landroid/view/View$OnClickListener;

.field private V:Landroid/view/View$OnClickListener;

.field private W:Landroid/view/View$OnClickListener;

.field private X:Landroid/database/ContentObserver;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Landroid/view/animation/Interpolator;

.field private i:Landroid/animation/TimeInterpolator;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/AnimatorSet;

.field private m:Landroid/animation/AnimatorSet;

.field private n:Landroid/animation/Animator;

.field private o:Landroid/animation/Animator;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Landroid/app/Activity;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcom/oplus/camera/ui/RotateImageView;

.field private w:Lcom/oplus/camera/ui/control/MainShutterButton;

.field private x:Lcom/oplus/camera/sticker/ui/StickerPageView;

.field private y:Lcom/oplus/camera/ui/RotateImageView;

.field private z:Lcom/oplus/camera/sticker/ui/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->h:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->i:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->l:Landroid/animation/AnimatorSet;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->m:Landroid/animation/AnimatorSet;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->p:Z

    .line 71
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->q:Z

    .line 72
    iput v1, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->t:Landroid/widget/RelativeLayout;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    .line 83
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    .line 84
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->B:Lcom/oplus/camera/sticker/ui/c;

    .line 85
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    .line 86
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->D:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->E:Landroid/graphics/drawable/Drawable;

    .line 88
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->F:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    .line 91
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->H:Lcom/oplus/camera/sticker/ui/g;

    .line 92
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->M:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, -0x1

    .line 97
    iput v2, p0, Lcom/oplus/camera/sticker/ui/h;->N:I

    .line 98
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->O:Z

    .line 99
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->P:Lcom/oplus/camera/sticker/ui/h$c;

    .line 100
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->Q:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 101
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->R:Lcom/oplus/camera/sticker/ui/h$d;

    .line 102
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->S:Lcom/oplus/camera/sticker/ui/h$b;

    .line 103
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->T:Lcom/oplus/camera/sticker/ui/h$a;

    .line 105
    new-instance v2, Lcom/oplus/camera/sticker/ui/h$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/sticker/ui/h$1;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    iput-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->U:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v2, Lcom/oplus/camera/sticker/ui/h$8;

    invoke-direct {v2, p0}, Lcom/oplus/camera/sticker/ui/h$8;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    iput-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->V:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v2, Lcom/oplus/camera/sticker/ui/h$9;

    invoke-direct {v2, p0}, Lcom/oplus/camera/sticker/ui/h$9;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    iput-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->W:Landroid/view/View$OnClickListener;

    .line 139
    new-instance v2, Lcom/oplus/camera/sticker/ui/h$10;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/sticker/ui/h$10;-><init>(Lcom/oplus/camera/sticker/ui/h;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->X:Landroid/database/ContentObserver;

    const-string v2, "StickerMenu"

    .line 154
    invoke-static {v2, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    .line 157
    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    .line 158
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/sticker/ui/h;->q:Z

    .line 159
    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v4, 0x7f090096

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->t:Landroid/widget/RelativeLayout;

    .line 160
    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    .line 161
    new-instance p2, Lcom/oplus/camera/sticker/ui/h$d;

    invoke-direct {p2, p0}, Lcom/oplus/camera/sticker/ui/h$d;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->R:Lcom/oplus/camera/sticker/ui/h$d;

    .line 162
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b0d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->a:I

    .line 163
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b0f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->b:I

    .line 164
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b10

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->c:I

    .line 165
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b08

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->d:I

    .line 166
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b06

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->e:I

    .line 167
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b04

    .line 168
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->f:I

    .line 169
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b05

    .line 170
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/sticker/ui/h;->g:I

    .line 172
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->t:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p2, "StickerMenus"

    .line 176
    invoke-static {p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0c00c1

    .line 179
    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/RotateImageView;

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    .line 180
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-virtual {p1, v0, v3}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 181
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const-string v2, "StickerButton"

    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ad2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070ad1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x14

    .line 187
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, 0x2

    const v0, 0x7f0900e5

    .line 188
    invoke-virtual {v2, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ae8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 190
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ae7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    if-eqz p3, :cond_2

    .line 193
    invoke-virtual {p0, v3}, Lcom/oplus/camera/sticker/ui/h;->c(Z)V

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/sticker/ui/h;->c(Z)V

    .line 198
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->t:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const p3, 0x7f08060a

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->D:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const p3, 0x7f080609

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->E:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->D:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->F:Landroid/graphics/drawable/Drawable;

    .line 204
    new-instance p1, Lcom/oplus/camera/sticker/ui/h$11;

    invoke-direct {p1, p0}, Lcom/oplus/camera/sticker/ui/h$11;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->H:Lcom/oplus/camera/sticker/ui/g;

    .line 240
    invoke-static {p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/ui/h;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/oplus/camera/sticker/ui/h;->N:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/ui/h;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/ui/h;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/sticker/ui/h;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/sticker/ui/h;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h;->N:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->S:Lcom/oplus/camera/sticker/ui/h$b;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/g;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->H:Lcom/oplus/camera/sticker/ui/g;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/sticker/ui/h;)Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerPageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->S:Lcom/oplus/camera/sticker/ui/h$b;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget v1, p0, Lcom/oplus/camera/sticker/ui/h;->N:I

    if-nez v1, :cond_1

    .line 253
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v0, v0, Lcom/oplus/camera/sticker/ui/h$b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v0, v0, Lcom/oplus/camera/sticker/ui/h$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/sticker/ui/h;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->j()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 685
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 686
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/sticker/ui/h;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/h;->O:Z

    return p0
.end method

.method private l()Landroid/animation/Animator;
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    .line 697
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 698
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    new-instance v1, Lcom/oplus/camera/sticker/ui/h$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/sticker/ui/h$2;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 724
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->o:Landroid/animation/Animator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    return-object p0
.end method

.method private m()Landroid/animation/Animator;
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    .line 729
    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotateImageView;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    .line 735
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 737
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    new-instance v1, Lcom/oplus/camera/sticker/ui/h$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/sticker/ui/h$3;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 766
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->n:Landroid/animation/Animator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic m(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    return-object p0
.end method

.method private n()I
    .locals 1

    .line 1262
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static synthetic n(Lcom/oplus/camera/sticker/ui/h;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->Q:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method private o()I
    .locals 1

    .line 1268
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070b09

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$d;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->R:Lcom/oplus/camera/sticker/ui/h$d;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->T:Lcom/oplus/camera/sticker/ui/h$a;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic r(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/f;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    return-object p0
.end method

.method static synthetic s(Lcom/oplus/camera/sticker/ui/h;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    return p0
.end method

.method static synthetic t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic u(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic v(Lcom/oplus/camera/sticker/ui/h;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/oplus/camera/sticker/ui/h;->q:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLayout, mGridViewRelativeLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 297
    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->n()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 299
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 300
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 6

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    if-eqz v0, :cond_5

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 520
    iget-object v3, p0, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 524
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 525
    iget-object v4, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v4}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result v4

    if-nez p1, :cond_0

    .line 529
    iget v4, p0, Lcom/oplus/camera/sticker/ui/h;->e:I

    :goto_1
    sub-int/2addr v3, v4

    goto :goto_3

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    .line 531
    iget v4, p0, Lcom/oplus/camera/sticker/ui/h;->e:I

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->a:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->b:I

    :goto_2
    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, -0x1

    if-ne p1, v5, :cond_2

    .line 534
    iget v4, p0, Lcom/oplus/camera/sticker/ui/h;->e:I

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->a:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->b:I

    mul-int/lit8 v5, v5, 0x4

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x2

    if-ne p1, v4, :cond_3

    .line 538
    iget v4, p0, Lcom/oplus/camera/sticker/ui/h;->e:I

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->a:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->b:I

    mul-int/lit8 v5, v5, 0x3

    goto :goto_2

    .line 542
    :cond_3
    iget v4, p0, Lcom/oplus/camera/sticker/ui/h;->e:I

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->a:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/sticker/ui/h;->b:I

    mul-int/lit8 v5, v5, 0x2

    goto :goto_2

    :goto_3
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    .line 547
    iget-object v4, p0, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v4, v3, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->smoothScrollBy(II)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", includePanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 628
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_7

    .line 630
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    const-wide/16 v0, 0x12c

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 631
    invoke-static {p2, p1, p3, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 635
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    if-eqz p0, :cond_7

    .line 636
    invoke-static {p0, p1, p3, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_1

    .line 641
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p2, :cond_7

    .line 642
    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->k()V

    if-nez p1, :cond_2

    .line 645
    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->m()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 648
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 651
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->l()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 654
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 660
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_7

    .line 662
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_4

    .line 663
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 666
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    if-eqz p0, :cond_7

    .line 667
    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/f;->setVisibility(I)V

    goto :goto_1

    .line 671
    :cond_5
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p2, :cond_7

    .line 672
    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->k()V

    .line 673
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 674
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 575
    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/sticker/ui/h;->b(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;Z)V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 556
    new-instance v1, Lcom/oplus/camera/sticker/ui/h$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/sticker/ui/h$15;-><init>(Lcom/oplus/camera/sticker/ui/h;Lcom/oplus/camera/sticker/data/StickerItem;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/ui/c;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->B:Lcom/oplus/camera/sticker/ui/c;

    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/ui/i;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 281
    new-instance v1, Lcom/oplus/camera/sticker/ui/h$12;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/sticker/ui/h$12;-><init>(Lcom/oplus/camera/sticker/ui/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;ZLcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 9

    .line 596
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v0, v1, p4}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 599
    iget-object v2, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/sticker/ui/j;->a(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;ZLcom/oplus/camera/sticker/data/StickerItem;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    if-eqz p0, :cond_0

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/sticker/ui/j;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;IZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/ui/h$b;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v8, "StickerMenus.updateStickerCategoryMenu"

    .line 885
    invoke-static {v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 887
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-nez v0, :cond_2

    .line 888
    new-instance v0, Lcom/oplus/camera/sticker/ui/f;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/sticker/ui/f;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    .line 889
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0604dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/f;->setBackgroundColor(I)V

    .line 890
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    .line 892
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070aed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v13, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x2

    const v14, 0x7f0900e5

    .line 893
    invoke-virtual {v13, v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 895
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0158

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    .line 897
    new-instance v0, Lcom/oplus/camera/sticker/ui/e;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->H:Lcom/oplus/camera/sticker/ui/g;

    iget v3, v6, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/sticker/ui/e;-><init>(Landroid/content/Context;Lcom/oplus/camera/sticker/ui/g;I)V

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    .line 898
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v0, v7}, Lcom/oplus/camera/sticker/ui/e;->a(Ljava/util/ArrayList;)V

    .line 899
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    .line 900
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/ui/h$b;

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->S:Lcom/oplus/camera/sticker/ui/h$b;

    .line 901
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->S:Lcom/oplus/camera/sticker/ui/h$b;

    iget-object v1, v1, Lcom/oplus/camera/sticker/ui/h$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 902
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->M:Lcom/oplus/camera/ui/RotateImageView;

    .line 905
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->M:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->W:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    .line 908
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->R:Lcom/oplus/camera/sticker/ui/h$d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 909
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->H:Lcom/oplus/camera/sticker/ui/g;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->setStickerCategoryInterface(Lcom/oplus/camera/sticker/ui/g;)V

    .line 910
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->Q:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 911
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->Q:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 912
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->setItemViewCacheSize(I)V

    .line 913
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->Q:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 914
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 915
    new-instance v15, Lcom/oplus/camera/sticker/ui/h$c;

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    iget v3, v6, Lcom/oplus/camera/sticker/ui/h;->b:I

    iget v4, v6, Lcom/oplus/camera/sticker/ui/h;->e:I

    iget v5, v6, Lcom/oplus/camera/sticker/ui/h;->c:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/sticker/ui/h$c;-><init>(Lcom/oplus/camera/sticker/ui/h;Landroid/app/Activity;III)V

    iput-object v15, v6, Lcom/oplus/camera/sticker/ui/h;->P:Lcom/oplus/camera/sticker/ui/h$c;

    .line 917
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->P:Lcom/oplus/camera/sticker/ui/h$c;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 919
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->a:I

    invoke-direct {v0, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 921
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 922
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->f:I

    iget v2, v6, Lcom/oplus/camera/sticker/ui/h;->e:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 923
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->g:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 924
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->d:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result v1

    if-gt v1, v12, :cond_1

    .line 927
    :cond_0
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/sticker/ui/f;->setVisibility(I)V

    .line 930
    :cond_1
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/sticker/ui/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 932
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->t:Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_3

    .line 936
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 938
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 939
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->a:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 940
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 941
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->f:I

    iget v2, v6, Lcom/oplus/camera/sticker/ui/h;->e:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 942
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->g:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 943
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->d:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 945
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v0, v7}, Lcom/oplus/camera/sticker/ui/e;->a(Ljava/util/ArrayList;)V

    .line 947
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/e;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    if-nez p3, :cond_5

    .line 953
    iget v0, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    if-eq v0, v11, :cond_5

    .line 955
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v10

    goto :goto_3

    .line 958
    :cond_5
    :goto_1
    iget v0, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    if-ne v11, v0, :cond_6

    .line 959
    iput v12, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    goto :goto_2

    :cond_6
    move/from16 v0, p2

    .line 961
    iput v0, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    :goto_2
    move v0, v12

    .line 965
    :goto_3
    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 966
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    if-eqz v1, :cond_7

    .line 967
    iget v2, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual {v1, v2}, Lcom/oplus/camera/sticker/ui/j;->c(I)V

    .line 968
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    invoke-virtual {v2}, Lcom/oplus/camera/sticker/ui/j;->d()I

    move-result v2

    invoke-virtual {v1, v2, v10}, Lcom/oplus/camera/sticker/ui/StickerPageView;->a(IZ)V

    :cond_7
    if-eqz v0, :cond_8

    .line 972
    iput-boolean v12, v6, Lcom/oplus/camera/sticker/ui/h;->O:Z

    .line 973
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->R:Lcom/oplus/camera/sticker/ui/h$d;

    iget v1, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h$d;->a(I)V

    .line 976
    :cond_8
    iget-object v0, v6, Lcom/oplus/camera/sticker/ui/h;->P:Lcom/oplus/camera/sticker/ui/h$c;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h$c;->a(I)V

    .line 977
    iget v0, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/ui/h$b;

    iget-object v0, v0, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v0, v12}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    .line 980
    :cond_9
    iget v0, v6, Lcom/oplus/camera/sticker/ui/h;->N:I

    sub-int/2addr v0, v12

    .line 982
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    if-eqz v1, :cond_a

    iget-object v2, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    if-eqz v2, :cond_a

    if-ltz v0, :cond_a

    .line 985
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 986
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/sticker/ui/e;->b(I)V

    .line 987
    iget-object v1, v6, Lcom/oplus/camera/sticker/ui/h;->K:Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/sticker/ui/StickerCategoryRecycleView;->scrollToPosition(I)V

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/sticker/ui/h;->j()V

    .line 991
    :cond_a
    invoke-static {v8}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStickerMenuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "onResume"

    .line 260
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StickerMenus.onResume"

    .line 262
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->a()V

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1, p1, p1}, Lcom/oplus/camera/sticker/ui/h;->a(IZZ)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->e()V

    .line 276
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 8

    .line 1113
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1122
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 1126
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1129
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 1130
    invoke-interface {v0}, Lcom/oplus/camera/sticker/ui/i;->b()V

    .line 1133
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v0, v5, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1135
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v6, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1137
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    if-eqz v0, :cond_5

    .line 1138
    invoke-static {v0, v5, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1140
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    iget-boolean v6, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    invoke-virtual {v0, v6}, Lcom/oplus/camera/sticker/ui/f;->a(Z)V

    .line 1143
    :cond_5
    iget-boolean v0, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    if-eqz v0, :cond_6

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0, v5, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1148
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_7

    .line 1151
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->m()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1154
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/sticker/ui/h$7;

    invoke-direct {v0, p0, p2}, Lcom/oplus/camera/sticker/ui/h$7;-><init>(Lcom/oplus/camera/sticker/ui/h;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1196
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->m:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    .line 1197
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1200
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1201
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->p:Z

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "onPause"

    .line 305
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/camera/sticker/ui/h;->b(ZZZ)V

    .line 311
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    const/4 v0, -0x1

    .line 312
    iput v0, p0, Lcom/oplus/camera/sticker/ui/h;->N:I

    .line 313
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->f()V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 840
    iput p1, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    .line 842
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 843
    iget v1, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 846
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    if-eqz p1, :cond_1

    .line 847
    iget v1, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-virtual {p1, v1}, Lcom/oplus/camera/sticker/ui/j;->d(I)V

    .line 850
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    if-eqz p1, :cond_2

    .line 851
    iget v1, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-virtual {p1, v1}, Lcom/oplus/camera/sticker/ui/e;->c(I)V

    .line 854
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_3

    .line 855
    iget v1, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 858
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->L:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_4

    .line 859
    iget p0, p0, Lcom/oplus/camera/sticker/ui/h;->r:I

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 588
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->E:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->D:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->F:Landroid/graphics/drawable/Drawable;

    .line 590
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_2

    .line 591
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStickerPanelEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    if-eqz p0, :cond_0

    .line 794
    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/j;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(ZZZ)V
    .locals 3

    .line 1205
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    .line 1206
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1209
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1

    .line 1210
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1213
    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->l:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_2

    .line 1214
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1217
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->m:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_3

    .line 1218
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1221
    :cond_3
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    if-eqz p3, :cond_4

    .line 1222
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1225
    :cond_4
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    if-eqz p3, :cond_5

    .line 1226
    invoke-virtual {p3, v0}, Lcom/oplus/camera/sticker/ui/f;->setVisibility(I)V

    .line 1227
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    iget-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    invoke-virtual {p3, v1}, Lcom/oplus/camera/sticker/ui/f;->a(Z)V

    .line 1230
    :cond_5
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p3, :cond_6

    iget-boolean v1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    if-eqz v1, :cond_6

    .line 1231
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1234
    :cond_6
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    .line 1235
    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationY(F)V

    .line 1236
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationX(F)V

    .line 1237
    iget-object p3, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p3, v1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    if-eqz p1, :cond_7

    .line 1240
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1244
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_8

    .line 1245
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/control/MainShutterButton;->setTranslationY(F)V

    .line 1246
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setScaleX(F)V

    .line 1247
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setScaleY(F)V

    .line 1250
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_9

    const/4 p3, 0x1

    .line 1251
    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 1254
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    if-eqz p1, :cond_a

    .line 1255
    invoke-interface {p1, p2}, Lcom/oplus/camera/sticker/ui/i;->b(Z)V

    :cond_a
    const/4 p1, 0x0

    .line 1258
    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h;->p:Z

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "onDestroy"

    .line 317
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "square"

    .line 782
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    .line 784
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080641

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 783
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08027b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 865
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v0, 0x7f080607

    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const p1, 0x7f080606

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 18

    move-object/from16 v0, p0

    .line 323
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    const-string v2, "StickerMenus.initEffectMenuPanel"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 324
    invoke-static {v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 326
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/sticker/ui/h;->n()I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    .line 329
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 332
    iget-object v5, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0c015a

    invoke-virtual {v5, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    .line 334
    iget-object v5, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v7, 0x7f0900e4

    invoke-virtual {v5, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 335
    iget-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v8, 0x7f0900e5

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 336
    iget-object v9, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v10, 0x7f090338

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/oplus/camera/ui/control/MainShutterButton;

    iput-object v9, v0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 337
    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 338
    iget-object v9, v0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v5, 0x2

    new-array v7, v5, [F

    const/4 v9, 0x0

    aput v9, v7, v4

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/sticker/ui/h;->o()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    aput v10, v7, v11

    const-string v10, "translationY"

    .line 340
    invoke-static {v1, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 342
    iget-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->i:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x12c

    .line 343
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 345
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->l:Landroid/animation/AnimatorSet;

    .line 346
    iget-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 348
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->w:Lcom/oplus/camera/ui/control/MainShutterButton;

    new-array v7, v5, [F

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/sticker/ui/h;->o()I

    move-result v14

    int-to-float v14, v14

    aput v14, v7, v4

    aput v9, v7, v11

    .line 348
    invoke-static {v1, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 350
    iget-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->i:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->m:Landroid/animation/AnimatorSet;

    .line 354
    iget-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 358
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    if-eqz v1, :cond_0

    .line 359
    invoke-interface {v1}, Lcom/oplus/camera/sticker/ui/i;->f()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v3

    :cond_0
    move-object v15, v3

    .line 362
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v3, 0x7f0902ae

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/ui/StickerPageView;

    iput-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    .line 363
    new-instance v1, Lcom/oplus/camera/sticker/ui/j;

    iget-object v13, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    iget v14, v0, Lcom/oplus/camera/sticker/ui/h;->r:I

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    iget-object v7, v0, Lcom/oplus/camera/sticker/ui/h;->B:Lcom/oplus/camera/sticker/ui/c;

    move-object v12, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v17}, Lcom/oplus/camera/sticker/ui/j;-><init>(Landroid/app/Activity;ILcom/oplus/camera/sticker/data/StickerItem;Lcom/oplus/camera/sticker/ui/i;Lcom/oplus/camera/sticker/ui/c;)V

    iput-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    .line 366
    iget v1, v0, Lcom/oplus/camera/sticker/ui/h;->N:I

    if-ne v6, v1, :cond_1

    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/ui/j;->a()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 367
    iput v11, v0, Lcom/oplus/camera/sticker/ui/h;->N:I

    .line 370
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    iget v3, v0, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/j;->c(I)V

    .line 371
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/StickerPageView;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 372
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    invoke-virtual {v3}, Lcom/oplus/camera/sticker/ui/j;->d()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/oplus/camera/sticker/ui/StickerPageView;->a(IZ)V

    .line 373
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->H:Lcom/oplus/camera/sticker/ui/g;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/StickerPageView;->setStickerCategoryInterface(Lcom/oplus/camera/sticker/ui/g;)V

    .line 374
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    new-instance v3, Lcom/oplus/camera/sticker/ui/h$13;

    invoke-direct {v3, v0}, Lcom/oplus/camera/sticker/ui/h$13;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/StickerPageView;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 448
    new-instance v1, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    .line 449
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 453
    iget-boolean v3, v0, Lcom/oplus/camera/sticker/ui/h;->q:Z

    const v6, 0x7f070aec

    if-eqz v3, :cond_2

    const/16 v3, 0xb

    .line 454
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 455
    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    .line 458
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 459
    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    const/16 v3, 0x8

    .line 463
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 464
    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070aeb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 466
    invoke-virtual {v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 467
    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->t:Landroid/widget/RelativeLayout;

    iget-object v5, v0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v3, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    iget-boolean v3, v0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 469
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v3, Lcom/oplus/camera/sticker/ui/h$14;

    invoke-direct {v3, v0}, Lcom/oplus/camera/sticker/ui/h$14;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 480
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    if-eqz v1, :cond_5

    .line 481
    invoke-interface {v1}, Lcom/oplus/camera/sticker/ui/i;->f()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v3

    :cond_5
    move-object v8, v3

    .line 484
    new-instance v1, Lcom/oplus/camera/sticker/ui/j;

    iget-object v6, v0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    iget v7, v0, Lcom/oplus/camera/sticker/ui/h;->r:I

    iget-object v9, v0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    iget-object v10, v0, Lcom/oplus/camera/sticker/ui/h;->B:Lcom/oplus/camera/sticker/ui/c;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/oplus/camera/sticker/ui/j;-><init>(Landroid/app/Activity;ILcom/oplus/camera/sticker/data/StickerItem;Lcom/oplus/camera/sticker/ui/i;Lcom/oplus/camera/sticker/ui/c;)V

    iput-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    .line 486
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    iget v3, v0, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/j;->c(I)V

    .line 487
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    iget-object v3, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/sticker/ui/StickerPageView;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 488
    iget-object v1, v0, Lcom/oplus/camera/sticker/ui/h;->x:Lcom/oplus/camera/sticker/ui/StickerPageView;

    iget-object v0, v0, Lcom/oplus/camera/sticker/ui/h;->z:Lcom/oplus/camera/sticker/ui/j;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/j;->d()I

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcom/oplus/camera/sticker/ui/StickerPageView;->a(IZ)V

    .line 491
    :goto_2
    invoke-static {v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 805
    new-instance v1, Lcom/oplus/camera/sticker/ui/h$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/sticker/ui/h$4;-><init>(Lcom/oplus/camera/sticker/ui/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 5

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show, isAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Lcom/oplus/camera/sticker/ui/h;->p:Z

    .line 1003
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 1008
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1011
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->I:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 1012
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1015
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    if-eqz v1, :cond_4

    .line 1016
    invoke-interface {v1}, Lcom/oplus/camera/sticker/ui/i;->e()V

    .line 1017
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    invoke-interface {v1, p1}, Lcom/oplus/camera/sticker/ui/i;->a(Z)V

    .line 1020
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->d()V

    .line 1022
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h;->l:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 1023
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    if-eqz p1, :cond_8

    .line 1027
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    const-wide/16 v3, 0x12c

    const/4 v1, 0x0

    invoke-static {p1, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1030
    iget-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    if-eqz p1, :cond_6

    .line 1031
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p1, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1035
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    if-eqz p1, :cond_7

    .line 1036
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result p1

    if-le p1, v0, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    if-eqz p1, :cond_7

    .line 1038
    invoke-static {p1, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1040
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    iget-boolean v0, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/ui/f;->a(Z)V

    .line 1043
    :cond_7
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    .line 1044
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oplus/camera/sticker/ui/h;->l()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1045
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/sticker/ui/h$6;

    invoke-direct {v0, p0}, Lcom/oplus/camera/sticker/ui/h$6;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1079
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1081
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->v:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    .line 1082
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 1085
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    .line 1086
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1087
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1090
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->A:Lcom/oplus/camera/sticker/ui/i;

    if-eqz p1, :cond_b

    .line 1091
    invoke-interface {p1}, Lcom/oplus/camera/sticker/ui/i;->a()V

    .line 1094
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->G:Lcom/oplus/camera/sticker/ui/e;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/e;->getItemCount()I

    move-result p1

    if-le p1, v0, :cond_d

    .line 1095
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    if-eqz p1, :cond_c

    .line 1096
    invoke-virtual {p1, v2}, Lcom/oplus/camera/sticker/ui/f;->setVisibility(I)V

    .line 1097
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->J:Lcom/oplus/camera/sticker/ui/f;

    iget-boolean v0, p0, Lcom/oplus/camera/sticker/ui/h;->C:Z

    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/ui/f;->a(Z)V

    .line 1100
    :cond_c
    iget p1, p0, Lcom/oplus/camera/sticker/ui/h;->N:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/h;->a(I)V

    .line 1104
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "StickerMenu"

    const-string v1, "registerNavigationBarObserver"

    .line 604
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_hide_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->X:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1108
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/sticker/ui/h;->a(ZZZ)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "unregisterNavigationBarObserver"

    .line 611
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->X:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/oplus/camera/sticker/ui/h;->p:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 800
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public h()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 824
    new-instance v1, Lcom/oplus/camera/sticker/ui/h$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/sticker/ui/h$5;-><init>(Lcom/oplus/camera/sticker/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h;->k:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    .line 874
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

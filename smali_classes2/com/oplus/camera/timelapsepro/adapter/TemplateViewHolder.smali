.class public Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;
.super Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;
.source "TemplateViewHolder.java"


# instance fields
.field final mIcon:Landroid/widget/ImageView;

.field final mIconBg:Landroid/widget/RelativeLayout;

.field final mIconSelect:Landroid/widget/ImageView;

.field private final mItemSpring:Lcom/a/a/f;

.field final mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mItemSpring:Lcom/a/a/f;

    const v0, 0x7f0901e0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconSelect:Landroid/widget/ImageView;

    const v0, 0x7f0901dc

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901db

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f09027e

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public synthetic lambda$setItemTouchListener$0$TemplateViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconSelect:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mItemSpring:Lcom/a/a/f;

    invoke-static {p1, v0, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mItemSpring:Lcom/a/a/f;

    invoke-static {p1, p0, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconSelect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mItemSpring:Lcom/a/a/f;

    invoke-static {p1, v1, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    .line 63
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mItemSpring:Lcom/a/a/f;

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    :goto_0
    return p2
.end method

.method public setImageSource(I)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setItemTouchListener()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$TemplateViewHolder$Uq1A-dO7RWc2lyUEqwjUZkw_UUA;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$TemplateViewHolder$Uq1A-dO7RWc2lyUEqwjUZkw_UUA;-><init>(Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 9

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconSelect:Landroid/widget/ImageView;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x118

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x96

    :goto_1
    const-wide/16 v5, 0x0

    .line 47
    sget-object v7, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    .line 46
    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v8, 0x8

    :goto_2
    invoke-virtual {p0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

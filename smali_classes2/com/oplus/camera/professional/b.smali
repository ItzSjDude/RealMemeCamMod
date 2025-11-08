.class public Lcom/oplus/camera/professional/b;
.super Landroid/widget/ImageView;
.source "HSAutoImageView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/oplus/camera/professional/b;->a:Z

    .line 20
    invoke-direct {p0}, Lcom/oplus/camera/professional/b;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f080446

    .line 24
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/b;->setImageResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/oplus/camera/professional/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/b;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setAuto(Z)V
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/oplus/camera/professional/b;->a:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 34
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/professional/b;->a:Z

    if-eqz p1, :cond_1

    const p1, 0x7f080446

    goto :goto_0

    :cond_1
    const p1, 0x7f080447

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/b;->setImageResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/oplus/camera/professional/b;->invalidate()V

    return-void
.end method

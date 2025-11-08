.class Lcom/oplus/camera/util/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/b;->a(Landroid/widget/TextView;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/oplus/camera/util/b$2;->a:Landroid/widget/TextView;

    iput p2, p0, Lcom/oplus/camera/util/b$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/oplus/camera/util/b$2;->a:Landroid/widget/TextView;

    iget p0, p0, Lcom/oplus/camera/util/b$2;->b:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

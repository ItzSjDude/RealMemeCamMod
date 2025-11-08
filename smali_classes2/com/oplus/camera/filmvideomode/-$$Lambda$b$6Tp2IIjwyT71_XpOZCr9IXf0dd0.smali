.class public final synthetic Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/view/View;

.field private final synthetic f$3:Lcom/oplus/camera/ui/control/ThumbImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/oplus/camera/ui/control/ThumbImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$3:Lcom/oplus/camera/ui/control/ThumbImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$2:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;->f$3:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/camera/filmvideomode/b;->lambda$6Tp2IIjwyT71_XpOZCr9IXf0dd0(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

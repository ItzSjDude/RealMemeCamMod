.class Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;
.super Ljava/lang/Object;
.source "ArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/down/ArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/down/ArrowView;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;->a:Lcom/oplus/camera/ui/menu/setting/down/ArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;Lcom/oplus/camera/ui/menu/setting/down/ArrowView$1;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;-><init>(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;->a:Lcom/oplus/camera/ui/menu/setting/down/ArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;F)F

    .line 462
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;->a:Lcom/oplus/camera/ui/menu/setting/down/ArrowView;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->a(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;F)V

    return-void
.end method

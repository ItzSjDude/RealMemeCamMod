.class Lcom/oplus/camera/ui/menu/a/b$1;
.super Ljava/lang/Object;
.source "HeadlineBackground.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a/b;->a(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a/b;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/b$1;->a:Lcom/oplus/camera/ui/menu/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b$1;->a:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/a/b;->a(Lcom/oplus/camera/ui/menu/a/b;I)I

    .line 115
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/b$1;->a:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->invalidate()V

    return-void
.end method

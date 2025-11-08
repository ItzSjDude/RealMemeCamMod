.class Lcom/oplus/camera/ui/menu/a/e$9;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a/e;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 2247
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$9;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$9;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;I)I

    .line 2251
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$9;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

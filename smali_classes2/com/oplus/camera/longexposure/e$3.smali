.class Lcom/oplus/camera/longexposure/e$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LongExposureLevelPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/e;->b(Z[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/longexposure/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/e;[Landroid/view/View;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/oplus/camera/longexposure/e$3;->b:Lcom/oplus/camera/longexposure/e;

    iput-object p2, p0, Lcom/oplus/camera/longexposure/e$3;->a:[Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 503
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e$3;->a:[Landroid/view/View;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 505
    aget-object v0, v0, p1

    const/4 v1, 0x0

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/oplus/camera/util/b$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/b;->a(Landroid/graphics/drawable/Drawable;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/oplus/camera/util/b$1;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/oplus/camera/util/b$1;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/util/b$1;->a:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/oplus/camera/util/b$1;->b:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

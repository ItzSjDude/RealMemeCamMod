.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/inverse/e;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/inverse/e;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iput p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;->f$1:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;->f$1:I

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;->f$2:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->lambda$setInverseColor$1$e(IZLandroid/animation/ValueAnimator;)V

    return-void
.end method

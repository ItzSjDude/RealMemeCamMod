.class public Lcom/oplus/camera/ui/control/ShutterButton;
.super Lcom/oplus/camera/ui/RotateImageView;
.source "ShutterButton.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;
.implements Lcom/oplus/camera/ui/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field protected m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field protected n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/view/animation/PathInterpolator;

.field private t:Lcom/oplus/camera/ui/CameraUIListener;

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 57
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->q:Z

    .line 49
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->n:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    .line 51
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->t:Lcom/oplus/camera/ui/CameraUIListener;

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    .line 54
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->v:I

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->q:Z

    .line 49
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->n:Z

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    .line 52
    iput-object p2, p0, Lcom/oplus/camera/ui/control/ShutterButton;->t:Lcom/oplus/camera/ui/CameraUIListener;

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    .line 54
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->v:I

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->q:Z

    .line 49
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->n:Z

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    .line 51
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    .line 52
    iput-object p2, p0, Lcom/oplus/camera/ui/control/ShutterButton;->t:Lcom/oplus/camera/ui/CameraUIListener;

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    .line 54
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->v:I

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/ShutterButton;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->a(Lcom/oplus/camera/ui/control/ShutterButton;Z)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070722

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 199
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 200
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 202
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b(ZZ)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showShutterButtonVisibility, isBackgroundAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDrawableScale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 238
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/ShutterButton$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/ui/control/ShutterButton$2;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/control/ShutterButton$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/control/ShutterButton$3;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 281
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    const/4 p1, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    .line 286
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c(ZZ)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideShutterButtonVisibility, isBackgroundAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDrawableScale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 298
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 302
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/ShutterButton$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/ui/control/ShutterButton$4;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/control/ShutterButton$5;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/control/ShutterButton$5;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/oplus/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 83
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->isPressed()Z

    move-result v0

    .line 85
    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->p:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 108
    new-instance v1, Lcom/oplus/camera/ui/control/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton$1;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/ShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->a(Z)V

    .line 118
    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->p:Z

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 0

    .line 361
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 214
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 216
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->n:Z

    if-eqz p0, :cond_0

    .line 217
    new-array p0, v0, [I

    const/4 v0, 0x0

    const v1, 0x7f040583

    aput v1, p0, v0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent, isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event.getAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getRawY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 161
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    const-string p1, "onTouchEvent, ignore the touch event when animating"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 167
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    const-string p1, "onTouchEvent, not in the target area, so return!"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 173
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->q:Z

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_5

    .line 176
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->c(Lcom/oplus/camera/ui/control/ShutterButton;)V

    .line 179
    :cond_5
    iput-boolean v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->q:Z

    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_7

    .line 184
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->d(Lcom/oplus/camera/ui/control/ShutterButton;)V

    .line 188
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_9

    .line 190
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->e(Lcom/oplus/camera/ui/control/ShutterButton;)V

    .line 194
    :cond_9
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/oplus/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1, p0}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->a(Lcom/oplus/camera/ui/control/ShutterButton;)V

    :cond_0
    return v0
.end method

.method public performLongClick()Z
    .locals 2

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->q:Z

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1, p0}, Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;->b(Lcom/oplus/camera/ui/control/ShutterButton;)V

    :cond_0
    return v0
.end method

.method public setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->t:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method public setForceHide(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    .line 366
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->v:I

    :goto_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->n:Z

    .line 226
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->refreshDrawableState()V

    .line 227
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method

.method public setLightBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080640

    .line 454
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f08063f

    .line 456
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->m:Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;

    return-void
.end method

.method public setResIdWithAnimation(I)V
    .locals 6

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->o:Ljava/lang/String;

    const-string v1, "videoPauseResumeWithAnimation"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 384
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    .line 385
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 386
    iget-object v5, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    new-instance v5, Lcom/oplus/camera/ui/control/ShutterButton$6;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/control/ShutterButton$6;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 397
    new-instance v5, Lcom/oplus/camera/ui/control/ShutterButton$7;

    invoke-direct {v5, p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton$7;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 412
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 413
    iget-object v5, p0, Lcom/oplus/camera/ui/control/ShutterButton;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 415
    new-instance v3, Lcom/oplus/camera/ui/control/ShutterButton$8;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/control/ShutterButton$8;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    new-instance v3, Lcom/oplus/camera/ui/control/ShutterButton$9;

    invoke-direct {v3, p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton$9;-><init>(Lcom/oplus/camera/ui/control/ShutterButton;I)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 447
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 448
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setVisibility(I)V
    .locals 1

    .line 371
    iput p1, p0, Lcom/oplus/camera/ui/control/ShutterButton;->v:I

    .line 373
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton;->u:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 374
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

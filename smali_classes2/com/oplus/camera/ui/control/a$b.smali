.class Lcom/oplus/camera/ui/control/a$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraControlUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 3861
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/control/a;Lcom/oplus/camera/ui/control/a$1;)V
    .locals 0

    .line 3861
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/a$b;-><init>(Lcom/oplus/camera/ui/control/a;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 3865
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->n(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/modepanel/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->n(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/modepanel/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3869
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->v(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/AnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->isClickable()Z

    move-result v0

    const-string v1, "CameraControlUI"

    if-nez v0, :cond_1

    const-string p0, "onLongPress, mConfirmImageView isn\'t clickable."

    .line 3870
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3875
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->u(Lcom/oplus/camera/ui/control/a;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLongPress, can\'t find child under e: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3883
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->w(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/modepanel/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/modepanel/h;->a(Z)V

    .line 3884
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->u(Lcom/oplus/camera/ui/control/a;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 3885
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/a;->n(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/modepanel/f;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$b;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->u(Lcom/oplus/camera/ui/control/a;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

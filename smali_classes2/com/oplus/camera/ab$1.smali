.class Lcom/oplus/camera/ab$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ab;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ab;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ab;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/oplus/camera/ab$1;->a:Lcom/oplus/camera/ab;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/ab$1;->a:Lcom/oplus/camera/ab;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ab;->a(Lcom/oplus/camera/ab;F)F

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ab$1;->a:Lcom/oplus/camera/ab;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ab;->b(Lcom/oplus/camera/ab;F)F

    .line 397
    iget-object p0, p0, Lcom/oplus/camera/ab$1;->a:Lcom/oplus/camera/ab;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ab;->a(Lcom/oplus/camera/ab;I)I

    return p1
.end method

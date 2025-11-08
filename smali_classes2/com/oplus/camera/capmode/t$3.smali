.class Lcom/oplus/camera/capmode/t$3;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->updateViewByEnterCameraType()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$3;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p1, 0x0

    .line 807
    invoke-static {p1}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 808
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$3;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/h;->d(Z)V

    return-void
.end method

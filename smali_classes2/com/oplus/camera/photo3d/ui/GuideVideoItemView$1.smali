.class Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$1;
.super Ljava/lang/Object;
.source "GuideVideoItemView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$1;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo, what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "GuideItemView"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne p1, p2, :cond_0

    .line 56
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$1;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const-string p3, "alpha"

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x64

    .line 57
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 59
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$1;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

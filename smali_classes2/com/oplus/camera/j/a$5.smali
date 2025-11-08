.class Lcom/oplus/camera/j/a$5;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->l(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/oplus/camera/j/a$5;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p1, p2, :cond_0

    .line 766
    iget-object p1, p0, Lcom/oplus/camera/j/a$5;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->h(Lcom/oplus/camera/j/a;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    iget-object p0, p0, Lcom/oplus/camera/j/a$5;->a:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->h(Lcom/oplus/camera/j/a;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string p2, "alpha"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    .line 768
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, 0x0

    .line 769
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 770
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

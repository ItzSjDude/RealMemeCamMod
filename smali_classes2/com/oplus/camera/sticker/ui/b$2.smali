.class Lcom/oplus/camera/sticker/ui/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GridItemViewTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/b;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/b;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/b$2;->a:Lcom/oplus/camera/sticker/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/b$2;->a:Lcom/oplus/camera/sticker/ui/b;

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/b$2;->a:Lcom/oplus/camera/sticker/ui/b;

    iget-object p1, p1, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/b$2;->a:Lcom/oplus/camera/sticker/ui/b;

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method

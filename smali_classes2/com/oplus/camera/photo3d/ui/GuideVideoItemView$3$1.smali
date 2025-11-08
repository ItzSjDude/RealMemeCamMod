.class Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;
.super Ljava/lang/Object;
.source "GuideVideoItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;->b:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;

    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;->b:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;

    iget-object v0, v0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;->b:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;

    iget-object v0, v0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

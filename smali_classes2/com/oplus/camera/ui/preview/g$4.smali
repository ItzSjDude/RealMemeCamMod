.class Lcom/oplus/camera/ui/preview/g$4;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1292
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    new-instance v1, Lcom/oplus/camera/ui/t;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/camera/ui/t;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/ui/t;)Lcom/oplus/camera/ui/t;

    .line 1297
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07090d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1298
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 1299
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 1300
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1301
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    .line 1302
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07090c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1304
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08059c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/t;->setImage(Landroid/graphics/Bitmap;)V

    .line 1305
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100293

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/t;->setText(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07090b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/t;->setViewGap(I)V

    .line 1307
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->X(Lcom/oplus/camera/ui/preview/g;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->Y(Lcom/oplus/camera/ui/preview/g;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/t;->a(IZ)V

    .line 1309
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$4;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/t;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/t;->setVisibility(I)V

    return-void
.end method

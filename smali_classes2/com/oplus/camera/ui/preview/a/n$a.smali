.class public Lcom/oplus/camera/ui/preview/a/n$a;
.super Landroid/graphics/drawable/Drawable;
.source "FishEyeTexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:F


# direct methods
.method public constructor <init>(IF)V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/n$a;->b:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n$a;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/n$a;->a:I

    .line 65
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/n$a;->c:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 71
    iget v1, p0, Lcom/oplus/camera/ui/preview/a/n$a;->a:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/n$a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/n$a;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 74
    iget v3, p0, Lcom/oplus/camera/ui/preview/a/n$a;->c:F

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

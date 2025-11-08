.class public Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyTabScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "FaceBeautyTabScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyTabScrollView;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyTabScrollView;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 25
    div-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 26
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    add-int/2addr p3, p1

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.class Lcom/oplus/camera/ui/beauty3d/g$5;
.super Ljava/lang/Object;
.source "Beauty3DUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/beauty3d/g;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/beauty3d/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/beauty3d/g;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/oplus/camera/ui/beauty3d/g$5;->a:Lcom/oplus/camera/ui/beauty3d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 375
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 381
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    .line 377
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return v0
.end method

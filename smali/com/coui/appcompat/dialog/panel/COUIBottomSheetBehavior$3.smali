.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;
.super Landroidx/dynamicanimation/a/d;
.source "COUIBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->a:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/a/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 1

    .line 1419
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;I)I

    .line 1420
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 1

    .line 1425
    check-cast p1, Landroid/view/View;

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1426
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    .line 1427
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;I)I

    return-void
.end method

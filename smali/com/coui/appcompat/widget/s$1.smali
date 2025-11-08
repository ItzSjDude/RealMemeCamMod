.class Lcom/coui/appcompat/widget/s$1;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/s;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/s;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coui/appcompat/widget/s$1;->a:Lcom/coui/appcompat/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 141
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    iget-object p3, p0, Lcom/coui/appcompat/widget/s$1;->a:Lcom/coui/appcompat/widget/s;

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/s;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/widget/s$1;->a:Lcom/coui/appcompat/widget/s;

    invoke-static {p1}, Lcom/coui/appcompat/widget/s;->a(Lcom/coui/appcompat/widget/s;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/coui/appcompat/widget/s$1;->a:Lcom/coui/appcompat/widget/s;

    invoke-static {p0}, Lcom/coui/appcompat/widget/s;->b(Lcom/coui/appcompat/widget/s;)V

    :cond_0
    return-void
.end method

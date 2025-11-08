.class Lcom/oplus/camera/j/a$12;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->d(Landroid/app/Activity;)V
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

    .line 390
    iput-object p1, p0, Lcom/oplus/camera/j/a$12;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 393
    iget-object p2, p0, Lcom/oplus/camera/j/a$12;->a:Lcom/oplus/camera/j/a;

    invoke-static {p2}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/j/a$12;->a:Lcom/oplus/camera/j/a;

    invoke-static {p2}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/j/a$12;->a:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p0

    const p2, 0x7f09040c

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 400
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

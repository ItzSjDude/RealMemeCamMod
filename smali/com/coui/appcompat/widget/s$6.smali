.class Lcom/coui/appcompat/widget/s$6;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/s;->f()V
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

    .line 645
    iput-object p1, p0, Lcom/coui/appcompat/widget/s$6;->a:Lcom/coui/appcompat/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 653
    iget-object p1, p0, Lcom/coui/appcompat/widget/s$6;->a:Lcom/coui/appcompat/widget/s;

    invoke-static {p1}, Lcom/coui/appcompat/widget/s;->b(Lcom/coui/appcompat/widget/s;)V

    .line 654
    iget-object p0, p0, Lcom/coui/appcompat/widget/s$6;->a:Lcom/coui/appcompat/widget/s;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/s;->a(Lcom/coui/appcompat/widget/s;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/coui/appcompat/widget/s$6;->a:Lcom/coui/appcompat/widget/s;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/s;->a(Lcom/coui/appcompat/widget/s;Z)Z

    return-void
.end method

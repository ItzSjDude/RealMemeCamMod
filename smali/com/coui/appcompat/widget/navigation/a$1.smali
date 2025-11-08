.class Lcom/coui/appcompat/widget/navigation/a$1;
.super Ljava/lang/Object;
.source "COUINavigationItemView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/navigation/a;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/a;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/a$1;->a:Lcom/coui/appcompat/widget/navigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a$1;->a:Lcom/coui/appcompat/widget/navigation/a;

    invoke-static {p0}, Lcom/coui/appcompat/widget/navigation/a;->a(Lcom/coui/appcompat/widget/navigation/a;)Lcom/coui/appcompat/widget/COUIHintRedDot;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

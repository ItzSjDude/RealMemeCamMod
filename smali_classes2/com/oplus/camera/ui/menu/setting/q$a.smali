.class public Lcom/oplus/camera/ui/menu/setting/q$a;
.super Ljava/lang/Object;
.source "ExpandableMenuPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/q;

.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/setting/q;Landroid/view/View;I)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->a:Lcom/oplus/camera/ui/menu/setting/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->b:Landroid/view/View;

    const/4 p1, 0x4

    .line 170
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->c:I

    .line 173
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->b:Landroid/view/View;

    .line 174
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->c:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 189
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->c:I

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->c:I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->a:Lcom/oplus/camera/ui/menu/setting/q;

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    goto :goto_0

    .line 196
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->a:Lcom/oplus/camera/ui/menu/setting/q;

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbExitAnimationRunning:Z

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 179
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->c:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->b:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->a:Lcom/oplus/camera/ui/menu/setting/q;

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/q$a;->a:Lcom/oplus/camera/ui/menu/setting/q;

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbExitAnimationRunning:Z

    :goto_0
    return-void
.end method

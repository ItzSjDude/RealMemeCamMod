.class Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;
.super Ljava/lang/Object;
.source "OutScreenButtonBoxView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/OutScreenButtonBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;->a:Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;->b:Z

    .line 99
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;->a:Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;->b:Z

    if-nez v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;->a:Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;->call(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

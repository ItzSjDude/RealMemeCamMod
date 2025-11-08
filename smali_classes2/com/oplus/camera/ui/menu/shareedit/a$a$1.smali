.class Lcom/oplus/camera/ui/menu/shareedit/a$a$1;
.super Ljava/lang/Object;
.source "ShareEditThumbMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a$a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a$a;)V
    .locals 0

    .line 1558
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;Z)Z

    .line 1569
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->b(Lcom/oplus/camera/ui/menu/shareedit/a$a;Z)Z

    .line 1570
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->b(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1575
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->c(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1561
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a(Lcom/oplus/camera/ui/menu/shareedit/a$a;Z)Z

    .line 1562
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->b(Lcom/oplus/camera/ui/menu/shareedit/a$a;Z)Z

    .line 1563
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a(Landroid/view/animation/Animation;)V

    return-void
.end method

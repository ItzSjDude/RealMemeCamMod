.class Lcom/oplus/camera/ui/menu/levelcontrol/g$b;
.super Ljava/lang/Object;
.source "FilterEffectMenu.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/levelcontrol/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/g;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;Lcom/oplus/camera/ui/menu/levelcontrol/g$1;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->a()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c(Lcom/oplus/camera/ui/menu/levelcontrol/g;)I

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d(Lcom/oplus/camera/ui/menu/levelcontrol/g;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(II)V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/g;I)I

    .line 344
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->a(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    .line 360
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    .line 361
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    .line 362
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    .line 363
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->f(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()I
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g(Lcom/oplus/camera/ui/menu/levelcontrol/g;)I

    move-result p0

    return p0
.end method

.method public d()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->e()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

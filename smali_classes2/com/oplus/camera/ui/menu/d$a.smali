.class Lcom/oplus/camera/ui/menu/d$a;
.super Ljava/lang/Object;
.source "OptionItemIconTextList.java"

# interfaces
.implements Lcom/oplus/camera/ui/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/d;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/d;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/d;Lcom/oplus/camera/ui/menu/d$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/d$a;-><init>(Lcom/oplus/camera/ui/menu/d;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/d;->a(Lcom/oplus/camera/ui/menu/d;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/d;->a(Lcom/oplus/camera/ui/menu/d;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 493
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/d;->a(Lcom/oplus/camera/ui/menu/d;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/d;->a(Lcom/oplus/camera/ui/menu/d;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_1

    .line 514
    invoke-virtual {v2, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    iput p1, p0, Lcom/oplus/camera/ui/menu/d;->l:I

    .line 520
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->requestLayout()V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d$a;->a:Lcom/oplus/camera/ui/menu/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->isShown()Z

    move-result p0

    return p0
.end method

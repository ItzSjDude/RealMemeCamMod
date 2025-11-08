.class abstract Lcom/oplus/camera/ui/menu/shareedit/a$a;
.super Landroid/view/animation/Animation;
.source "ShareEditThumbMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1557
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 1554
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a:Z

    .line 1555
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a;->b:Z

    .line 1558
    new-instance v0, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/shareedit/a$a$1;-><init>(Lcom/oplus/camera/ui/menu/shareedit/a$a;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/a$a;Z)Z
    .locals 0

    .line 1552
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/shareedit/a$a;Z)Z
    .locals 0

    .line 1552
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a;->b:Z

    return p1
.end method


# virtual methods
.method abstract a(FLandroid/view/animation/Transformation;)V
.end method

.method protected a(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 0

    .line 1581
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a;->b:Z

    return p0
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1586
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a:Z

    if-nez v0, :cond_0

    .line 1587
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a(FLandroid/view/animation/Transformation;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected c(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

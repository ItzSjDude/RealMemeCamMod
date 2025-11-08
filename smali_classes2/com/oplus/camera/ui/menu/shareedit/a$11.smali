.class Lcom/oplus/camera/ui/menu/shareedit/a$11;
.super Lcom/oplus/camera/ui/menu/shareedit/a$a;
.source "ShareEditThumbMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$11;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(FLandroid/view/animation/Transformation;)V
    .locals 7

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$11;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->q(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$11;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/shareedit/a;->n(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v2

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$11;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/shareedit/a;->s(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v3

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$11;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->r(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v4

    const/4 v6, 0x1

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V

    return-void
.end method

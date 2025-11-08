.class Lcom/oplus/camera/ui/menu/shareedit/a$2;
.super Lcom/oplus/camera/ui/menu/shareedit/a$a;
.source "ShareEditThumbMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;->B()V
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

    .line 880
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$2;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 883
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$2;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/shareedit/a;->F(Lcom/oplus/camera/ui/menu/shareedit/a;)F

    move-result p2

    mul-float/2addr p2, p1

    .line 884
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$2;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->G(Lcom/oplus/camera/ui/menu/shareedit/a;)F

    move-result p1

    add-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/menu/shareedit/a;F)V

    return-void
.end method

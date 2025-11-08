.class Lcom/oplus/camera/filmvideomode/m$2;
.super Ljava/lang/Object;
.source "FilmSubMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/n;

.field final synthetic b:Lcom/coui/appcompat/widget/COUISwitch;

.field final synthetic c:Lcom/oplus/camera/filmvideomode/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/m;Lcom/oplus/camera/filmvideomode/n;Lcom/coui/appcompat/widget/COUISwitch;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/m$2;->c:Lcom/oplus/camera/filmvideomode/m;

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/m$2;->a:Lcom/oplus/camera/filmvideomode/n;

    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/m$2;->b:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/m$2;->a:Lcom/oplus/camera/filmvideomode/n;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/n;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/m$2;->a:Lcom/oplus/camera/filmvideomode/n;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/m$2;->b:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setChecked(Z)V

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/m$2;->a:Lcom/oplus/camera/filmvideomode/n;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/n;->c()Lcom/oplus/camera/filmvideomode/n$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/filmvideomode/n$a;->a(Z)V

    return-void
.end method

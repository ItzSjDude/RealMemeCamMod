.class Lcom/oplus/camera/filmvideomode/m$1;
.super Ljava/lang/Object;
.source "FilmSubMenuAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/m$1;->c:Lcom/oplus/camera/filmvideomode/m;

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/m$1;->a:Lcom/oplus/camera/filmvideomode/n;

    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/m$1;->b:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/m$1;->a:Lcom/oplus/camera/filmvideomode/n;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    .line 67
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/m$1;->b:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/COUISwitch;->setChecked(Z)V

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/m$1;->a:Lcom/oplus/camera/filmvideomode/n;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/n;->c()Lcom/oplus/camera/filmvideomode/n$a;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/oplus/camera/filmvideomode/n$a;->a(Z)V

    return-void
.end method

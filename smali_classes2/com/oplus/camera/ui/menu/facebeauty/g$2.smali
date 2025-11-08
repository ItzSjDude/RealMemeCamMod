.class Lcom/oplus/camera/ui/menu/facebeauty/g$2;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FaceBeautyMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/ui/menu/facebeauty/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$2;->b:Lcom/oplus/camera/ui/menu/facebeauty/g;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$2;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 445
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$2;->b:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->f(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$2;->a:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

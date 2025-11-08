.class public Lcom/oplus/camera/photo3d/ui/f$b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "SceneMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Lcom/oplus/camera/photo3d/ui/GifView;

.field b:Landroid/widget/TextView;

.field c:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

.field d:Lcom/oplus/camera/longexposure/LongExposureItemFrame;

.field final synthetic e:Lcom/oplus/camera/photo3d/ui/f;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/photo3d/ui/f;Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$b;->e:Lcom/oplus/camera/photo3d/ui/f;

    .line 106
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f090097

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$b;->c:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    const p1, 0x7f090098

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/longexposure/LongExposureItemFrame;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$b;->d:Lcom/oplus/camera/longexposure/LongExposureItemFrame;

    const p1, 0x7f090099

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/photo3d/ui/GifView;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$b;->a:Lcom/oplus/camera/photo3d/ui/GifView;

    const p1, 0x7f09009a

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$b;->b:Landroid/widget/TextView;

    return-void
.end method

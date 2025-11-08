.class public Lcom/oplus/camera/longexposure/c$b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "LongExposureEffectMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/longexposure/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

.field b:Lcom/oplus/camera/longexposure/LongExposureItemFrame;

.field c:Lcom/oplus/camera/ui/widget/RoundImageView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lcom/oplus/camera/longexposure/c;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/longexposure/c;Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oplus/camera/longexposure/c$b;->e:Lcom/oplus/camera/longexposure/c;

    .line 116
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f090228

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/c$b;->a:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    const p1, 0x7f090229

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/longexposure/LongExposureItemFrame;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/c$b;->b:Lcom/oplus/camera/longexposure/LongExposureItemFrame;

    const p1, 0x7f09022a

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/RoundImageView;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/c$b;->c:Lcom/oplus/camera/ui/widget/RoundImageView;

    const p1, 0x7f09022b

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/c$b;->d:Landroid/widget/TextView;

    return-void
.end method

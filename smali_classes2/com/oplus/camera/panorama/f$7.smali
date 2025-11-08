.class Lcom/oplus/camera/panorama/f$7;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oplus/camera/panorama/FrontPanoramaGuideView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/panorama/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 1948
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$7;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1951
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$7;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$7;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->av(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1952
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$7;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/panorama/f$7;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->av(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->getCurrentGuideTips()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

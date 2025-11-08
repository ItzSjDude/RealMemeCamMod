.class Lcom/oplus/camera/panorama/PanoramaProgressBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanoramaProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/PanoramaProgressBar;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/PanoramaProgressBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/PanoramaProgressBar;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar$2;->a:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 295
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar$2;->a:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-static {p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Lcom/oplus/camera/panorama/PanoramaProgressBar;)Landroid/graphics/Paint;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar$2;->a:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-static {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Lcom/oplus/camera/panorama/PanoramaProgressBar;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

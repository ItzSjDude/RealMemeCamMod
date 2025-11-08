.class Lcom/oplus/camera/ui/preview/ac$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrackFocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ac;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ac;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ac;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ac$1;->a:Lcom/oplus/camera/ui/preview/ac;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac$1;->a:Lcom/oplus/camera/ui/preview/ac;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ac;->a(Lcom/oplus/camera/ui/preview/ac;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setVisibility(I)V

    return-void
.end method

.class Lcom/oplus/camera/ui/preview/g$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 1208
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1219
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1220
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    .line 1221
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setTranslationY(F)V

    .line 1222
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1211
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1212
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    .line 1213
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$2;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->W(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

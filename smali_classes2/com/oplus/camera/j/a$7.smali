.class Lcom/oplus/camera/j/a$7;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->l(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    iput-object p2, p0, Lcom/oplus/camera/j/a$7;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 796
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->i(Lcom/oplus/camera/j/a;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 797
    iget-object p0, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p0, v0}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;Z)Z

    return-void

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->h(Lcom/oplus/camera/j/a;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 802
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->h(Lcom/oplus/camera/j/a;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 803
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1, v1}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 806
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 807
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->pause()V

    .line 808
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 809
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 810
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 813
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 814
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "key_bottom_guide_type_fast_video"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 817
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/j/a$7;->b:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->g(Lcom/oplus/camera/j/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/j/a$7;->a:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

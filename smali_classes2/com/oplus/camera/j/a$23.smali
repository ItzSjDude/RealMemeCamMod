.class Lcom/oplus/camera/j/a$23;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->l(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/oplus/camera/j/a$23;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/j/a$23;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/oplus/camera/j/a$23;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->start()V

    .line 712
    iget-object p0, p0, Lcom/oplus/camera/j/a$23;->a:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->requestFocus()Z

    :cond_0
    return-void
.end method

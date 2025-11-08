.class Lcom/oplus/camera/j/a$3;
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

    .line 726
    iput-object p1, p0, Lcom/oplus/camera/j/a$3;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/oplus/camera/j/a$3;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->f(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/popupwindow/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/oplus/camera/j/a$3;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->f(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/popupwindow/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/popupwindow/b$a;->a()V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a$3;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->g(Lcom/oplus/camera/j/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 734
    iget-object p0, p0, Lcom/oplus/camera/j/a$3;->a:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->g(Lcom/oplus/camera/j/a;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.class Lcom/oplus/camera/j/a$2;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;Landroid/app/Activity;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/oplus/camera/j/a$2;->b:Lcom/oplus/camera/j/a;

    iput-object p2, p0, Lcom/oplus/camera/j/a$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/oplus/camera/j/a$2;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->e(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/oplus/camera/j/a$2;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->e(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/j/a$2;->a:Landroid/app/Activity;

    check-cast p0, Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p0

    const-string v1, "showFastVideoBottomGuide"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

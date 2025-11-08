.class Lcom/oplus/camera/screen/g$1;
.super Ljava/lang/Object;
.source "ScreenModeManager.java"

# interfaces
.implements Lcom/oplus/camera/screen/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/g;->a(Lcom/oplus/camera/screen/f$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/g;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {p0}, Lcom/oplus/camera/screen/g;->a(Lcom/oplus/camera/screen/g;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {p0}, Lcom/oplus/camera/screen/g;->a(Lcom/oplus/camera/screen/g;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v0}, Lcom/oplus/camera/screen/g;->d(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v1}, Lcom/oplus/camera/screen/g;->b(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v2}, Lcom/oplus/camera/screen/g;->c(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;Lcom/oplus/camera/screen/b/a;)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v0}, Lcom/oplus/camera/screen/g;->d(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v1}, Lcom/oplus/camera/screen/g;->c(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v2}, Lcom/oplus/camera/screen/g;->e(Lcom/oplus/camera/screen/g;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;Z)V

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {v0}, Lcom/oplus/camera/screen/g;->d(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/screen/g$1;->a:Lcom/oplus/camera/screen/g;

    invoke-static {p0}, Lcom/oplus/camera/screen/g;->c(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;)V

    return-void
.end method

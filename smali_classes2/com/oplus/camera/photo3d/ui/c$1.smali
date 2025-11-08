.class Lcom/oplus/camera/photo3d/ui/c$1;
.super Ljava/lang/Object;
.source "MenuSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/c;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$1;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$1;->a:Lcom/oplus/camera/photo3d/ui/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/photo3d/ui/c;->b(ZZ)V

    .line 68
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c$1;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/c;->a(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/photo3d/ui/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c$1;->a:Lcom/oplus/camera/photo3d/ui/c;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/c;->a(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/photo3d/ui/c$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/photo3d/ui/c$a;->a()V

    :cond_0
    return-void
.end method

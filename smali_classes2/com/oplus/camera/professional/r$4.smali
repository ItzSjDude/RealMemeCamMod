.class Lcom/oplus/camera/professional/r$4;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lcom/oplus/camera/professional/r$4;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/oplus/camera/professional/r$4;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/r$4;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object p0, p0, Lcom/oplus/camera/professional/r$4;->a:Lcom/oplus/camera/professional/r;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    :cond_0
    return-void
.end method

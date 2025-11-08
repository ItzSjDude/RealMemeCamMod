.class Lcom/oplus/camera/professional/v$9;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->cameraIdChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;I)V
    .locals 0

    .line 2557
    iput-object p1, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    iput p2, p0, Lcom/oplus/camera/professional/v$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2560
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->av(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 2562
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setItemPressed(Z)V

    .line 2563
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 2565
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 2567
    iget-object p0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    goto :goto_0

    .line 2570
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 2571
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setVisibility(I)V

    .line 2572
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aw(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 2573
    iget-object v0, p0, Lcom/oplus/camera/professional/v$9;->b:Lcom/oplus/camera/professional/v;

    iget p0, p0, Lcom/oplus/camera/professional/v$9;->a:I

    invoke-static {v0, p0}, Lcom/oplus/camera/professional/v;->e(Lcom/oplus/camera/professional/v;I)V

    :cond_1
    :goto_0
    return-void
.end method

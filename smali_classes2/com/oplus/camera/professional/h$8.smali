.class Lcom/oplus/camera/professional/h$8;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->cameraIdChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;I)V
    .locals 0

    .line 2408
    iput-object p1, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    iput p2, p0, Lcom/oplus/camera/professional/h$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2411
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->an(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setItemPressed(Z)V

    .line 2414
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->e()V

    .line 2416
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->e()V

    .line 2418
    iget-object p0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->a()V

    goto :goto_0

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setVisibility(I)V

    .line 2423
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ao(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 2424
    iget-object v0, p0, Lcom/oplus/camera/professional/h$8;->b:Lcom/oplus/camera/professional/h;

    iget p0, p0, Lcom/oplus/camera/professional/h$8;->a:I

    invoke-static {v0, p0}, Lcom/oplus/camera/professional/h;->e(Lcom/oplus/camera/professional/h;I)V

    :cond_1
    :goto_0
    return-void
.end method

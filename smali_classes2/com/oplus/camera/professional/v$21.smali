.class Lcom/oplus/camera/professional/v$21;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/oplus/camera/professional/v$21;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/oplus/camera/professional/v$21;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->y(Lcom/oplus/camera/professional/v;)V

    .line 1490
    iget-object v0, p0, Lcom/oplus/camera/professional/v$21;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    .line 1491
    iget-object v0, p0, Lcom/oplus/camera/professional/v$21;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->b()V

    .line 1493
    iget-object p0, p0, Lcom/oplus/camera/professional/v$21;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->A(Lcom/oplus/camera/professional/v;)V

    return-void
.end method

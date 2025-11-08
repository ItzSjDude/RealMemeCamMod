.class Lcom/oplus/camera/professional/h$20;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lcom/oplus/camera/professional/h$20;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/oplus/camera/professional/h$20;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->v(Lcom/oplus/camera/professional/h;)V

    .line 1451
    iget-object v0, p0, Lcom/oplus/camera/professional/h$20;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setPanelsBarAuto(I)V

    .line 1452
    iget-object v0, p0, Lcom/oplus/camera/professional/h$20;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->b()V

    .line 1454
    iget-object p0, p0, Lcom/oplus/camera/professional/h$20;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->x(Lcom/oplus/camera/professional/h;)V

    return-void
.end method

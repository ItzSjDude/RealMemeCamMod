.class Lcom/oplus/camera/professional/h$4;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onCaptureSequenceCompleted()V
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

    .line 1913
    iput-object p1, p0, Lcom/oplus/camera/professional/h$4;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/oplus/camera/professional/h$4;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->D(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$4;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1921
    iget-object p0, p0, Lcom/oplus/camera/professional/h$4;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/h;->f()V

    :cond_1
    return-void
.end method

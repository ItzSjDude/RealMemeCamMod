.class Lcom/oplus/camera/professional/h$3;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->x()V
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

    .line 1829
    iput-object p1, p0, Lcom/oplus/camera/professional/h$3;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1832
    iget-object v0, p0, Lcom/oplus/camera/professional/h$3;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged, SelectedPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/professional/h$3;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/professional/e;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HSProfessionalCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object p1, p0, Lcom/oplus/camera/professional/h$3;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/professional/h$3;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getSelectedPosition()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/professional/e;->a(IZ)V

    :cond_0
    return-void
.end method

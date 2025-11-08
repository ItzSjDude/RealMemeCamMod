.class Lcom/oplus/camera/professional/r$1;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->E()V
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

    .line 557
    iput-object p1, p0, Lcom/oplus/camera/professional/r$1;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/oplus/camera/professional/r$1;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged, SelectedPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/professional/r$1;->a:Lcom/oplus/camera/professional/r;

    iget-object v1, v1, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProMenuManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/oplus/camera/professional/r$1;->a:Lcom/oplus/camera/professional/r;

    iget-object p1, p1, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    iget-object p0, p0, Lcom/oplus/camera/professional/r$1;->a:Lcom/oplus/camera/professional/r;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(IZ)V

    :cond_0
    return-void
.end method

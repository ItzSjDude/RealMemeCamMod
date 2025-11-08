.class Lcom/oplus/camera/ui/OplusNumSeekBar$1;
.super Ljava/lang/Object;
.source "OplusNumSeekBar.java"

# interfaces
.implements Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/OplusNumSeekBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/OplusNumSeekBar;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setThumbOnDragging(Z)V

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V
    .locals 1

    .line 276
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/OplusNumSeekBar;->b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;I)I

    .line 278
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {p2}, Lcom/oplus/camera/ui/OplusNumSeekBar;->b(Lcom/oplus/camera/ui/OplusNumSeekBar;)I

    move-result v0

    invoke-interface {p1, p2, v0, p3}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;IZ)V

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->postInvalidate()V

    return-void
.end method

.method public b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setThumbOnDragging(Z)V

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)V

    :cond_0
    return-void
.end method

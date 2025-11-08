.class Lcom/oplus/camera/timelapsepro/g$8;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$8;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$8;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->n(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$8;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->o(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$8;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->p(Lcom/oplus/camera/timelapsepro/g;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$8;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->o(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

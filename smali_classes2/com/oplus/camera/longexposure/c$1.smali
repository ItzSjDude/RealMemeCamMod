.class Lcom/oplus/camera/longexposure/c$1;
.super Ljava/lang/Object;
.source "LongExposureEffectMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/c;->a(Lcom/oplus/camera/longexposure/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/longexposure/j;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/longexposure/c$b;

.field final synthetic d:Lcom/oplus/camera/longexposure/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/c;Lcom/oplus/camera/longexposure/j;ILcom/oplus/camera/longexposure/c$b;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    iput-object p2, p0, Lcom/oplus/camera/longexposure/c$1;->a:Lcom/oplus/camera/longexposure/j;

    iput p3, p0, Lcom/oplus/camera/longexposure/c$1;->b:I

    iput-object p4, p0, Lcom/oplus/camera/longexposure/c$1;->c:Lcom/oplus/camera/longexposure/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBaseView, event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LongExposureEffectMenuAdapter"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    invoke-static {p1}, Lcom/oplus/camera/longexposure/c;->a(Lcom/oplus/camera/longexposure/c;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/longexposure/c$1;->a:Lcom/oplus/camera/longexposure/j;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/longexposure/j;->a(Z)V

    const/4 p1, 0x0

    move v1, p1

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    invoke-static {v2}, Lcom/oplus/camera/longexposure/c;->b(Lcom/oplus/camera/longexposure/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    iget v2, p0, Lcom/oplus/camera/longexposure/c$1;->b:I

    if-eq v2, v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    invoke-static {v2}, Lcom/oplus/camera/longexposure/c;->b(Lcom/oplus/camera/longexposure/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/longexposure/j;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/longexposure/j;->a(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/c;->notifyDataSetChanged()V

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    invoke-static {p1}, Lcom/oplus/camera/longexposure/c;->c(Lcom/oplus/camera/longexposure/c;)Lcom/oplus/camera/longexposure/c$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/oplus/camera/longexposure/c$1;->d:Lcom/oplus/camera/longexposure/c;

    invoke-static {p1}, Lcom/oplus/camera/longexposure/c;->c(Lcom/oplus/camera/longexposure/c;)Lcom/oplus/camera/longexposure/c$a;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/longexposure/c$1;->a:Lcom/oplus/camera/longexposure/j;

    invoke-interface {p1, v1}, Lcom/oplus/camera/longexposure/c$a;->a(Lcom/oplus/camera/longexposure/j;)V

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/longexposure/c$1;->c:Lcom/oplus/camera/longexposure/c$b;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/c$b;->a:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/longexposure/LongExposureItemBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v0
.end method

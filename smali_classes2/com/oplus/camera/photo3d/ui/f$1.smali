.class Lcom/oplus/camera/photo3d/ui/f$1;
.super Ljava/lang/Object;
.source "SceneMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/f;->a(Lcom/oplus/camera/photo3d/ui/f$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/d;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/photo3d/ui/f$b;

.field final synthetic d:Lcom/oplus/camera/photo3d/ui/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/f;Lcom/oplus/camera/photo3d/ui/d;ILcom/oplus/camera/photo3d/ui/f$b;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/f$1;->a:Lcom/oplus/camera/photo3d/ui/d;

    iput p3, p0, Lcom/oplus/camera/photo3d/ui/f$1;->b:I

    iput-object p4, p0, Lcom/oplus/camera/photo3d/ui/f$1;->c:Lcom/oplus/camera/photo3d/ui/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBaseView, event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EffectMenuAdapter"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/f;->a(Lcom/oplus/camera/photo3d/ui/f;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->a:Lcom/oplus/camera/photo3d/ui/d;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/photo3d/ui/d;->a(Z)V

    const/4 p1, 0x0

    move v1, p1

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    invoke-static {v2}, Lcom/oplus/camera/photo3d/ui/f;->b(Lcom/oplus/camera/photo3d/ui/f;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 74
    iget v2, p0, Lcom/oplus/camera/photo3d/ui/f$1;->b:I

    if-eq v2, v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    invoke-static {v2}, Lcom/oplus/camera/photo3d/ui/f;->b(Lcom/oplus/camera/photo3d/ui/f;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/photo3d/ui/d;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/photo3d/ui/d;->a(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/f;->notifyDataSetChanged()V

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/f;->c(Lcom/oplus/camera/photo3d/ui/f;)Lcom/oplus/camera/photo3d/ui/f$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->d:Lcom/oplus/camera/photo3d/ui/f;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/f;->c(Lcom/oplus/camera/photo3d/ui/f;)Lcom/oplus/camera/photo3d/ui/f$a;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/f$1;->a:Lcom/oplus/camera/photo3d/ui/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/photo3d/ui/f$a;->a(Lcom/oplus/camera/photo3d/ui/d;)V

    .line 86
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/f$1;->c:Lcom/oplus/camera/photo3d/ui/f$b;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/f$b;->c:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/longexposure/LongExposureItemBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v0
.end method

.class Lcom/oplus/camera/timelapsepro/g$7;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;->x()V
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

    .line 617
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreDraw, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/g;->m(Lcom/oplus/camera/timelapsepro/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMenuLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->m(Lcom/oplus/camera/timelapsepro/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/g;->m(Lcom/oplus/camera/timelapsepro/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(I)V

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->notifyDataSetChanged()V

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$7;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->m(Lcom/oplus/camera/timelapsepro/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

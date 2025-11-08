.class Lcom/oplus/camera/timelapsepro/ParameterItem$1;
.super Ljava/lang/Object;
.source "ParameterItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/ParameterItem;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Lcom/oplus/camera/timelapsepro/ParameterItem;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/ParameterItem;Lcom/a/a/f;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->a(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->a:Lcom/a/a/f;

    invoke-static {p1, v0, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->b(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->a:Lcom/a/a/f;

    invoke-static {p1, p0, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->a(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->a:Lcom/a/a/f;

    invoke-static {p1, v1, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->b(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$1;->a:Lcom/a/a/f;

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    :goto_0
    return p2
.end method

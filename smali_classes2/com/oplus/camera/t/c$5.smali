.class Lcom/oplus/camera/t/c$5;
.super Ljava/lang/Object;
.source "StreetFixFocusHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/t/c;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Lcom/a/a/f;

.field final synthetic c:Lcom/oplus/camera/t/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/t/c;Lcom/a/a/f;Lcom/a/a/f;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/oplus/camera/t/c$5;->c:Lcom/oplus/camera/t/c;

    iput-object p2, p0, Lcom/oplus/camera/t/c$5;->a:Lcom/a/a/f;

    iput-object p3, p0, Lcom/oplus/camera/t/c$5;->b:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 730
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/t/c$5;->a:Lcom/a/a/f;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    .line 742
    iget-object p1, p0, Lcom/oplus/camera/t/c$5;->b:Lcom/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    .line 743
    iget-object p0, p0, Lcom/oplus/camera/t/c$5;->c:Lcom/oplus/camera/t/c;

    invoke-static {p0}, Lcom/oplus/camera/t/c;->h(Lcom/oplus/camera/t/c;)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/t/c$5;->a:Lcom/a/a/f;

    const-wide v0, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    .line 735
    iget-object p0, p0, Lcom/oplus/camera/t/c$5;->b:Lcom/a/a/f;

    const-wide p1, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-virtual {p0, p1, p2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

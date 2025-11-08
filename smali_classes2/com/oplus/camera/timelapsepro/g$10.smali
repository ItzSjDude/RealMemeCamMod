.class Lcom/oplus/camera/timelapsepro/g$10;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;Lcom/a/a/f;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$10;->b:Lcom/oplus/camera/timelapsepro/g;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/g$10;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 870
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$10;->a:Lcom/a/a/f;

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    goto :goto_0

    .line 874
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$10;->a:Lcom/a/a/f;

    invoke-static {p1, p0, v1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    :goto_0
    return v0
.end method

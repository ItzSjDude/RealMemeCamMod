.class Lcom/oplus/camera/professional/a$1;
.super Ljava/lang/Object;
.source "AutoTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Lcom/oplus/camera/professional/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/a;Lcom/a/a/f;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/professional/a$1;->b:Lcom/oplus/camera/professional/a;

    iput-object p2, p0, Lcom/oplus/camera/professional/a$1;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/a$1;->b:Lcom/oplus/camera/professional/a;

    iget-object p0, p0, Lcom/oplus/camera/professional/a$1;->a:Lcom/a/a/f;

    invoke-static {p1, p0, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/a$1;->b:Lcom/oplus/camera/professional/a;

    iget-object p0, p0, Lcom/oplus/camera/professional/a$1;->a:Lcom/a/a/f;

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    :goto_0
    return p2
.end method

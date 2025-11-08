.class Lcom/oplus/camera/professional/v$2;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;Lcom/a/a/f;)V
    .locals 0

    .line 1833
    iput-object p1, p0, Lcom/oplus/camera/professional/v$2;->b:Lcom/oplus/camera/professional/v;

    iput-object p2, p0, Lcom/oplus/camera/professional/v$2;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1836
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1845
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v$2;->b:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->F(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/professional/v$2;->a:Lcom/a/a/f;

    invoke-static {p1, p0, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    goto :goto_0

    .line 1840
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v$2;->b:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->F(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/professional/v$2;->a:Lcom/a/a/f;

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    :goto_0
    return p2
.end method

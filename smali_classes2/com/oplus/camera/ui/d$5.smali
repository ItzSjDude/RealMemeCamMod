.class Lcom/oplus/camera/ui/d$5;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/oplus/camera/ui/d$5;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1228
    iget-object p1, p0, Lcom/oplus/camera/ui/d$5;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1229
    iget-object p1, p0, Lcom/oplus/camera/ui/d$5;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 1230
    iget-object v0, p0, Lcom/oplus/camera/ui/d$5;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aX()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1232
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$5;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const/16 v1, 0x58

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIListener;->f(II)V

    .line 1235
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/d$5;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->s(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->h()V

    :cond_2
    return-void
.end method

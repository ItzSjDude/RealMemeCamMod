.class Lcom/oplus/camera/capmode/g$1;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 95
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iget-object p2, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "cancel"

    if-ne p1, p2, :cond_1

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    sget-object p2, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 97
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    iget-object p1, p1, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aM()V

    .line 98
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g;)V

    .line 99
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p1}, Lcom/oplus/camera/capmode/g;->b(Lcom/oplus/camera/capmode/g;)V

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p1}, Lcom/oplus/camera/capmode/g;->c(Lcom/oplus/camera/capmode/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    const-string p2, "db_expo_page0"

    invoke-virtual {p1, p2, v1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    const-string p2, "db_expo_page1"

    invoke-virtual {p1, p2, v1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    iget-object p2, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    sget-object p2, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    iget-object p1, p1, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aN()V

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p1}, Lcom/oplus/camera/capmode/g;->d(Lcom/oplus/camera/capmode/g;)Lcom/oplus/camera/doubleexposure/b;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V

    .line 112
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p1}, Lcom/oplus/camera/capmode/g;->e(Lcom/oplus/camera/capmode/g;)V

    .line 114
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    const-string p2, "db_expo_page2"

    invoke-virtual {p1, p2, v1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/g;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    .line 119
    sget-object p2, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne p2, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/b;->c(Z)V

    .line 120
    iget-object p2, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    iget-object p2, p2, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 122
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p1}, Lcom/oplus/camera/capmode/g;->f(Lcom/oplus/camera/capmode/g;)V

    .line 123
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$1;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {p0}, Lcom/oplus/camera/capmode/g;->g(Lcom/oplus/camera/capmode/g;)V

    return-void
.end method

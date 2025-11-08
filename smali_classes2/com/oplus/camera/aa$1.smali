.class Lcom/oplus/camera/aa$1;
.super Landroid/os/Handler;
.source "QrCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/aa;


# direct methods
.method constructor <init>(Lcom/oplus/camera/aa;Landroid/os/Looper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {p0}, Lcom/oplus/camera/aa;->j(Lcom/oplus/camera/aa;)V

    goto/16 :goto_1

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {p0}, Lcom/oplus/camera/aa;->i(Lcom/oplus/camera/aa;)V

    goto/16 :goto_1

    .line 161
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;)Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;)Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;)Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Z)V

    .line 165
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {p0}, Lcom/oplus/camera/aa;->i(Lcom/oplus/camera/aa;)V

    goto/16 :goto_1

    .line 140
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;)Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->b(Lcom/oplus/camera/aa;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->c(Lcom/oplus/camera/aa;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->d(Lcom/oplus/camera/aa;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/o/b;

    invoke-static {v0, p1}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/aa;Lcom/oplus/camera/o/b;)Lcom/oplus/camera/o/b;

    .line 143
    iget-object p1, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {p1}, Lcom/oplus/camera/aa;->e(Lcom/oplus/camera/aa;)Lcom/oplus/camera/o/b;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    .line 144
    invoke-static {p1}, Lcom/oplus/camera/aa;->e(Lcom/oplus/camera/aa;)Lcom/oplus/camera/o/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->f(Lcom/oplus/camera/aa;)Lcom/oplus/camera/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/o/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    .line 145
    invoke-static {p1}, Lcom/oplus/camera/aa;->g(Lcom/oplus/camera/aa;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 152
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/aa;->c()V

    goto :goto_1

    .line 146
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage, MSG_QR_CODE_RESULT: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {v0}, Lcom/oplus/camera/aa;->c(Lcom/oplus/camera/aa;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QrCodeManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/aa;->a()V

    .line 149
    iget-object p1, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/aa;->a(Z)V

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-static {p0}, Lcom/oplus/camera/aa;->h(Lcom/oplus/camera/aa;)V

    goto :goto_1

    .line 155
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/aa$1;->a:Lcom/oplus/camera/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/aa;->c()V

    :goto_1
    return-void
.end method

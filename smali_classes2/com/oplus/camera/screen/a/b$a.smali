.class public Lcom/oplus/camera/screen/a/b$a;
.super Landroid/os/Handler;
.source "OutCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/screen/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/a/b;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/screen/a/b;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/oplus/camera/screen/a/b$a;->a:Lcom/oplus/camera/screen/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutCaptureManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b$a;->a:Lcom/oplus/camera/screen/a/b;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/b;->a(Lcom/oplus/camera/screen/a/b;)Lcom/oplus/camera/screen/a/b$c;

    move-result-object p1

    sget-object v0, Lcom/oplus/camera/screen/a/b$c;->expand:Lcom/oplus/camera/screen/a/b$c;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "handleMessage, to idle"

    .line 155
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b$a;->a:Lcom/oplus/camera/screen/a/b;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/a/b;->b()V

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b$a;->a:Lcom/oplus/camera/screen/a/b;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/a/b;->a(Lcom/oplus/camera/screen/a/b;Z)V

    :cond_0
    return-void
.end method

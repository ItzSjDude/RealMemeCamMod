.class Lcom/oplus/camera/capmode/w$b;
.super Landroid/os/AsyncTask;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 3445
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/capmode/w;Lcom/oplus/camera/capmode/w$1;)V
    .locals 0

    .line 3445
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/w$b;-><init>(Lcom/oplus/camera/capmode/w;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 3448
    sget-object p1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/camera/Storage;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3452
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    .line 3453
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->Q()V

    .line 3457
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3458
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v2, "on"

    .line 3459
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3460
    invoke-static {v0}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "VideoMode"

    const-string p1, "doInBackground, external storage is removed, wait unmounted broadcast to finish activity"

    .line 3461
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3465
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 3466
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3467
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3470
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    .line 3476
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3477
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$b;->a:Lcom/oplus/camera/capmode/w;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3445
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3445
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

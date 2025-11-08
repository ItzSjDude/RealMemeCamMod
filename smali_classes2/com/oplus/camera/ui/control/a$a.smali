.class Lcom/oplus/camera/ui/control/a$a;
.super Landroid/os/AsyncTask;
.source "CameraControlUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/oplus/camera/ui/control/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;

.field private b:Lcom/oplus/camera/ui/control/e;

.field private c:Lcom/oplus/camera/ui/control/e$d;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/oplus/camera/ui/control/a$c;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/control/a;Lcom/oplus/camera/ui/control/e$d;ZZZLcom/oplus/camera/ui/control/a$c;)V
    .locals 0

    .line 3326
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 3318
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->b:Lcom/oplus/camera/ui/control/e;

    .line 3319
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->c:Lcom/oplus/camera/ui/control/e$d;

    const/4 p1, 0x0

    .line 3320
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a$a;->d:Z

    .line 3322
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/a$a;->f:Z

    .line 3327
    iput-object p2, p0, Lcom/oplus/camera/ui/control/a$a;->c:Lcom/oplus/camera/ui/control/e$d;

    .line 3328
    iput-boolean p3, p0, Lcom/oplus/camera/ui/control/a$a;->d:Z

    .line 3329
    iput-boolean p4, p0, Lcom/oplus/camera/ui/control/a$a;->e:Z

    .line 3330
    iput-boolean p5, p0, Lcom/oplus/camera/ui/control/a$a;->f:Z

    .line 3331
    iput-object p6, p0, Lcom/oplus/camera/ui/control/a$a;->g:Lcom/oplus/camera/ui/control/a$c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/oplus/camera/ui/control/e;
    .locals 5

    .line 3340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground, mMediaInfo: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$a;->c:Lcom/oplus/camera/ui/control/e$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraControlUI"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3342
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3346
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a$a;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->r(Lcom/oplus/camera/ui/control/a;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->s(Lcom/oplus/camera/ui/control/a;)Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3353
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$a;->b:Lcom/oplus/camera/ui/control/e;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/a$a;->e:Z

    if-eqz v1, :cond_5

    .line 3354
    new-instance v1, Lcom/oplus/camera/ui/control/e;

    invoke-direct {v1}, Lcom/oplus/camera/ui/control/e;-><init>()V

    .line 3355
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a$a;->c:Lcom/oplus/camera/ui/control/e$d;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/control/e;->a(Lcom/oplus/camera/ui/control/e$d;)V

    .line 3357
    sget-object v2, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    move p1, v3

    .line 3359
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/a;->s(Lcom/oplus/camera/ui/control/a;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Lcom/oplus/camera/ui/control/e;Z)I

    move-result v2

    .line 3361
    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->ac()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    .line 3362
    iget-object v2, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/a;->s(Lcom/oplus/camera/ui/control/a;)Landroid/content/ContentResolver;

    move-result-object v2

    xor-int/2addr p1, v3

    invoke-static {v2, v1, p1}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Lcom/oplus/camera/ui/control/e;Z)I

    move-result v2

    .line 3365
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground, code: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    goto :goto_0

    .line 3377
    :cond_3
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/control/a$a;->cancel(Z)Z

    goto :goto_0

    .line 3369
    :cond_4
    iput-object v1, p0, Lcom/oplus/camera/ui/control/a$a;->b:Lcom/oplus/camera/ui/control/e;

    .line 3385
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->t(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/f;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/a;->ak()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3386
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->t(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/f;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a$a;->e:Z

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/control/f;->a(Z)V

    .line 3389
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$a;->b:Lcom/oplus/camera/ui/control/e;

    return-object p0

    .line 3347
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground, isCancelled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a$a;->isCancelled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->r(Lcom/oplus/camera/ui/control/a;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContentResolver: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    .line 3348
    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->s(Lcom/oplus/camera/ui/control/a;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3347
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected a(Lcom/oplus/camera/ui/control/e;)V
    .locals 2

    .line 3394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask, onPostExecute, thumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a$a;->isCancelled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->r(Lcom/oplus/camera/ui/control/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3400
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/a$a;->e:Z

    if-eqz v0, :cond_2

    .line 3401
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->t(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3402
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/a$a;->d:Z

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/e;Z)V

    goto :goto_0

    .line 3404
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/e;Z)V

    .line 3407
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$a;->b:Lcom/oplus/camera/ui/control/e;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$a;->g:Lcom/oplus/camera/ui/control/a$c;

    if-eqz p0, :cond_3

    .line 3408
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/a$c;->a(Lcom/oplus/camera/ui/control/e;)V

    goto :goto_1

    .line 3411
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$a;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->Q()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 0

    .line 3335
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/a$a;->f:Z

    return p0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3317
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a$a;->a([Ljava/lang/Void;)Lcom/oplus/camera/ui/control/e;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3317
    check-cast p1, Lcom/oplus/camera/ui/control/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/a$a;->a(Lcom/oplus/camera/ui/control/e;)V

    return-void
.end method

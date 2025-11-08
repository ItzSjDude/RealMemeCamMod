.class Lcom/oplus/camera/filmvideomode/a$1;
.super Landroid/os/Handler;
.source "BaseFilmUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/filmvideomode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/a;Landroid/os/Looper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-boolean v0, v0, Lcom/oplus/camera/filmvideomode/a;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_4

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->c(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-boolean p1, p1, Lcom/oplus/camera/filmvideomode/a;->p:Z

    if-nez p1, :cond_4

    .line 123
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->h()V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-boolean p1, p1, Lcom/oplus/camera/filmvideomode/a;->p:Z

    if-nez p1, :cond_4

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->j()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-boolean v0, v0, Lcom/oplus/camera/filmvideomode/a;->p:Z

    if-nez v0, :cond_4

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$1;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/filmvideomode/FilmParam;

    invoke-static {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/filmvideomode/a;Lcom/oplus/camera/filmvideomode/FilmParam;)V

    :cond_4
    :goto_0
    return-void
.end method

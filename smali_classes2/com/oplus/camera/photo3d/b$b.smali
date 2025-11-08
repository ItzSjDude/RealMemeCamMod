.class Lcom/oplus/camera/photo3d/b$b;
.super Landroid/os/Handler;
.source "ThreeDPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/b;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/photo3d/b;Landroid/os/Looper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 148
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->c(Lcom/oplus/camera/photo3d/b;)Lcom/oplus/camera/photo3d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/d;->b()Landroid/util/Size;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v1}, Lcom/oplus/camera/photo3d/b;->h(Lcom/oplus/camera/photo3d/b;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v3}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/g;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/a/i;->a(Landroid/app/Activity;Lcom/b/a/g;)Lcom/b/a/h;

    move-result-object v2

    .line 151
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-interface {v2, p1, v3, v0}, Lcom/b/a/h;->a(Landroid/view/Surface;II)Lcom/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    .line 152
    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->g(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/b/a/h;->a(Lcom/b/a/k;)Lcom/b/a/h;

    move-result-object p1

    .line 150
    invoke-static {v1, p1}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/b;Lcom/b/a/h;)Lcom/b/a/h;

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/b;->e(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->i(Lcom/oplus/camera/photo3d/b;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/b/a/h;->a(I)V

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/b;->e(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/b/a/h;->a()V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/b;->c(Lcom/oplus/camera/photo3d/b;)Lcom/oplus/camera/photo3d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/d;->c()V

    .line 143
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/b;->e(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/b/a/h;->b()V

    .line 144
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/b;->f(Lcom/oplus/camera/photo3d/b;)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/photo3d/b$a;

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    iget-object v1, p1, Lcom/oplus/camera/photo3d/b$a;->a:Lcom/b/a/g;

    invoke-static {v0, v1}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/b;Lcom/b/a/g;)Lcom/b/a/g;

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/b/a/g;->g:Z

    invoke-static {v0, v1}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/b;Z)Z

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/b;J)V

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->b(Lcom/oplus/camera/photo3d/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->c(Lcom/oplus/camera/photo3d/b;)Lcom/oplus/camera/photo3d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/d;->a()V

    .line 138
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b$b;->a:Lcom/oplus/camera/photo3d/b;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/b;->d(Lcom/oplus/camera/photo3d/b;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    iget-wide v0, p1, Lcom/oplus/camera/photo3d/b$a;->b:J

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

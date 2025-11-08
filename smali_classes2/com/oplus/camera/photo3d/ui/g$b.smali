.class Lcom/oplus/camera/photo3d/ui/g$b;
.super Landroid/os/Handler;
.source "ThreeDPhotoUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/g;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/photo3d/ui/g;Landroid/os/Looper;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    .line 147
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 191
    :pswitch_1
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->k(Lcom/oplus/camera/photo3d/ui/g;)V

    goto/16 :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;I)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;I)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;ZZ)V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/g;->i(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/c;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/c;->a(I)V

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->j(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    goto :goto_0

    .line 178
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/e;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/photo3d/ui/e;->b(Z)V

    goto :goto_0

    .line 174
    :pswitch_5
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/g;->i(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;I)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;I)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/photo3d/ui/c;->b(ZZ)V

    goto :goto_0

    .line 170
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/g;->i(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;I)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;I)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/photo3d/ui/c;->a(ZZ)V

    goto :goto_0

    .line 166
    :pswitch_7
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->h(Lcom/oplus/camera/photo3d/ui/g;)V

    goto :goto_0

    .line 162
    :pswitch_8
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->g(Lcom/oplus/camera/photo3d/ui/g;)V

    goto :goto_0

    .line 158
    :pswitch_9
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->f(Lcom/oplus/camera/photo3d/ui/g;)V

    goto :goto_0

    .line 154
    :pswitch_a
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$b;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->e(Lcom/oplus/camera/photo3d/ui/g;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

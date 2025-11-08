.class public Lcom/oplus/camera/ui/MicroscopeHintView$b;
.super Landroid/os/Handler;
.source "MicroscopeHintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/MicroscopeHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/MicroscopeHintView;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/MicroscopeHintView;Landroid/os/Looper;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/MicroscopeHintView;->a(Lcom/oplus/camera/ui/MicroscopeHintView;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x7f1001f4

    const v1, 0x7f1001f3

    const v2, 0x7f1001f2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 202
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/MicroscopeHintView;->a(Lcom/oplus/camera/ui/MicroscopeHintView;Z)Z

    .line 204
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/MicroscopeHintView$a;->c()V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->d(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 209
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->d(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->g(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$b;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 213
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->e(Lcom/oplus/camera/ui/MicroscopeHintView;)I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    goto/16 :goto_2

    .line 219
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto/16 :goto_2

    .line 215
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto/16 :goto_2

    .line 192
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/MicroscopeHintView;->a(Lcom/oplus/camera/ui/MicroscopeHintView;Z)Z

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/MicroscopeHintView$a;->b()V

    .line 198
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->f(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "key_microscope_guide_show_need"

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 176
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->e(Lcom/oplus/camera/ui/MicroscopeHintView;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    goto/16 :goto_2

    .line 182
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto/16 :goto_2

    .line 178
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto/16 :goto_2

    .line 158
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->e(Lcom/oplus/camera/ui/MicroscopeHintView;)I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    goto/16 :goto_2

    .line 165
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f1001f4

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_2

    .line 160
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f1001f3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_2

    .line 154
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto/16 :goto_2

    .line 150
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->d(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    goto/16 :goto_2

    .line 146
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/MicroscopeHintView;->c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f1001f2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 122
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView$b;->a:Lcom/oplus/camera/ui/MicroscopeHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/MicroscopeHintView$a;->a()V

    :cond_8
    :goto_0
    if-gt v3, v4, :cond_b

    const/4 p1, 0x2

    if-nez v3, :cond_9

    .line 128
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 130
    :cond_9
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    mul-int/lit16 v0, v3, 0x1d4c

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    const/4 p1, 0x3

    .line 133
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    mul-int/lit16 v0, v3, 0x1d4c

    add-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x4

    .line 134
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    add-int/lit16 v1, v0, 0xd9b

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x5

    .line 135
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    add-int/lit16 v1, v0, 0xeb7

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x6

    .line 136
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    add-int/lit16 v1, v0, 0x1b58

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-ne v4, v3, :cond_a

    const/4 p1, 0x7

    .line 139
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    add-int/lit16 v0, v0, 0x1d4c

    add-int/lit16 v0, v0, -0xa7

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

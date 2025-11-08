.class public Lcom/heytap/accessory/stream/StreamCallbackReceiver;
.super Landroid/os/ResultReceiver;
.source "StreamCallbackReceiver.java"


# static fields
.field public static final COMPLETE_CONN_ID_KEY:Ljava/lang/String; = "connectionId"

.field public static final COMPLETE_TRAN_ID_KEY:Ljava/lang/String; = "transactionId"

.field public static final MULTI_TRANSFER_ERROR:I = 0x67

.field public static final NORMAL_TRANSFER_ERROR:I = 0x66

.field public static final TRANSFER_COMPLETE:I = 0x65

.field private static final a:Ljava/lang/String; = "StreamCallbackReceiver"


# instance fields
.field private b:Lcom/heytap/accessory/stream/StreamTransfer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/heytap/accessory/stream/StreamTransfer$b;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 44
    iput-object p2, p0, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    const-string v0, "CallBackJson"

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST Error"

    packed-switch p1, :pswitch_data_0

    .line 101
    :pswitch_0
    sget-object p0, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->a:Ljava/lang/String;

    const-string p1, "Wrong resultCode"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :pswitch_1
    sget-object p1, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance p1, Lcom/heytap/accessory/stream/b/d;

    invoke-direct {p1}, Lcom/heytap/accessory/stream/b/d;-><init>()V

    .line 91
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/heytap/accessory/stream/b/d;->a(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/d;->a()[I

    move-result-object p2

    .line 93
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/d;->b()I

    move-result p1

    .line 94
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    invoke-interface {p0, p2, p1}, Lcom/heytap/accessory/stream/StreamTransfer$b;->a([II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 73
    :pswitch_2
    sget-object p1, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/heytap/accessory/stream/b/h;

    invoke-direct {p1}, Lcom/heytap/accessory/stream/b/h;-><init>()V

    .line 76
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/heytap/accessory/stream/b/h;->a(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/h;->a()J

    move-result-wide v0

    .line 78
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/h;->b()I

    move-result p2

    .line 79
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/h;->c()I

    move-result p1

    .line 80
    sget-object v2, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->a:Ljava/lang/String;

    const-string v3, "ST Error:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/heytap/accessory/stream/StreamTransfer$b;->a(JII)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 66
    :pswitch_3
    sget-object p1, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->a:Ljava/lang/String;

    const-string v0, "Transfer Complete"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "transactionId"

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "connectionId"

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 69
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    const/4 p2, 0x0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/heytap/accessory/stream/StreamTransfer$b;->a(JII)V

    return-void

    .line 54
    :pswitch_4
    new-instance p0, Lcom/heytap/accessory/file/a/j;

    invoke-direct {p0}, Lcom/heytap/accessory/file/a/j;-><init>()V

    .line 56
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/file/a/j;->a(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/heytap/accessory/file/a/j;->a()J

    move-result-wide p1

    .line 58
    invoke-virtual {p0}, Lcom/heytap/accessory/file/a/j;->b()I

    move-result p0

    .line 59
    sget-object v0, Lcom/heytap/accessory/stream/StreamCallbackReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceiveResult mConnectionId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " mTransactionId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

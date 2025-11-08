.class Lcom/heytap/accessory/file/FileCallbackReceiver;
.super Landroid/os/ResultReceiver;
.source "FileCallbackReceiver.java"


# static fields
.field public static final a:Ljava/lang/String; = "FileCallbackReceiver"


# instance fields
.field private b:Lcom/heytap/accessory/file/FileTransfer$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/heytap/accessory/file/FileTransfer$c;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 38
    iput-object p2, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8

    const-string v0, "CallBackJson"

    .line 43
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 123
    sget-object p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Wrong resultCode:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :pswitch_0
    sget-object p1, Lcom/heytap/accessory/file/FileCallbackReceiver;->a:Ljava/lang/String;

    const-string v0, "RESULT_FILE_TRANSFER_CANCEL_ALL"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p1, Lcom/heytap/accessory/file/a/g;

    invoke-direct {p1}, Lcom/heytap/accessory/file/a/g;-><init>()V

    .line 114
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/file/a/g;->a(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/g;->a()[I

    move-result-object p2

    .line 116
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/g;->b()I

    move-result p1

    .line 117
    iget-object p0, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    invoke-interface {p0, p2, p1}, Lcom/heytap/accessory/file/FileTransfer$c;->a([II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 96
    :pswitch_1
    sget-object p1, Lcom/heytap/accessory/file/FileCallbackReceiver;->a:Ljava/lang/String;

    const-string v0, "RESULT_FILE_TRANSFER_ERROR"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance p1, Lcom/heytap/accessory/file/a/i;

    invoke-direct {p1}, Lcom/heytap/accessory/file/a/i;-><init>()V

    .line 100
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/file/a/i;->a(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/i;->a()J

    move-result-wide v1

    .line 102
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/i;->b()I

    move-result v3

    .line 103
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/i;->c()I

    move-result v5

    .line 104
    iget-object v0, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JILjava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 75
    :pswitch_2
    new-instance p1, Lcom/heytap/accessory/file/a/h;

    invoke-direct {p1}, Lcom/heytap/accessory/file/a/h;-><init>()V

    .line 78
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/file/FileCallbackReceiver;->a:Ljava/lang/String;

    const-string v1, "Transfer Complete:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/file/a/h;->a(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/h;->a()J

    move-result-wide v3

    .line 82
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/h;->b()I

    move-result v5

    .line 83
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/h;->c()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/h;->d()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JILjava/lang/String;I)V

    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JILjava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 92
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 63
    :pswitch_3
    new-instance p1, Lcom/heytap/accessory/file/a/j;

    invoke-direct {p1}, Lcom/heytap/accessory/file/a/j;-><init>()V

    .line 65
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/file/a/j;->a(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/j;->a()J

    move-result-wide v0

    .line 67
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/j;->b()I

    move-result p2

    .line 68
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/j;->c()J

    move-result-wide v2

    long-to-int p1, v2

    .line 69
    iget-object p0, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JII)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 51
    :pswitch_4
    new-instance p1, Lcom/heytap/accessory/file/a/j;

    invoke-direct {p1}, Lcom/heytap/accessory/file/a/j;-><init>()V

    .line 53
    :try_start_4
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/file/a/j;->a(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/j;->a()J

    move-result-wide v0

    .line 55
    invoke-virtual {p1}, Lcom/heytap/accessory/file/a/j;->b()I

    move-result p1

    .line 56
    sget-object p2, Lcom/heytap/accessory/file/FileCallbackReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceiveResult mConnectionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mTransactionId\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/heytap/accessory/file/FileCallbackReceiver;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    invoke-interface {p0}, Lcom/heytap/accessory/file/FileTransfer$c;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

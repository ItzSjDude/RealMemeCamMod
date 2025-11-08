.class Lcom/oplus/camera/sticker/b/a$1;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Call;Lcom/oplus/camera/sticker/b/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/b/a$c;

.field final synthetic b:Lcom/oplus/camera/sticker/b/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/b/a;Lcom/oplus/camera/sticker/b/a$c;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/oplus/camera/sticker/b/a$1;->b:Lcom/oplus/camera/sticker/b/a;

    iput-object p2, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 164
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object p0, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0, p1}, Lcom/oplus/camera/sticker/b/a$c;->a(Ljava/lang/String;)V

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "asyncRequest, onFailure, errMsg: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpRequestHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "HttpRequestHelper"

    if-nez p2, :cond_2

    :try_start_0
    const-string v0, "asyncRequest, onResponse, null response"

    .line 177
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    const-string v1, "null response"

    invoke-interface {v0, v1}, Lcom/oplus/camera/sticker/b/a$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p2, :cond_1

    .line 209
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    :cond_1
    return-void

    .line 186
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/sticker/b/a$c;->a(Lokhttp3/ResponseBody;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    invoke-interface {v1, v0}, Lcom/oplus/camera/sticker/b/a$c;->a(Ljava/lang/String;)V

    .line 197
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncRequest, onResponse not successful! resMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p2, :cond_7

    .line 209
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 200
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    if-eqz v1, :cond_6

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/sticker/b/a$1;->a:Lcom/oplus/camera/sticker/b/a$c;

    invoke-interface {p0, v0}, Lcom/oplus/camera/sticker/b/a$c;->a(Ljava/lang/String;)V

    .line 206
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncRequest, onResponse exception! errorMsg: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    return-void

    :goto_3
    if-eqz p2, :cond_8

    .line 209
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 211
    :cond_8
    throw p0
.end method

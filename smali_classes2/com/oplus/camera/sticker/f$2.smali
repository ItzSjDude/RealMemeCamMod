.class Lcom/oplus/camera/sticker/f$2;
.super Ljava/lang/Object;
.source "StickerDataRequest.java"

# interfaces
.implements Lcom/oplus/camera/sticker/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/f;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/oplus/camera/sticker/f$2;->a:Lcom/oplus/camera/sticker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFail errorMsg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerDataRequest"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lokhttp3/ResponseBody;)V
    .locals 2

    .line 141
    :try_start_0
    sget-object v0, Lcom/oplus/camera/sticker/protocol/StickerResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/sticker/protocol/StickerResponse;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 143
    iget-object p0, p0, Lcom/oplus/camera/sticker/f$2;->a:Lcom/oplus/camera/sticker/f;

    invoke-static {p0, p1, v0, v1}, Lcom/oplus/camera/sticker/f;->a(Lcom/oplus/camera/sticker/f;Lcom/oplus/camera/sticker/protocol/StickerResponse;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestData exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerDataRequest"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

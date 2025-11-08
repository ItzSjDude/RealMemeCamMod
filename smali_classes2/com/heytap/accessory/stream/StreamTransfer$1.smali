.class final Lcom/heytap/accessory/stream/StreamTransfer$1;
.super Ljava/lang/Object;
.source "StreamTransfer.java"

# interfaces
.implements Lcom/heytap/accessory/stream/StreamTransfer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/stream/StreamTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/stream/StreamTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/stream/StreamTransfer;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JII)V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/stream/StreamTransfer;->access$000(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "StreamTransfer"

    if-nez v0, :cond_0

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "connectionId ="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "not exits"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v2}, Lcom/heytap/accessory/stream/StreamTransfer;->access$100(Lcom/heytap/accessory/stream/StreamTransfer;)Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/heytap/accessory/stream/b/a$a;

    .line 93
    iget v4, v4, Lcom/heytap/accessory/stream/b/a$a;->b:I

    if-ne v4, p3, :cond_1

    if-eqz v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0, p4}, Lcom/heytap/accessory/stream/StreamTransfer;->access$200(Lcom/heytap/accessory/stream/StreamTransfer;I)V

    .line 95
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, p1, p2, v0, p4}, Lcom/heytap/accessory/stream/StreamTransfer$EventListener;->onTransferCompleted(JII)V

    .line 96
    iget-object p4, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4, p1, p2, v0}, Lcom/heytap/accessory/stream/StreamTransfer;->access$300(Lcom/heytap/accessory/stream/StreamTransfer;JI)V

    .line 97
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$400(Lcom/heytap/accessory/stream/StreamTransfer;JI)V

    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$500(Lcom/heytap/accessory/stream/StreamTransfer;JI)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    if-eq p4, v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "Ignoring onTransferCompleted because setup in progress"

    .line 114
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$600(Lcom/heytap/accessory/stream/StreamTransfer;JI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$700(Lcom/heytap/accessory/stream/StreamTransfer;JI)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 104
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0, p4}, Lcom/heytap/accessory/stream/StreamTransfer;->access$200(Lcom/heytap/accessory/stream/StreamTransfer;I)V

    .line 105
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/heytap/accessory/stream/StreamTransfer$EventListener;->onTransferCompleted(JII)V

    .line 106
    iget-object p4, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {p4, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$400(Lcom/heytap/accessory/stream/StreamTransfer;JI)V

    .line 107
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {p0, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$800(Lcom/heytap/accessory/stream/StreamTransfer;I)V

    :cond_5
    return-void
.end method

.method public final a([II)V
    .locals 7

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    .line 131
    iget-object v3, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v3}, Lcom/heytap/accessory/stream/StreamTransfer;->access$000(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 132
    iget-object v6, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v6}, Lcom/heytap/accessory/stream/StreamTransfer;->access$000(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/heytap/accessory/stream/b/a$a;

    iget v6, v6, Lcom/heytap/accessory/stream/b/a$a;->b:I

    if-ne v6, v2, :cond_1

    iget-object v6, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v6}, Lcom/heytap/accessory/stream/StreamTransfer;->access$100(Lcom/heytap/accessory/stream/StreamTransfer;)Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 138
    iget-object v6, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcom/heytap/accessory/stream/StreamTransfer;->access$800(Lcom/heytap/accessory/stream/StreamTransfer;I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {p1}, Lcom/heytap/accessory/stream/StreamTransfer;->access$100(Lcom/heytap/accessory/stream/StreamTransfer;)Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 145
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer$1;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {p0, p2}, Lcom/heytap/accessory/stream/StreamTransfer;->access$900(Lcom/heytap/accessory/stream/StreamTransfer;I)V

    const/4 p0, -0x1

    .line 146
    invoke-interface {p1, p0, p2}, Lcom/heytap/accessory/stream/StreamTransfer$EventListener;->onCancelAllCompleted(II)V

    :cond_4
    return-void
.end method

.class final Lcom/heytap/accessory/file/FileTransfer$1;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Lcom/heytap/accessory/file/FileTransfer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/file/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/file/FileTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string p0, "FileTransfer"

    const-string v0, "onTransferRequested"

    .line 158
    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(JII)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$000(Lcom/heytap/accessory/file/FileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const-string p0, "FileTransfer"

    const-string p1, "detailsMap == null"

    .line 93
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/file/a$a;

    iget v2, v2, Lcom/heytap/accessory/file/a$a;->b:I

    if-ne v2, p3, :cond_1

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v2}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p0}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onProgressChanged(JII)V

    :cond_2
    return-void
.end method

.method public final a(JILjava/lang/String;I)V
    .locals 9

    .line 106
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$000(Lcom/heytap/accessory/file/FileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "FileTransfer"

    if-nez v0, :cond_0

    const-string p0, "onTransferCompleted detailsMap == null"

    .line 108
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/accessory/file/a$a;

    .line 113
    iget v4, v3, Lcom/heytap/accessory/file/a$a;->b:I

    if-ne v4, p3, :cond_1

    iget-object v4, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v4}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v0, v3, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_5

    .line 115
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    const-string v5, "temp file could not be deleted - "

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "temp file deleted successfully - "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 123
    iput-object v0, v3, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0, p5}, Lcom/heytap/accessory/file/FileTransfer;->access$200(Lcom/heytap/accessory/file/FileTransfer;I)V

    .line 135
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-wide v4, p1

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onTransferCompleted(JILjava/lang/String;I)V

    .line 136
    iget-object p4, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p4, p1, p2, p5}, Lcom/heytap/accessory/file/FileTransfer;->access$300(Lcom/heytap/accessory/file/FileTransfer;JI)V

    .line 137
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->access$400(Lcom/heytap/accessory/file/FileTransfer;JI)V

    return-void

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->access$500(Lcom/heytap/accessory/file/FileTransfer;JI)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    if-eq p5, v0, :cond_7

    goto :goto_2

    :cond_7
    const-string p0, "Ignoring onTransferCompleted because setup in progress"

    .line 153
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->access$600(Lcom/heytap/accessory/file/FileTransfer;JI)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->access$700(Lcom/heytap/accessory/file/FileTransfer;JI)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0, p5}, Lcom/heytap/accessory/file/FileTransfer;->access$200(Lcom/heytap/accessory/file/FileTransfer;I)V

    .line 145
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onTransferCompleted(JILjava/lang/String;I)V

    .line 146
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->access$400(Lcom/heytap/accessory/file/FileTransfer;JI)V

    :cond_9
    return-void
.end method

.method public final a([II)V
    .locals 7

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    .line 164
    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v3}, Lcom/heytap/accessory/file/FileTransfer;->access$000(Lcom/heytap/accessory/file/FileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 165
    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v6}, Lcom/heytap/accessory/file/FileTransfer;->access$000(Lcom/heytap/accessory/file/FileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    .line 169
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

    .line 170
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/heytap/accessory/file/a$a;

    iget v6, v6, Lcom/heytap/accessory/file/a$a;->b:I

    if-ne v6, v2, :cond_1

    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v6}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 171
    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcom/heytap/accessory/file/FileTransfer;->access$800(Lcom/heytap/accessory/file/FileTransfer;I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p1}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 177
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p1, p2}, Lcom/heytap/accessory/file/FileTransfer;->access$900(Lcom/heytap/accessory/file/FileTransfer;I)V

    .line 178
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$1;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p0}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onCancelAllCompleted(II)V

    :cond_4
    return-void
.end method

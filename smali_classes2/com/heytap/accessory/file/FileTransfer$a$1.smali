.class final Lcom/heytap/accessory/file/FileTransfer$a$1;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/file/FileTransfer$a;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/heytap/accessory/file/FileTransfer$a;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer$a;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$a$1;->c:Lcom/heytap/accessory/file/FileTransfer$a;

    iput-object p2, p0, Lcom/heytap/accessory/file/FileTransfer$a$1;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/heytap/accessory/file/FileTransfer$a$1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in FileTransfer Handler thread :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$a$1;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransfer"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$a$1;->b:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

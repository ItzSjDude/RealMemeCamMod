.class public Lcom/heytap/accessory/file/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/file/FileTransfer$b;,
        Lcom/heytap/accessory/file/FileTransfer$a;,
        Lcom/heytap/accessory/file/FileTransfer$EventListener;,
        Lcom/heytap/accessory/file/FileTransfer$c;
    }
.end annotation


# static fields
.field public static final ACTION_AFP_FILE_TRANSFER_REQUESTED:Ljava/lang/String; = "com.heytap.accessory.ftconnection"

.field private static final COVERED_MODE:Z = true

.field public static final ERROR_CHANNEL_IO:I = 0x1

.field public static final ERROR_COMMAND_DROPPED:I = 0x3

.field public static final ERROR_CONNECTION_LOST:I = 0x5

.field public static final ERROR_FATAL:I = 0x4e21

.field public static final ERROR_FILE_IO:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_PEER_AGENT_BUSY:I = 0x8

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x4

.field public static final ERROR_PEER_AGENT_REJECTED:I = 0x9

.field public static final ERROR_REQUEST_NOT_QUEUED:I = -0x1

.field public static final ERROR_SPACE_NOT_AVAILABLE:I = 0xb

.field public static final ERROR_TRANSACTION_NOT_FOUND:I = 0xd

.field private static final FILE_PROVIDER:Ljava/lang/String; = "androidx.core.content.FileProvider"

.field private static final FILE_PROVIDER_V4:Ljava/lang/String; = "androidx.core.content.FileProvider"

.field private static final FT_CANCEL_TRANS_ID:I = -0x1

.field private static final FT_DEFAULT_CONNECTION_ID:I = 0x0

.field private static final FT_DEFAULT_TRANS_ID:I = 0x0

.field private static final INTERNAL_FTREQUEST_ACTION:Ljava/lang/String; = "com.heytap.accessory.ftconnection.internal"

.field private static final TAG:Ljava/lang/String; = "FileTransfer"


# instance fields
.field private mAgentName:Ljava/lang/String;

.field private mCallingAgent:Ljava/lang/Object;

.field private mCallingAgentInfo:Lcom/heytap/accessory/file/a;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

.field private mFileTransferHandlerThread:Landroid/os/HandlerThread;

.field private mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

.field mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

.field private mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/accessory/file/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/file/FileTransfer$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/heytap/accessory/file/FileTransfer;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/heytap/accessory/file/FileTransfer$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/file/FileTransfer$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/heytap/accessory/file/FileTransfer;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/heytap/accessory/file/FileTransfer$EventListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/heytap/accessory/file/FileTransfer$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v0, Lcom/heytap/accessory/file/FileTransfer$1;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/file/FileTransfer$1;-><init>(Lcom/heytap/accessory/file/FileTransfer;)V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 193
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 194
    iput-object p2, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    .line 197
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/file/FTInitializer;->init(Landroid/content/Context;)V

    .line 199
    invoke-direct {p0}, Lcom/heytap/accessory/file/FileTransfer;->register()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FileTransfer"

    const-string p2, "Agent already registered"

    .line 200
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p1}, Lcom/heytap/accessory/file/FileTransferManager;->b(Ljava/lang/String;)Lcom/heytap/accessory/file/a;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    .line 202
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    if-eqz p1, :cond_0

    .line 2049
    iget-object p1, p1, Lcom/heytap/accessory/file/a;->c:Landroid/os/HandlerThread;

    .line 203
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 204
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    .line 2053
    iget-object p1, p1, Lcom/heytap/accessory/file/a;->d:Landroid/os/Handler;

    .line 204
    check-cast p1, Lcom/heytap/accessory/file/FileTransfer$b;

    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    .line 205
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    .line 2057
    iget-object p1, p1, Lcom/heytap/accessory/file/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 205
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 206
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    iget-object p2, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    .line 2061
    iput-object p2, p1, Lcom/heytap/accessory/file/a;->a:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    .line 207
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    .line 2065
    iput-object p0, p1, Lcom/heytap/accessory/file/a;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    :cond_0
    return-void

    .line 212
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FileEventCallback parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/heytap/accessory/file/FileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/heytap/accessory/file/FileTransfer;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/heytap/accessory/file/FileTransfer;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/heytap/accessory/file/FileTransfer;JIZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/heytap/accessory/file/FileTransfer;->putTransactionRequest(JIZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/heytap/accessory/file/FileTransfer;JI)Lcom/heytap/accessory/file/a$a;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->getTransaction(JI)Lcom/heytap/accessory/file/a$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/heytap/accessory/file/FileTransfer;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->handleOnTransferCompletedErrorCode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/heytap/accessory/file/FileTransfer;JI)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->removeTransaction(JI)V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/accessory/file/FileTransfer;JI)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->removeTransactionRequest(JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/heytap/accessory/file/FileTransfer;JI)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->getTransactionRequestState(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/heytap/accessory/file/FileTransfer;JI)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionRequestKey(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/heytap/accessory/file/FileTransfer;JI)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionKey(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/heytap/accessory/file/FileTransfer;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->removeTransactionByTransId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/heytap/accessory/file/FileTransfer;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->handleOnCancelAllCompletedErrorCode(I)V

    return-void
.end method

.method private changeFileName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 955
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "File rename failed"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "FileTransfer"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    .line 957
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 958
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 960
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 961
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "File successfully renamed "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 965
    :cond_0
    invoke-static {v4, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 968
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 969
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "File successfully renamed: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    .line 971
    :cond_2
    invoke-static {v4, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private checkReceiveParams(Ljava/lang/String;JI)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "FileTransfer"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    .line 854
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 857
    :cond_1
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "checkReceiveParams return false, internal path"

    .line 858
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 862
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "given path is a directory"

    .line 864
    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "/"

    .line 867
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "."

    .line 868
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p0, "No extension provided"

    .line 869
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 873
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_5

    const-string p0, "extension length is 0"

    .line 874
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 878
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 880
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p1, "Directory does not exist!"

    .line 882
    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "getParentFile() is null "

    .line 885
    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 891
    invoke-direct {p0, p2, p3, p4}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionKey(JI)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "transactionId already exist"

    .line 892
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :cond_8
    return v0
.end method

.method private checkSource(Ljava/lang/String;)V
    .locals 8

    const-string v0, "FileTransfer"

    if-eqz p1, :cond_9

    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    const-string v1, "."

    .line 796
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "File has a valid extentsion: "

    .line 797
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 804
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 807
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "URI scheme is SCHEME_FILE  File Path : "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 809
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 810
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "_data"

    .line 811
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 812
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 813
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 815
    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "URI ContentResolver is SCHEME_CONTENT File Path : "

    .line 817
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 822
    throw p1

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 826
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    const-string p0, "srcToSend is null"

    .line 831
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 835
    :cond_4
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 838
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_6

    .line 840
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-eqz p0, :cond_5

    const-string p0, "File is valid !!"

    .line 843
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 841
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File length is 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 839
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File is a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 837
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File doesnot exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 799
    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 800
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong file..does not have extension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 846
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong file path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 791
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "localSrc must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized containsTransactionKey(JI)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 1097
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized containsTransactionRequestKey(JI)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 1141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string p1, "FileTransfer"

    const-string p2, "TransferRequest record null"

    .line 1143
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getContentURIAuthority()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 702
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 708
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 709
    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 710
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v3, "androidx.core.content.FileProvider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "Authority:"

    const-string v5, "FileTransfer"

    if-eqz v2, :cond_1

    .line 711
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object p0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    return-object p0

    .line 713
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object p0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private declared-synchronized getTransaction(JI)Lcom/heytap/accessory/file/a$a;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1060
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 1063
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/heytap/accessory/file/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getTransactionRequestState(JI)Z
    .locals 1

    monitor-enter p0

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1121
    monitor-exit p0

    return p1

    .line 1123
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleOnCancelAllCompletedErrorCode(I)V
    .locals 1

    const/16 p0, 0xc

    const-string v0, "FileTransfer"

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    .line 949
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCancelAllCompleted() error_code: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "onCancelAllCompleted() -> ERROR_TRANSACTION_NOT_FOUND"

    .line 946
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "onCancelAllCompleted() -> ERROR_NOT_SUPPORTED"

    .line 943
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleOnTransferCompletedErrorCode(I)V
    .locals 1

    const/16 p0, 0x8

    const-string v0, "FileTransfer"

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_2

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0x4e21

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 935
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTransferCompleted() error_code: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "onTransferCompleted() -> ERROR_CONNECTION_LOST"

    .line 920
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "onTransferCompleted() -> ERROR_PEER_AGENT_NO_RESPONSE"

    .line 917
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "onTransferCompleted() -> ERROR_COMMAND_DROPPED"

    .line 914
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "onTransferCompleted() -> ERROR_FILE_IO"

    .line 911
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p0, "onTransferCompleted() -> ERROR_CHANNEL_IO"

    .line 908
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p0, "onTransferCompleted() -> ERROR_NONE"

    .line 905
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p0, "onTransferCompleted() -> ERROR_REQUEST_NOT_QUEUED"

    .line 902
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "onTransferCompleted() -> ERROR_FATAL"

    .line 932
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "onTransferCompleted() -> ERROR_SPACE_NOT_AVAILABLE"

    .line 929
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "onTransferCompleted() -> ERROR_PEER_AGENT_REJECTED"

    .line 926
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "onTransferCompleted() -> ERROR_PEER_AGENT_BUSY"

    .line 923
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized putTransaction(JILcom/heytap/accessory/file/a$a;)V
    .locals 2

    monitor-enter p0

    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized putTransactionRequest(JIZ)V
    .locals 3

    monitor-enter p0

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1108
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FileTransfer"

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransferRequest : , connectionId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transactionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", state: "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->getTransactionRequestState(JI)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1110
    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private register()Z
    .locals 7

    .line 665
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransfer;Ljava/lang/String;)Z

    .line 666
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileTransferHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 667
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/heytap/accessory/file/FileTransfer$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/heytap/accessory/file/FileTransfer$a;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 668
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "FileTransfer"

    const-string v1, "FileTransferHandlerThread started"

    .line 669
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    new-instance v1, Lcom/heytap/accessory/file/FileTransfer$b;

    invoke-direct {v1, v0}, Lcom/heytap/accessory/file/FileTransfer$b;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    if-eqz v0, :cond_1

    .line 676
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 677
    new-instance v0, Lcom/heytap/accessory/file/a;

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    iget-object v5, p0, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/file/a;-><init>(Lcom/heytap/accessory/file/FileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/heytap/accessory/file/FileTransfer$c;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    .line 678
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/file/a;

    invoke-static {v0, v1}, Lcom/heytap/accessory/file/FileTransferManager;->a(Ljava/lang/String;Lcom/heytap/accessory/file/a;)V

    .line 679
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance v1, Lcom/heytap/accessory/file/FileTransfer$7;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/file/FileTransfer$7;-><init>(Lcom/heytap/accessory/file/FileTransfer;)V

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private declared-synchronized removeTransaction(JI)V
    .locals 2

    monitor-enter p0

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1073
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1075
    iget-object p3, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeTransactionByTransId(I)V
    .locals 3

    monitor-enter p0

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1086
    invoke-direct {p0, v1, v2, p1}, Lcom/heytap/accessory/file/FileTransfer;->removeTransaction(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1090
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeTransactionRequest(JI)V
    .locals 2

    monitor-enter p0

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1130
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1132
    iget-object p3, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private validateParam(Lcom/heytap/accessory/bean/PeerAgent;)Z
    .locals 2

    if-eqz p1, :cond_4

    .line 366
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "FileTransfer"

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 371
    instance-of p0, p1, Lcom/heytap/accessory/BaseJobAgent;

    if-eqz p0, :cond_1

    .line 372
    check-cast p1, Lcom/heytap/accessory/BaseJobAgent;

    .line 373
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseJobAgent;->getSuccessfulConnections()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "current baseJobAgent has not setup service connection, please connect service first"

    .line 374
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 377
    :cond_1
    instance-of p0, p1, Lcom/heytap/accessory/BaseAgent;

    if-eqz p0, :cond_2

    .line 378
    check-cast p1, Lcom/heytap/accessory/BaseAgent;

    .line 379
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseAgent;->getSuccessfulConnections()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "current baseAgent has not setup service connection, please connect service first"

    .line 380
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "Using invalid instance of FileTransfer(). Please re-register."

    .line 367
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 364
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PeerAgent cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel(JI)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-eqz v0, :cond_1

    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionKey(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance v1, Lcom/heytap/accessory/file/FileTransfer$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer$5;-><init>(Lcom/heytap/accessory/file/FileTransfer;JI)V

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 571
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong connection("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") transaction id("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") used for cancel."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "FileTransfer"

    const-string p1, "Using invalid instance of FileTransfer(). Please re-register."

    .line 596
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelAll()V
    .locals 5

    .line 601
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    const-string v1, "FileTransfer"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-eqz v0, :cond_2

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const-string v4, "AccessoryPreferences"

    if-le v0, v2, :cond_0

    .line 604
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 608
    :goto_0
    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Your service was not found. Please re-register"

    .line 610
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance v2, Lcom/heytap/accessory/file/FileTransfer$6;

    invoke-direct {v2, p0, v0}, Lcom/heytap/accessory/file/FileTransfer$6;-><init>(Lcom/heytap/accessory/file/FileTransfer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string p0, "Using invalid instance of  Please re-register."

    .line 641
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method checkPathPermission(Ljava/lang/String;)Z
    .locals 2

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkPathPermission calling pkg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransfer"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "/data/data"

    .line 982
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    const-string v1, "FileTransfer"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-eqz v0, :cond_2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopFileTransferService() called by : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    .line 649
    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/file/FileTransfer$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    invoke-virtual {v0}, Lcom/heytap/accessory/file/FileTransfer$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 657
    :cond_1
    iput-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 658
    iput-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    return-void

    :cond_2
    const-string p0, "Using invalid instance of FileTransfer(). Please re-register."

    .line 660
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v0, "transId"

    const/4 v1, -0x1

    .line 724
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "agentClass"

    .line 725
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "connectionId"

    .line 726
    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, "contId"

    .line 727
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v3, "fileSize"

    .line 728
    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive incoming FTRequest; transactionId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; connectionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; implClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; fileSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; peerAgentId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileTransfer"

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v3, 0x0

    const-string v7, "AccessoryPreferences"

    if-le v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    const-string v1, "peerId"

    .line 743
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "class now:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string p0, "Target agent was cleared. Re-registering"

    .line 748
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/b/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 750
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 751
    :cond_2
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string p0, "Calling agent was cleared"

    .line 752
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 753
    :cond_3
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Class name not matched with "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 756
    :cond_4
    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransferManager;->b(Ljava/lang/String;)Lcom/heytap/accessory/file/a;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v0, "AgentInfo is NULL! Re-Registering"

    .line 758
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-direct {p0}, Lcom/heytap/accessory/file/FileTransfer;->register()Z

    .line 760
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/file/FileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 3041
    :cond_5
    iget-object p1, v11, Lcom/heytap/accessory/file/a;->a:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-nez p1, :cond_6

    .line 762
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "callback is not registered for "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p1, "filePath"

    .line 764
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p1, "fileName"

    .line 765
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 766
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Informing app of incoming file transfer request on registered callback-tid: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance p2, Lcom/heytap/accessory/file/FileTransfer$8;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/heytap/accessory/file/FileTransfer$8;-><init>(Lcom/heytap/accessory/file/FileTransfer;IJLjava/lang/String;JLjava/lang/String;Lcom/heytap/accessory/file/a;I)V

    invoke-virtual {p1, p2}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method isInternalPath(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "/data/data"

    .line 990
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public receive(JILandroid/net/Uri;)V
    .locals 8

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive receiveFileUri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransfer"

    .line 485
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-eqz v0, :cond_2

    .line 491
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionRequestKey(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    new-instance v0, Lcom/heytap/accessory/file/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/file/a$a;-><init>()V

    .line 493
    iput-wide p1, v0, Lcom/heytap/accessory/file/a$a;->a:J

    .line 494
    iput p3, v0, Lcom/heytap/accessory/file/a$a;->b:I

    .line 495
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    .line 496
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/heytap/accessory/file/FileTransfer;->putTransaction(JILcom/heytap/accessory/file/a$a;)V

    .line 498
    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/heytap/accessory/file/FTInitializer;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 501
    :try_start_0
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p4, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error grantUriPermission!!"

    .line 505
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Accessory Framework doesn\'t support content URI !!"

    .line 508
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance v7, Lcom/heytap/accessory/file/FileTransfer$3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/file/FileTransfer$3;-><init>(Lcom/heytap/accessory/file/FileTransfer;JILandroid/net/Uri;)V

    invoke-virtual {v0, v7}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 527
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "TransactionId: Given["

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] not exist"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/heytap/accessory/file/FileTransfer;->putTransactionRequest(JIZ)V

    .line 529
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong filepath or transaction id used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p4, "Using invalid instance of FileTransfer(). Please re-register."

    .line 532
    invoke-static {v1, p4}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/heytap/accessory/file/FileTransfer;->putTransactionRequest(JIZ)V

    return-void
.end method

.method public receive(JILjava/lang/String;)V
    .locals 16

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransfer"

    .line 389
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, v2, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-eqz v0, :cond_a

    .line 394
    invoke-direct {v2, v6, v3, v4, v5}, Lcom/heytap/accessory/file/FileTransfer;->checkReceiveParams(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p3}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionRequestKey(JI)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    new-instance v0, Lcom/heytap/accessory/file/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/file/a$a;-><init>()V

    .line 396
    iput-wide v3, v0, Lcom/heytap/accessory/file/a$a;->a:J

    .line 397
    iput v5, v0, Lcom/heytap/accessory/file/a$a;->b:I

    .line 398
    iput-object v6, v0, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    .line 399
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/heytap/accessory/file/FileTransfer;->putTransaction(JILcom/heytap/accessory/file/a$a;)V

    .line 403
    iget-object v7, v2, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/heytap/accessory/file/FTInitializer;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/heytap/accessory/file/FileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    const-string v10, "temp file deleted successfully "

    const-string v11, "temp file could not be deleted "

    const-string v12, "Cannot create the content URI !"

    if-nez v6, :cond_0

    :try_start_0
    const-string v0, "File path is wrong!!"

    .line 410
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v13, "File :"

    .line 414
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 416
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Temporary File Created for content URI : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v14, v2, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v14, v8, v13}, Landroidx/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_2

    .line 419
    invoke-static {v1, v12}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-static {v1, v10}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 423
    :cond_1
    invoke-static {v1, v11}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 426
    :cond_2
    iput-object v6, v0, Lcom/heytap/accessory/file/a$a;->c:Ljava/lang/String;

    .line 427
    iget-object v0, v2, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-virtual {v0, v7, v8, v14}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v13, v9

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v13, v9

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v13, v9

    goto :goto_2

    .line 439
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Cannot create the File !"

    .line 440
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 435
    :goto_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v0, "Cannot create the content URI !!"

    .line 436
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 431
    :goto_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 432
    invoke-static {v1, v12}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v8, v9

    :goto_4
    if-nez v8, :cond_4

    if-eqz v13, :cond_4

    .line 443
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-static {v1, v10}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 447
    :cond_3
    invoke-static {v1, v11}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_5
    if-nez v8, :cond_7

    .line 451
    invoke-virtual {v2, v6}, Lcom/heytap/accessory/file/FileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_6

    .line 452
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content URI needs to be implemented for receiving to internal folders. Please refer to sdk documentation for more details"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "Accessory Framework doesn\'t support content URI !!"

    .line 455
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    :cond_7
    :goto_6
    if-eqz v8, :cond_8

    .line 458
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_7

    :cond_8
    move-object v7, v9

    .line 459
    :goto_7
    iget-object v0, v2, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance v8, Lcom/heytap/accessory/file/FileTransfer$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/heytap/accessory/file/FileTransfer$2;-><init>(Lcom/heytap/accessory/file/FileTransfer;JILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 474
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "TransactionId: Given["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] not exist"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-direct {v2, v3, v4, v5, v7}, Lcom/heytap/accessory/file/FileTransfer;->putTransactionRequest(JIZ)V

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong filepath or transaction id used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "Using invalid instance of FileTransfer(). Please re-register."

    .line 479
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {v2, v3, v4, v5, v7}, Lcom/heytap/accessory/file/FileTransfer;->putTransactionRequest(JIZ)V

    return-void
.end method

.method public reject(JI)V
    .locals 2

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file reject, connId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransfer"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mEventListener:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 541
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->checkReceiveParams(Ljava/lang/String;JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->containsTransactionRequestKey(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    new-instance v1, Lcom/heytap/accessory/file/a$a;

    invoke-direct {v1}, Lcom/heytap/accessory/file/a$a;-><init>()V

    .line 544
    iput p3, v1, Lcom/heytap/accessory/file/a$a;->b:I

    .line 545
    iput-object v0, v1, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    .line 546
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer;->removeTransaction(JI)V

    .line 547
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mHandler:Lcom/heytap/accessory/file/FileTransfer$b;

    new-instance v1, Lcom/heytap/accessory/file/FileTransfer$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/heytap/accessory/file/FileTransfer$4;-><init>(Lcom/heytap/accessory/file/FileTransfer;JI)V

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/file/FileTransfer$b;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 561
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong transaction id used in reject()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Using invalid instance of FileTransfer(). Please re-register."

    .line 564
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Landroid/net/Uri;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->validateParam(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/file/FTInitializer;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileTransfer"

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "File path is wrong!!"

    .line 287
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v3, "File :"

    .line 290
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, p2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error grantUriPermission!!"

    .line 294
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "FTCore version doesnot support content uri"

    .line 298
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    new-instance v0, Lcom/heytap/accessory/file/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/file/a$a;-><init>()V

    .line 304
    :try_start_1
    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v5

    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    const-string v8, ""

    iget-object v9, p0, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    move-object v10, p1

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/accessory/file/FileTransfer$c;Lcom/heytap/accessory/bean/PeerAgent;Landroid/net/Uri;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "received tx from FTCore"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iput v1, v0, Lcom/heytap/accessory/file/a$a;->b:I

    .line 311
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 312
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/heytap/accessory/file/FileTransfer;->putTransaction(JILcom/heytap/accessory/file/a$a;)V

    :cond_2
    return v1
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->validateParam(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "peerAgent:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileTransfer"

    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/file/FTInitializer;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "File path is wrong!!"

    .line 329
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v3, "File :"

    .line 332
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, p2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error grantUriPermission!!"

    .line 336
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "FTCore version doesnot support content uri"

    .line 340
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    new-instance v0, Lcom/heytap/accessory/file/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/file/a$a;-><init>()V

    .line 346
    :try_start_1
    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v5

    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v9, p0, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    move-object v8, p3

    move-object v10, p1

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/accessory/file/FileTransfer$c;Lcom/heytap/accessory/bean/PeerAgent;Landroid/net/Uri;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "received tx from FTCore"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iput v1, v0, Lcom/heytap/accessory/file/a$a;->b:I

    .line 353
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 354
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/heytap/accessory/file/FileTransfer;->putTransaction(JILcom/heytap/accessory/file/a$a;)V

    :cond_2
    return v1
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/FileTransfer;->validateParam(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 220
    invoke-direct {p0, p2}, Lcom/heytap/accessory/file/FileTransfer;->checkSource(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/file/FTInitializer;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-direct {p0}, Lcom/heytap/accessory/file/FileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "FileTransfer"

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const-string v5, "Cannot create the content URI !"

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "File path is wrong!!"

    .line 230
    invoke-static {v4, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v6, "File :"

    .line 234
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v7, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v6}, Landroidx/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 238
    invoke-static {v4, v5}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 240
    :cond_1
    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v2, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 248
    :goto_0
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v0, "Cannot create the content URI !! "

    .line 249
    invoke-static {v4, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 244
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 245
    invoke-static {v4, v5}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_4

    .line 252
    invoke-virtual {p0, p2}, Lcom/heytap/accessory/file/FileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 253
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "content uri needs to be implemented for sending from internal folders.Please check file-transfer sdk documentation for more details"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v0, "FTCore version doesnot support content uri"

    .line 256
    invoke-static {v4, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 259
    :cond_4
    :goto_4
    new-instance v0, Lcom/heytap/accessory/file/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/file/a$a;-><init>()V

    if-eqz v2, :cond_5

    .line 260
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v10, v3

    .line 261
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FTCore strURI="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :try_start_1
    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v5

    iget-object v6, p0, Lcom/heytap/accessory/file/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/heytap/accessory/file/FileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v8, p0, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    move-object v9, p1

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/file/FileTransfer$c;Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "received tx from FTCore"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput v1, v0, Lcom/heytap/accessory/file/a$a;->b:I

    .line 270
    iput-object p2, v0, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 271
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/heytap/accessory/file/FileTransfer;->putTransaction(JILcom/heytap/accessory/file/a$a;)V

    :cond_6
    return v1
.end method

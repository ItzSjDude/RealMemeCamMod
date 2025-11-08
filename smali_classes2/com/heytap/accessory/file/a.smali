.class public final Lcom/heytap/accessory/file/a;
.super Ljava/lang/Object;
.source "CallingAgentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/file/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/heytap/accessory/file/FileTransfer$EventListener;

.field b:Lcom/heytap/accessory/file/FileTransfer$c;

.field c:Landroid/os/HandlerThread;

.field d:Landroid/os/Handler;

.field e:Ljava/util/concurrent/ConcurrentHashMap;
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


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/heytap/accessory/file/FileTransfer$c;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heytap/accessory/file/FileTransfer$EventListener;",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            "Lcom/heytap/accessory/file/FileTransfer$c;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/accessory/file/a$a;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/heytap/accessory/file/a;->a:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    .line 34
    iput-object p2, p0, Lcom/heytap/accessory/file/a;->c:Landroid/os/HandlerThread;

    .line 35
    iput-object p3, p0, Lcom/heytap/accessory/file/a;->d:Landroid/os/Handler;

    .line 36
    iput-object p5, p0, Lcom/heytap/accessory/file/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    iput-object p4, p0, Lcom/heytap/accessory/file/a;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    return-void
.end method

.class public Lcom/heytap/accessory/stream/b/a;
.super Ljava/lang/Object;
.source "CallingAgentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/stream/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

.field private b:Lcom/heytap/accessory/stream/StreamTransfer$b;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/accessory/stream/b/a$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/stream/StreamTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/heytap/accessory/stream/StreamTransfer$b;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heytap/accessory/stream/StreamTransfer$EventListener;",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            "Lcom/heytap/accessory/stream/StreamTransfer$b;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/accessory/stream/b/a$a;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/heytap/accessory/stream/b/a;->a:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    .line 35
    iput-object p2, p0, Lcom/heytap/accessory/stream/b/a;->c:Landroid/os/HandlerThread;

    .line 36
    iput-object p3, p0, Lcom/heytap/accessory/stream/b/a;->d:Landroid/os/Handler;

    .line 37
    iput-object p5, p0, Lcom/heytap/accessory/stream/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    iput-object p4, p0, Lcom/heytap/accessory/stream/b/a;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/heytap/accessory/stream/StreamTransfer$EventListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/heytap/accessory/stream/b/a;->a:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    return-object p0
.end method

.method public a(Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/heytap/accessory/stream/b/a;->a:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    return-void
.end method

.method public a(Lcom/heytap/accessory/stream/StreamTransfer$b;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/heytap/accessory/stream/b/a;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    return-void
.end method

.method public b()Lcom/heytap/accessory/stream/StreamTransfer$b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/b/a;->b:Lcom/heytap/accessory/stream/StreamTransfer$b;

    return-object p0
.end method

.method public c()Landroid/os/HandlerThread;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/heytap/accessory/stream/b/a;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public d()Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/heytap/accessory/stream/b/a;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/accessory/stream/b/a$a;",
            ">;>;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/heytap/accessory/stream/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

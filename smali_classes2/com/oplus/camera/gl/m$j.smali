.class Lcom/oplus/camera/gl/m$j;
.super Ljava/lang/Object;
.source "GLProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "GLThreadManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/gl/m$1;)V
    .locals 0

    .line 1836
    invoke-direct {p0}, Lcom/oplus/camera/gl/m$j;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/oplus/camera/gl/m$i;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1843
    :try_start_0
    invoke-static {p1, v0}, Lcom/oplus/camera/gl/m$i;->a(Lcom/oplus/camera/gl/m$i;Z)Z

    .line 1844
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/oplus/camera/gl/m$i;)V
    .locals 0

    .line 1852
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

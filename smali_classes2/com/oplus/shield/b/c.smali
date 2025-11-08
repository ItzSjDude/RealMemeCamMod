.class public Lcom/oplus/shield/b/c;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field private static volatile a:Lcom/oplus/shield/b/c; = null

.field private static c:Z = true

.field private static d:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/oplus/shield/b/c;->b:Z

    return-void
.end method

.method public static b()Lcom/oplus/shield/b/c;
    .locals 2

    .line 63
    sget-object v0, Lcom/oplus/shield/b/c;->a:Lcom/oplus/shield/b/c;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/oplus/shield/b/c;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/oplus/shield/b/c;->a:Lcom/oplus/shield/b/c;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/oplus/shield/b/c;

    invoke-direct {v1}, Lcom/oplus/shield/b/c;-><init>()V

    sput-object v1, Lcom/oplus/shield/b/c;->a:Lcom/oplus/shield/b/c;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/shield/b/c;->a:Lcom/oplus/shield/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 59
    sget-boolean p0, Lcom/oplus/shield/b/c;->c:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/oplus/shield/b/c;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

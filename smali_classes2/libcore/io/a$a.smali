.class public final Llibcore/io/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Llibcore/io/a;

.field private final b:Llibcore/io/a$b;

.field private c:Z


# direct methods
.method private constructor <init>(Llibcore/io/a;Llibcore/io/a$b;)V
    .locals 0

    .line 773
    iput-object p1, p0, Llibcore/io/a$a;->a:Llibcore/io/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Llibcore/io/a$a;->b:Llibcore/io/a$b;

    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/a;Llibcore/io/a$b;Llibcore/io/a$1;)V
    .locals 0

    .line 769
    invoke-direct {p0, p1, p2}, Llibcore/io/a$a;-><init>(Llibcore/io/a;Llibcore/io/a$b;)V

    return-void
.end method

.method static synthetic a(Llibcore/io/a$a;)Llibcore/io/a$b;
    .locals 0

    .line 769
    iget-object p0, p0, Llibcore/io/a$a;->b:Llibcore/io/a$b;

    return-object p0
.end method

.method static synthetic a(Llibcore/io/a$a;Z)Z
    .locals 0

    .line 769
    iput-boolean p1, p0, Llibcore/io/a$a;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Llibcore/io/a$a;->a:Llibcore/io/a;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Llibcore/io/a$a;->b:Llibcore/io/a$b;

    invoke-static {v1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 814
    new-instance v1, Llibcore/io/a$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Llibcore/io/a$a;->b:Llibcore/io/a$b;

    invoke-virtual {v3, p1}, Llibcore/io/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Llibcore/io/a$a$a;-><init>(Llibcore/io/a$a;Ljava/io/OutputStream;Llibcore/io/a$1;)V

    monitor-exit v0

    return-object v1

    .line 812
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 815
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget-boolean v0, p0, Llibcore/io/a$a;->c:Z

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Llibcore/io/a$a;->a:Llibcore/io/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Llibcore/io/a;->a(Llibcore/io/a;Llibcore/io/a$a;Z)V

    .line 838
    iget-object v0, p0, Llibcore/io/a$a;->a:Llibcore/io/a;

    iget-object p0, p0, Llibcore/io/a$a;->b:Llibcore/io/a$b;

    invoke-static {p0}, Llibcore/io/a$b;->c(Llibcore/io/a$b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Llibcore/io/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Llibcore/io/a$a;->a:Llibcore/io/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Llibcore/io/a;->a(Llibcore/io/a;Llibcore/io/a$a;Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Llibcore/io/a$a;->a:Llibcore/io/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Llibcore/io/a;->a(Llibcore/io/a;Llibcore/io/a$a;Z)V

    return-void
.end method

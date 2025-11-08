.class Llibcore/io/a$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Llibcore/io/a$a;


# direct methods
.method private constructor <init>(Llibcore/io/a$a;Ljava/io/OutputStream;)V
    .locals 0

    .line 853
    iput-object p1, p0, Llibcore/io/a$a$a;->a:Llibcore/io/a$a;

    .line 854
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/a$a;Ljava/io/OutputStream;Llibcore/io/a$1;)V
    .locals 0

    .line 852
    invoke-direct {p0, p1, p2}, Llibcore/io/a$a$a;-><init>(Llibcore/io/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 875
    :try_start_0
    iget-object v0, p0, Llibcore/io/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    iget-object p0, p0, Llibcore/io/a$a$a;->a:Llibcore/io/a$a;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Llibcore/io/a$a;->a(Llibcore/io/a$a;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 883
    :try_start_0
    iget-object v0, p0, Llibcore/io/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    :catch_0
    iget-object p0, p0, Llibcore/io/a$a$a;->a:Llibcore/io/a$a;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Llibcore/io/a$a;->a(Llibcore/io/a$a;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 859
    :try_start_0
    iget-object v0, p0, Llibcore/io/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    iget-object p0, p0, Llibcore/io/a$a$a;->a:Llibcore/io/a$a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Llibcore/io/a$a;->a(Llibcore/io/a$a;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 867
    :try_start_0
    iget-object v0, p0, Llibcore/io/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    iget-object p0, p0, Llibcore/io/a$a$a;->a:Llibcore/io/a$a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Llibcore/io/a$a;->a(Llibcore/io/a$a;Z)Z

    :goto_0
    return-void
.end method

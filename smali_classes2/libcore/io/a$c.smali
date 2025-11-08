.class public final Llibcore/io/a$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Llibcore/io/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Llibcore/io/a;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0

    .line 730
    iput-object p1, p0, Llibcore/io/a$c;->a:Llibcore/io/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p2, p0, Llibcore/io/a$c;->b:Ljava/lang/String;

    .line 732
    iput-wide p3, p0, Llibcore/io/a$c;->c:J

    .line 733
    iput-object p5, p0, Llibcore/io/a$c;->d:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/a;Ljava/lang/String;J[Ljava/io/InputStream;Llibcore/io/a$1;)V
    .locals 0

    .line 725
    invoke-direct/range {p0 .. p5}, Llibcore/io/a$c;-><init>(Llibcore/io/a;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 0

    .line 749
    iget-object p0, p0, Llibcore/io/a$c;->d:[Ljava/io/InputStream;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public close()V
    .locals 3

    .line 760
    iget-object p0, p0, Llibcore/io/a$c;->d:[Ljava/io/InputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 761
    invoke-static {v2}, Llibcore/io/a;->a(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

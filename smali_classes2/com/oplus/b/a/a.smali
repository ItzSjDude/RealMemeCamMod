.class public Lcom/oplus/b/a/a;
.super Ljava/lang/Object;
.source "AppFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/b/a/a$b;,
        Lcom/oplus/b/a/a$a;,
        Lcom/oplus/b/a/a$c;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Lcom/oplus/b/a/a$c;

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/b/a/a;->c:Ljava/util/ArrayList;

    const-string v0, "content://com.oplus.customize.coreapp.configmanager.configprovider.AppFeatureProvider"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app_feature"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/b/a/a;->d:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/oplus/b/a/a;->a:Z

    .line 18
    sget-object v0, Lcom/oplus/b/a/a$c;->CACHE_INVAILD:Lcom/oplus/b/a/a$c;

    sput-object v0, Lcom/oplus/b/a/a;->b:Lcom/oplus/b/a/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/oplus/b/a/a;
    .locals 1

    .line 30
    sget-object v0, Lcom/oplus/b/a/a$a;->a:Lcom/oplus/b/a/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 51
    invoke-direct {p0}, Lcom/oplus/b/a/a;->b()Landroid/database/MatrixCursor;

    move-result-object p0

    .line 52
    const-class v0, Lcom/oplus/b/a/a;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/oplus/b/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/b/a/a$b;

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/oplus/b/a/a$b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/oplus/b/a/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/oplus/b/a/a$b;->d()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/oplus/b/a/a$b;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/oplus/b/a/a$b;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v2}, Lcom/oplus/b/a/a$b;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 62
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->close()V

    const/4 p0, 0x0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private b()Landroid/database/MatrixCursor;
    .locals 3

    const-string p0, "_id"

    const-string v0, "featurename"

    const-string v1, "parameters"

    const-string v2, "lists"

    .line 83
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 36
    sget-boolean v0, Lcom/oplus/b/a/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    sget-object v0, Lcom/oplus/b/a/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 38
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/b/a/a;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

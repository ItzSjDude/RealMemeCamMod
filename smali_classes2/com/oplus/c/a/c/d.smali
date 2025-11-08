.class public final Lcom/oplus/c/a/c/d;
.super Ljava/lang/Object;
.source "UriManager.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/oplus/c/a/c/d;

    invoke-direct {v0}, Lcom/oplus/c/a/c/d;-><init>()V

    sput-object v0, Lcom/oplus/c/a/c/d;->a:Lcom/oplus/c/a/c/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "external_primary"

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/c/a/c/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/c/a/c/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "external_primary"

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/c/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 65
    invoke-virtual {p0, p2}, Lcom/oplus/c/a/c/d;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "Uri.withAppendedPath(get\u2026Uri(volumeName), mediaId)"

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "external_primary"

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/c/a/c/d;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/c/a/c/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "external_primary"

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/c/a/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 69
    invoke-direct {p0, p2}, Lcom/oplus/c/a/c/d;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "Uri.withAppendedPath(get\u2026Uri(volumeName), mediaId)"

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "external_primary"

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/c/a/c/d;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 60
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "MediaStore.Video.Media.getContentUri(volumeName)"

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    const-string p0, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 39
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "Uri.parse(\"content://$GA\u2026Y_OPEN/$LOCKED_PICTURES\")"

    invoke-static {p0, v0}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const-string p0, "volumeName"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "MediaStore.Files.getContentUri(volumeName)"

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 52
    invoke-static {p0, p1, v1, v0, v1}, Lcom/oplus/c/a/c/d;->b(Lcom/oplus/c/a/c/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0, p1, v1, v0, v1}, Lcom/oplus/c/a/c/d;->a(Lcom/oplus/c/a/c/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final a(Z)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 44
    invoke-static {p0, v1, v0, v1}, Lcom/oplus/c/a/c/d;->c(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0, v1, v0, v1}, Lcom/oplus/c/a/c/d;->b(Lcom/oplus/c/a/c/d;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const-string p0, "volumeName"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "MediaStore.Images.Media.getContentUri(volumeName)"

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.class public La/a/b/f/u$b;
.super La/a/b/f/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/f/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:La/a/b/f/u$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La/a/b/f/u$b;->a:Ljava/util/regex/Pattern;

    new-instance v0, La/a/b/f/u$b;

    invoke-direct {v0}, La/a/b/f/u$b;-><init>()V

    sput-object v0, La/a/b/f/u$b;->b:La/a/b/f/u$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/f/u$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, La/a/b/f/u$c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, La/a/b/f/u$b;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Synthetic stacktrace didn\'t have enough elements: are you using proguard?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, La/a/b/f/u$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p4, 0x7

    const/16 v0, 0xfa0

    if-ge p0, v0, :cond_1

    if-ne p1, p4, :cond_0

    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge p0, v0, :cond_5

    const/16 v1, 0xa

    invoke-virtual {p3, v1, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/lit16 v2, p0, 0xfa0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p3, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-ne p1, p4, :cond_3

    invoke-static {p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-static {p1, p2, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-lt v2, v1, :cond_4

    add-int/lit8 p0, v2, 0x1

    goto :goto_1

    :cond_4
    move p0, v2

    goto :goto_2

    :cond_5
    return-void
.end method

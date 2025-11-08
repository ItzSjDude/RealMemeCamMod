.class public final Lcom/oplus/c/a/a/a;
.super Ljava/lang/Object;
.source "BitmapCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/oplus/c/a/a/a$a;

.field private static volatile d:Lcom/oplus/c/a/a/a;


# instance fields
.field private b:Lcom/oplus/c/a/a/b/a;

.field private c:Lcom/oplus/c/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/c/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/c/a/a/a$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/oplus/c/a/a/b/a;

    invoke-direct {v0}, Lcom/oplus/c/a/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/oplus/c/a/a/a;->b:Lcom/oplus/c/a/a/b/a;

    .line 47
    new-instance v0, Lcom/oplus/c/a/a/a/d;

    invoke-direct {v0, p1}, Lcom/oplus/c/a/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/c/a/a/a;->c:Lcom/oplus/c/a/a/a/d;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lc/f/b/f;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oplus/c/a/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a(Lcom/oplus/c/a/a/a;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/oplus/c/a/a/a;->d:Lcom/oplus/c/a/a/a;

    return-void
.end method

.method public static final synthetic c()Lcom/oplus/c/a/a/a;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/c/a/a/a;->d:Lcom/oplus/c/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    iget-object v2, p0, Lcom/oplus/c/a/a/a;->b:Lcom/oplus/c/a/a/b/a;

    const-string v3, "BitmapCacheManager"

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/oplus/c/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBitmapFromCache  form lruCache cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/oplus/c/a/a/a;->c:Lcom/oplus/c/a/a/a/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/oplus/c/a/a/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 65
    iget-object p0, p0, Lcom/oplus/c/a/a/a;->b:Lcom/oplus/c/a/a/b/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/oplus/c/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBitmapFromCache  form disk cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/c/a/a/a;->b:Lcom/oplus/c/a/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/c/a/a/b/a;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/oplus/c/a/a/a;->b:Lcom/oplus/c/a/a/b/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/oplus/c/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/oplus/c/a/a/a;->c:Lcom/oplus/c/a/a/a/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/a/a/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "putBitmapToCache cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    invoke-static {p1, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/c/a/a/a;->c:Lcom/oplus/c/a/a/a/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/c/a/a/a/d;->a()V

    :cond_0
    return-void
.end method

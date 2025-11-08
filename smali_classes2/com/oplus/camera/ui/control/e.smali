.class public Lcom/oplus/camera/ui/control/e;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/control/e$d;,
        Lcom/oplus/camera/ui/control/e$c;,
        Lcom/oplus/camera/ui/control/e$a;,
        Lcom/oplus/camera/ui/control/e$b;
    }
.end annotation


# static fields
.field private static b:Lcom/oplus/camera/ui/control/e$d;

.field private static c:Lcom/oplus/camera/ui/control/e$d;

.field private static d:Lcom/oplus/camera/ui/control/e$d;

.field private static e:Ljava/lang/Object;

.field private static f:I

.field private static q:Lcom/oplus/camera/jni/FormatConverter;

.field private static r:Landroid/os/ConditionVariable;


# instance fields
.field public a:Z

.field private g:Landroid/net/Uri;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Lcom/oplus/camera/ui/control/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/control/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/oplus/camera/ui/control/e;->q:Lcom/oplus/camera/jni/FormatConverter;

    .line 105
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/oplus/camera/ui/control/e;->r:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->a:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 94
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 96
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->j:J

    .line 97
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->l:Landroid/graphics/Bitmap;

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->m:Z

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->n:Z

    .line 102
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->o:J

    .line 103
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->a:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 94
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 96
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->j:J

    .line 97
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->l:Landroid/graphics/Bitmap;

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->m:Z

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->n:Z

    .line 102
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->o:J

    .line 103
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    .line 128
    iput-object p1, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;JJ)V
    .locals 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->a:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 94
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 96
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->j:J

    .line 97
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->l:Landroid/graphics/Bitmap;

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->m:Z

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->n:Z

    .line 102
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->o:J

    .line 103
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    .line 140
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    .line 141
    iput-wide p4, p0, Lcom/oplus/camera/ui/control/e;->j:J

    .line 142
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 143
    iput-wide p2, p0, Lcom/oplus/camera/ui/control/e;->o:J

    .line 144
    iput-object p1, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)V
    .locals 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->a:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 94
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 96
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->j:J

    .line 97
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->l:Landroid/graphics/Bitmap;

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->m:Z

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e;->n:Z

    .line 102
    iput-wide v2, p0, Lcom/oplus/camera/ui/control/e;->o:J

    .line 103
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    .line 148
    iput-object p1, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 149
    iput-object p4, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    .line 150
    iput-wide p5, p0, Lcom/oplus/camera/ui/control/e;->j:J

    if-eqz p2, :cond_0

    .line 153
    invoke-static {p2, p3}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    sget p2, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {p0, p2}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    long-to-double p4, p5

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p4, v0

    .line 157
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-long p4, p4

    .line 156
    invoke-static {p0, p1, p4, p5, p3}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;Ljava/lang/String;JI)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thumbnail, mUri: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", thumbnail bitmap is null..."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Thumbnail"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object p2, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Lcom/oplus/camera/ui/control/e;Z)I
    .locals 12

    .line 262
    invoke-static {p2}, Lcom/oplus/camera/Storage;->c(Z)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-static {p2}, Lcom/oplus/camera/Storage;->d(Z)Landroid/net/Uri;

    move-result-object v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastThumbnailFromContentResolver, sdCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Thumbnail"

    invoke-static {v2, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object p2, p1, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/oplus/camera/ui/control/e$d;->k:I

    if-eq v3, p2, :cond_1

    .line 268
    iget-object p2, p1, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    iget p2, p2, Lcom/oplus/camera/ui/control/e$d;->k:I

    .line 269
    iget-object v6, p1, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    iget-object v6, v6, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;

    .line 270
    sput-object v5, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    .line 272
    iget-object v7, p1, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    iget v7, v7, Lcom/oplus/camera/ui/control/e$d;->k:I

    if-nez v7, :cond_0

    .line 273
    invoke-static {p0, v0}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/oplus/camera/ui/control/e$d;

    move-result-object v7

    sput-object v7, Lcom/oplus/camera/ui/control/e;->b:Lcom/oplus/camera/ui/control/e$d;

    goto :goto_0

    .line 274
    :cond_0
    iget-object v7, p1, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    iget v7, v7, Lcom/oplus/camera/ui/control/e$d;->k:I

    if-ne v4, v7, :cond_3

    .line 275
    iget-object v7, p1, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    iget-object v7, v7, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-static {p0, v1, v7}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Lcom/oplus/camera/ui/control/e$d;

    move-result-object v7

    sput-object v7, Lcom/oplus/camera/ui/control/e;->c:Lcom/oplus/camera/ui/control/e$d;

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {p0}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;)Lcom/oplus/camera/ui/control/e$d;

    move-result-object p2

    sput-object p2, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastThumbnailFromContentResolver, getLatestMediaItem: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object p2, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    if-nez p2, :cond_2

    .line 283
    sput-object v5, Lcom/oplus/camera/ui/control/e;->b:Lcom/oplus/camera/ui/control/e$d;

    .line 284
    sput-object v5, Lcom/oplus/camera/ui/control/e;->c:Lcom/oplus/camera/ui/control/e$d;

    :cond_2
    move p2, v3

    move-object v6, v5

    .line 288
    :cond_3
    :goto_0
    sget-object v7, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    const/4 v8, 0x0

    if-nez v7, :cond_4

    sget-object v7, Lcom/oplus/camera/ui/control/e;->b:Lcom/oplus/camera/ui/control/e$d;

    if-nez v7, :cond_4

    sget-object v7, Lcom/oplus/camera/ui/control/e;->c:Lcom/oplus/camera/ui/control/e$d;

    if-nez v7, :cond_4

    .line 289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLastThumbnailFromContentResolver, image: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/ui/control/e;->b:Lcom/oplus/camera/ui/control/e$d;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", video: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/ui/control/e;->c:Lcom/oplus/camera/ui/control/e$d;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_4
    if-ne v3, p2, :cond_5

    .line 297
    invoke-static {}, Lcom/oplus/camera/ui/control/e;->m()I

    move-result p2

    .line 300
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLastThumbnailFromContentResolver, latestFileType: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, p2, :cond_6

    return v8

    :cond_6
    const-string v3, "getLastThumbnailFromContentResolver, getBitmapFromCache: "

    const/16 v7, 0x1d

    if-nez p2, :cond_e

    .line 305
    sget-object p2, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    sget-object p2, Lcom/oplus/camera/ui/control/e;->b:Lcom/oplus/camera/ui/control/e$d;

    .line 306
    :goto_1
    iget-wide v9, p2, Lcom/oplus/camera/ui/control/e$d;->a:J

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 308
    iget-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    iget-object v9, p2, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    iget v10, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v11, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    invoke-static {v1, v9, v10, v11}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastThumbnailFromContentResolver, uri: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", path: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", width: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/oplus/camera/Storage;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 313
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v1

    iget-object v6, p2, Lcom/oplus/camera/ui/control/e$d;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/oplus/camera/util/n;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 314
    :cond_8
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v1

    iget-object v6, p2, Lcom/oplus/camera/ui/control/e$d;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/oplus/camera/util/n;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 315
    :goto_2
    sget v6, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v1, v6}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_9

    .line 318
    invoke-static {p0, v0}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/oplus/camera/ui/control/e$d;

    move-result-object p2

    if-nez p2, :cond_9

    const-string p0, "getLastThumbnailFromContentResolver, sImage null"

    .line 321
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_9
    if-nez v6, :cond_b

    .line 330
    :try_start_0
    iget-boolean v0, p2, Lcom/oplus/camera/ui/control/e$d;->n:Z

    if-eqz v0, :cond_a

    .line 331
    sget-object v0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->THUMBNAIL_URI_CREATING_VARIABLE:Landroid/os/ConditionVariable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v0, v9, v10}, Landroid/os/ConditionVariable;->block(J)Z

    .line 334
    :cond_a
    invoke-static {p2, v8}, Lcom/oplus/camera/ui/control/e;->a(Lcom/oplus/camera/ui/control/e$d;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_b

    .line 339
    invoke-static {p0, p2}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Lcom/oplus/camera/ui/control/e$d;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_3
    if-nez v6, :cond_d

    const-string p1, "getLastThumbnailFromContentResolver, bitmap null"

    .line 347
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p1, p2, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 351
    array-length v0, p1

    if-lez v0, :cond_c

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    const-string v0, "jpg"

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 355
    :try_start_1
    iget-object p1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLastThumbnailFromContentResolver, delete image: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 359
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLastThumbnailFromContentResolver, Failed to delete image: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return v8

    .line 365
    :cond_d
    iget-object v0, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v8, p2, Lcom/oplus/camera/ui/control/e$d;->l:J

    iget v1, p2, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-static {v6, v0, v8, v9, v1}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;Ljava/lang/String;JI)V

    goto/16 :goto_9

    :cond_e
    if-ne v4, p2, :cond_14

    .line 368
    sget-object p2, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    sget-object p2, Lcom/oplus/camera/ui/control/e;->c:Lcom/oplus/camera/ui/control/e$d;

    .line 369
    :goto_5
    iget-wide v9, p2, Lcom/oplus/camera/ui/control/e$d;->a:J

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    if-nez v6, :cond_10

    .line 373
    :try_start_2
    invoke-static {p2, v4}, Lcom/oplus/camera/ui/control/e;->a(Lcom/oplus/camera/ui/control/e$d;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception p0

    goto/16 :goto_8

    :cond_10
    :goto_6
    if-nez v6, :cond_13

    .line 379
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, v1, :cond_13

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailBitmapFromUri, media.mWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "media.mHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v1, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    if-le v1, v3, :cond_11

    .line 386
    iget-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    new-instance v3, Landroid/util/Size;

    iget v6, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v9, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    div-int/2addr v6, v9

    sget v9, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    mul-int/2addr v6, v9

    sget v9, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-direct {v3, v6, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    .line 389
    :cond_11
    iget v1, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    if-ge v1, v3, :cond_12

    .line 390
    iget-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    new-instance v3, Landroid/util/Size;

    sget v6, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    iget v9, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    iget v10, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    div-int/2addr v9, v10

    sget v10, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    mul-int/2addr v9, v10

    invoke-direct {v3, v6, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    .line 393
    :cond_12
    iget-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    new-instance v3, Landroid/util/Size;

    sget v6, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    sget v9, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-direct {v3, v6, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    :goto_7
    sget v1, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    :cond_13
    if-eqz v6, :cond_15

    .line 402
    iget-object v0, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, p2, Lcom/oplus/camera/ui/control/e$d;->l:J

    iget v1, p2, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-static {v6, v0, v9, v10, v1}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;Ljava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    .line 405
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v8

    :cond_14
    move-object p2, v5

    :cond_15
    :goto_9
    if-eqz p2, :cond_16

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnailFromContentResolver, thumbnail uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz p2, :cond_1a

    .line 415
    iget-object v0, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    iget-object v1, p2, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v8, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    .line 416
    invoke-static {v0, v1, v3, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 417
    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 418
    :cond_17
    iget-object p0, p2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    iput-object p0, p1, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    .line 419
    iget-object p0, p2, Lcom/oplus/camera/ui/control/e$d;->e:Ljava/lang/String;

    iput-object p0, p1, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    .line 420
    iget-wide v0, p2, Lcom/oplus/camera/ui/control/e$d;->c:J

    iput-wide v0, p1, Lcom/oplus/camera/ui/control/e;->j:J

    .line 421
    iget-object p0, p2, Lcom/oplus/camera/ui/control/e$d;->h:Ljava/lang/String;

    iput-object p0, p1, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    if-eqz v6, :cond_19

    .line 424
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, p0, :cond_18

    iget-object p0, p1, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    const-string v0, "image/x-adobe-dng"

    .line 425
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 426
    iput-object v6, p1, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 428
    :cond_18
    iget p0, p2, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-static {v6, p0}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 431
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getLastThumbnailFromContentResolver, bitmap is null, mUri: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iput-object v5, p1, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    :goto_a
    return v4

    :cond_1a
    const-string p0, "getLastThumbnailFromContentResolver, THUMBNAIL_DELETED"

    .line 438
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/oplus/camera/ui/control/e$d;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Thumbnail"

    if-nez p1, :cond_0

    const-string p0, "getThumbnailBitmapFromUri, uri: null"

    .line 498
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 503
    :cond_0
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    const/16 v3, 0x1d

    .line 506
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_3

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailBitmapFromUri, media.mWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "media.mHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget v1, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    if-le v1, v3, :cond_1

    .line 513
    new-instance v1, Landroid/util/Size;

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget p2, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    div-int/2addr v3, p2

    sget p2, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    mul-int/2addr v3, p2

    sget p2, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-direct {v1, v3, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 516
    :cond_1
    iget v1, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    iget v3, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    if-ge v1, v3, :cond_2

    .line 517
    new-instance v1, Landroid/util/Size;

    sget v3, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    iget v4, p2, Lcom/oplus/camera/ui/control/e$d;->j:I

    iget p2, p2, Lcom/oplus/camera/ui/control/e$d;->i:I

    div-int/2addr v4, p2

    sget p2, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    mul-int/2addr v4, p2

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 520
    :cond_2
    new-instance p2, Landroid/util/Size;

    sget v1, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    sget v3, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-direct {p2, v1, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 524
    :goto_0
    sget p1, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 527
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Lcom/oplus/camera/ui/control/e$d;)Landroid/graphics/Bitmap;
    .locals 2

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v1, v0, :cond_0

    .line 490
    iget-object v0, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/oplus/camera/ui/control/e$d;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 492
    :cond_0
    iget-object p0, p1, Lcom/oplus/camera/ui/control/e$d;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Thumbnail"

    const-string v1, "rotateImage"

    .line 194
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 197
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 198
    invoke-virtual {v7, p1, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    .line 202
    invoke-static/range {v2 .. v8}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to rotate thumbnail"

    .line 212
    invoke-static {v0, v1, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 997
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 998
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1000
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1001
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1003
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1004
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1005
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    .line 1007
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1008
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v6, -0xbdbdbe

    .line 1009
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, p1

    .line 1010
    invoke-virtual {v1, v7, v6, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1011
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1012
    invoke-virtual {v1, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    .line 1015
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const p3, 0x1affffff

    .line 1016
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p2

    .line 1017
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1018
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1019
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1020
    div-int/lit8 v2, v2, 0x2

    int-to-float p3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {v1, p3, v2, p1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-object v0
.end method

.method private static a(Lcom/oplus/camera/ui/control/e$d;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 463
    iget-object v0, p0, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/util/n;->b(Ljava/lang/String;)Lcom/oplus/camera/util/n$b;

    move-result-object v1

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmapFromCache, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", thumbnailCacheData.modified: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v1}, Lcom/oplus/camera/util/n$b;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", thumbnailCacheData.orientation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v1}, Lcom/oplus/camera/util/n$b;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lastMediaInfo.modified: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oplus/camera/ui/control/e$d;->l:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lastMediaInfo.Orientation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lastMediaInfo.mbIsPending: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ", thumbnailCacheData is null."

    .line 471
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Thumbnail"

    .line 466
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 473
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/ui/control/e$d;->l:J

    .line 476
    invoke-virtual {v1}, Lcom/oplus/camera/util/n$b;->b()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget p0, p0, Lcom/oplus/camera/ui/control/e$d;->b:I

    .line 477
    invoke-virtual {v1}, Lcom/oplus/camera/util/n$b;->a()I

    move-result p1

    if-ne p0, p1, :cond_2

    .line 478
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/util/n$b;->c()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 480
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 481
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 866
    invoke-static {v0, p0, p1}, Lcom/oplus/camera/ui/control/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 534
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 536
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 537
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 539
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    .line 540
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 542
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x4

    div-int/2addr v1, v2

    sget v3, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v2

    sget v3, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    if-lt v1, v3, :cond_0

    .line 544
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 545
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 546
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 549
    :cond_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 551
    sget v0, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 870
    invoke-static {p0, v0, p1}, Lcom/oplus/camera/ui/control/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 875
    sget-object v0, Lcom/oplus/camera/ui/control/e;->r:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 876
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz p0, :cond_0

    .line 880
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    const-wide/16 p0, -0x1

    .line 885
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 896
    :catch_0
    throw p0

    .line 892
    :catch_1
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 p0, 0x0

    .line 898
    :catch_3
    :goto_1
    invoke-static {p0, p2}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/ContentResolver;)Lcom/oplus/camera/ui/control/e$d;
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "android:query-arg-sql-selection"

    const-string v2, "Thumbnail"

    const-string v3, "external"

    .line 690
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 691
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id"

    const-string v6, "orientation"

    const-string v7, "datetaken"

    const-string v8, "_data"

    const-string v9, "title"

    const-string v10, "width"

    const-string v11, "height"

    const-string v12, "mime_type"

    const-string v13, "date_modified"

    const-string v14, "is_pending"

    .line 692
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 697
    invoke-static {v6}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v7

    const-string v8, "duration"

    const-string v9, ") AND (mime_type in (\'image/jpeg\',\'image/heic\',\'image/x-adobe-dng\') or (mime_type = \'video/mp4\' AND "

    const-string v10, "(bucket_id IN ("

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->ac()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->n:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->i:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " > 0))  OR ((_data like \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/Cshot%\' OR _data like \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/Cshot%\') AND _display_name like \'%COVER%\'))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 706
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->n:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " > 0))  OR (_data like \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/Cshot%\' AND _display_name like \'%COVER%\'))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v8, "datetaken DESC,_id DESC"

    const/4 v9, 0x0

    .line 717
    :try_start_0
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "android:query-arg-match-pending"

    .line 718
    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " AND ((datetaken < date_modified * 10000) or (datetaken is NULL) or (date_modified is NULL))"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "android:query-arg-sql-sort-order"

    .line 720
    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, v4, v5, v10, v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v11, "height"

    const-string v12, "width"

    const-string v13, "mime_type"

    const-string v14, "title"

    const-string v15, "datetaken"

    const-string v9, "orientation"

    const-string v6, "_data"

    const/4 v0, 0x0

    if-eqz v8, :cond_3

    .line 723
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 724
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLatestMedia, id: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    new-instance v1, Lcom/oplus/camera/ui/control/e$d;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 729
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 730
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 731
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 732
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 733
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 734
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 735
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 736
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const-string v3, "date_modified"

    .line 737
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const-string v3, "is_pending"

    .line 738
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v6, v3, :cond_1

    const/16 v32, 0x1

    goto :goto_1

    :cond_1
    move/from16 v32, v0

    :goto_1
    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    invoke-direct/range {v17 .. v32}, Lcom/oplus/camera/ui/control/e$d;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 769
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v9, v8

    goto/16 :goto_3

    :cond_3
    if-eqz v8, :cond_4

    .line 741
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_4
    invoke-virtual {v10, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 745
    invoke-virtual {v1, v4, v5, v10, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    .line 747
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 748
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 750
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLatestMedia in else, id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance v7, Lcom/oplus/camera/ui/control/e$d;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 753
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 754
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 755
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 756
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 757
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 758
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 759
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 760
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const-string v3, "date_modified"

    .line 761
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const-string v3, "is_pending"

    .line 762
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v6, v3, :cond_5

    move/from16 v31, v6

    goto :goto_2

    :cond_5
    move/from16 v31, v0

    :goto_2
    move-object/from16 v16, v7

    move-wide/from16 v17, v4

    invoke-direct/range {v16 .. v31}, Lcom/oplus/camera/ui/control/e$d;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    .line 769
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v7

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v1

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    .line 766
    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLatestMediaItem, fail: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v9, :cond_8

    .line 769
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    const/4 v1, 0x0

    return-object v1

    :catchall_3
    move-exception v0

    move-object v8, v9

    :goto_5
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_9
    throw v0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/oplus/camera/ui/control/e$d;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "android:query-arg-sql-selection"

    const-string v3, "Thumbnail"

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id"

    const-string v6, "orientation"

    const-string v7, "datetaken"

    const-string v8, "_data"

    const-string v9, "title"

    const-string v10, "width"

    const-string v11, "height"

    const-string v12, "mime_type"

    const-string v13, "date_modified"

    const-string v14, "is_pending"

    .line 609
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 614
    invoke-static {v6}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v7

    const-string v8, "/Cshot%\') AND _display_name like \'%COVER%\'))"

    const-string v9, "/Cshot%\' OR _data like \'"

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->ac()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(bucket_id IN ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->n:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->i:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") OR ((_data like \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 620
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(bucket_id="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->n:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " OR ((_data like \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v8, "datetaken DESC,_id DESC"

    const/4 v9, 0x0

    .line 630
    :try_start_0
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "android:query-arg-match-pending"

    .line 631
    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " AND ((datetaken < date_modified * 10000) or (datetaken is NULL) or (date_modified is NULL))"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "android:query-arg-sql-sort-order"

    .line 633
    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, v4, v5, v10, v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v11, "date_modified"

    const-string v12, "height"

    const-string v13, "width"

    const-string v14, "mime_type"

    const-string v15, "title"

    const-string v9, "datetaken"

    const-string v6, "orientation"

    const-string v0, "_data"

    move-object/from16 v16, v4

    const/4 v4, 0x0

    if-eqz v8, :cond_3

    .line 636
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v17, v11

    .line 637
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLatestImage, id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v2, Lcom/oplus/camera/ui/control/e$d;

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 642
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 643
    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 644
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 645
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 646
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 647
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 648
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 649
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move-object/from16 v0, v17

    .line 650
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    const-string v0, "is_pending"

    .line 651
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const/16 v33, 0x1

    goto :goto_1

    :cond_1
    move/from16 v33, v4

    :goto_1
    move-object/from16 v18, v2

    move-wide/from16 v19, v10

    invoke-direct/range {v18 .. v33}, Lcom/oplus/camera/ui/control/e$d;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 682
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v9, v8

    goto/16 :goto_3

    :cond_3
    if-eqz v8, :cond_4

    .line 654
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_4
    invoke-virtual {v10, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    move-object/from16 v2, v16

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 658
    invoke-virtual {v0, v2, v5, v10, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    .line 660
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 661
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 663
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLatestImage in else, id: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    new-instance v8, Lcom/oplus/camera/ui/control/e$d;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 666
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 667
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 668
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 669
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 670
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 671
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 672
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 673
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 674
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const-string v1, "is_pending"

    .line 675
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x1

    if-ne v6, v1, :cond_5

    move/from16 v31, v6

    goto :goto_2

    :cond_5
    move/from16 v31, v0

    :goto_2
    move-object/from16 v16, v8

    move-wide/from16 v17, v4

    invoke-direct/range {v16 .. v31}, Lcom/oplus/camera/ui/control/e$d;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_6

    .line 682
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v8

    :catchall_1
    move-exception v0

    move-object v8, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v2

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    .line 679
    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastImageThumbnailNoGroup, fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v9, :cond_8

    .line 682
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    const/4 v1, 0x0

    return-object v1

    :catchall_3
    move-exception v0

    move-object v8, v9

    :goto_5
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 684
    :cond_9
    throw v0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Lcom/oplus/camera/ui/control/e$d;
    .locals 29

    const-string v1, "Thumbnail"

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    goto :goto_0

    .line 782
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const-string v0, "mime_type"

    const-string v8, "datetaken"

    const-string v9, "_data"

    const-string v10, "date_modified"

    const-string v2, "_id"

    .line 785
    filled-new-array {v2, v9, v8, v10, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    .line 789
    invoke-static {v11}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v2

    const-string v5, "bucket_id IN ("

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->ac()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oplus/camera/Storage;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oplus/camera/Storage;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") and "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "duration"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " > 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 793
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oplus/camera/Storage;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v5, v2

    const-string v7, "date_modified DESC,datetaken DESC,_id DESC"

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    .line 802
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_4

    .line 804
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 805
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 806
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastVideoThumbnail, path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v5, Lcom/oplus/camera/ui/control/e$d;

    const/16 v16, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v6, v3

    if-nez v6, :cond_2

    .line 811
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    :cond_2
    move-wide/from16 v17, v3

    move-object/from16 v3, p1

    .line 812
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 813
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x1

    const/16 v25, -0x1

    .line 814
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v28}, Lcom/oplus/camera/ui/control/e$d;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 820
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v12

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v12

    :goto_3
    :try_start_2
    const-string v3, "getLastVideoThumbnail, fail"

    .line 817
    invoke-static {v1, v3, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    return-object v12

    :goto_5
    if-eqz v2, :cond_6

    .line 820
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 822
    :cond_6
    throw v0
.end method

.method public static a(Landroid/graphics/Bitmap;IILandroid/net/Uri;Ljava/lang/String;J)Lcom/oplus/camera/ui/control/e;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "createThumbnail(), use data cereate bitmap is null... "

    .line 835
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-wide v4, p5

    .line 839
    invoke-static/range {v0 .. v5}, Lcom/oplus/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/hardware/HardwareBuffer;IIIIZ)Lcom/oplus/camera/ui/control/e;
    .locals 21

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v0, p3

    move/from16 v1, p4

    .line 935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnail start, width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rotate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v12, "Thumbnail"

    invoke-static {v12, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-ge v2, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    move v6, v4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/16 v0, 0x10e

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_3

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v5, v2

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v7, v3

    goto :goto_3

    :cond_3
    :goto_2
    int-to-float v5, v3

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v7, v2

    :goto_3
    div-float/2addr v7, v6

    float-to-int v7, v7

    move v14, v5

    move v5, v7

    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_5

    if-eq v1, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x3

    goto :goto_5

    :cond_5
    const/4 v0, 0x2

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x0

    :goto_5
    move v8, v0

    .line 974
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v5, v0}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 975
    new-instance v15, Lcom/oplus/camera/jni/FormatConverter;

    invoke-direct {v15}, Lcom/oplus/camera/jni/FormatConverter;-><init>()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v14

    .line 976
    invoke-virtual/range {v0 .. v11}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapInitWithHardwareBuffer(Landroid/hardware/HardwareBuffer;IIIIFIIIII)J

    move-result-wide v0

    const/16 v17, 0x0

    move-object v13, v15

    move v5, v14

    move-object v2, v15

    move-wide v14, v0

    move-object/from16 v16, p0

    move-object/from16 v18, v20

    move/from16 v19, v5

    .line 980
    invoke-virtual/range {v13 .. v19}, Lcom/oplus/camera/jni/FormatConverter;->hardwareBufferToBitmapProcess(JLandroid/hardware/HardwareBuffer;ILandroid/graphics/Bitmap;I)I

    .line 981
    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapUnInit(J)I

    if-eqz p5, :cond_8

    .line 984
    invoke-static/range {v20 .. v20}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    :cond_8
    move-object/from16 v0, v20

    const-string v1, "createThumbnail end"

    .line 987
    invoke-static {v12, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    new-instance v1, Lcom/oplus/camera/ui/control/e;

    invoke-direct {v1, v0}, Lcom/oplus/camera/ui/control/e;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oplus/camera/ui/control/e;
    .locals 9

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbnail, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thumbnail"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    new-instance v0, Lcom/oplus/camera/ui/control/e;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/control/e;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    return-object v0
.end method

.method public static a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oplus/camera/ui/control/e;
    .locals 6

    .line 848
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    if-le p2, v1, :cond_0

    move p2, v1

    .line 849
    :cond_0
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 851
    array-length v1, p0

    invoke-static {p0, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 852
    sget p2, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {p0, p2}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p3

    move v2, p1

    move-object v3, p4

    move-wide v4, p5

    .line 854
    invoke-static/range {v0 .. v5}, Lcom/oplus/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 108
    new-instance v0, Lcom/oplus/camera/jni/FormatConverter;

    invoke-direct {v0}, Lcom/oplus/camera/jni/FormatConverter;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/control/e;->q:Lcom/oplus/camera/jni/FormatConverter;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;JI)V
    .locals 5

    .line 445
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/util/n;->b(Ljava/lang/String;)Lcom/oplus/camera/util/n$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/oplus/camera/util/n$b;->b()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    int-to-long v1, p4

    .line 449
    invoke-virtual {v0}, Lcom/oplus/camera/util/n$b;->b()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    new-instance v0, Lcom/oplus/camera/util/n$b;

    invoke-direct {v0}, Lcom/oplus/camera/util/n$b;-><init>()V

    .line 451
    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/util/n$b;->a(J)V

    .line 452
    invoke-virtual {v0, p4}, Lcom/oplus/camera/util/n$b;->a(I)V

    .line 453
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/util/n$b;->a(Landroid/graphics/Bitmap;)V

    .line 454
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Lcom/oplus/camera/util/n$b;)V

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheThumbnail, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bitmap width: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dateModified: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", orientation: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Thumbnail"

    .line 457
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 564
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-ne v2, v3, :cond_1

    move v9, v5

    goto :goto_0

    .line 566
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move v9, v4

    goto :goto_0

    :cond_2
    move v9, v1

    .line 571
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 572
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 573
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThumbnailBitmapFromUri, width: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", channelType: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Thumbnail"

    invoke-static {v7, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-le v1, p1, :cond_6

    const/4 v2, 0x4

    .line 580
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v9, :cond_3

    .line 584
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_3
    if-ne v4, v9, :cond_4

    const/16 v5, 0x8

    .line 587
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    int-to-float v0, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v1, v0

    .line 591
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v1, v6

    mul-float/2addr v0, v1

    .line 592
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 594
    invoke-static {v10, v11, v8}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 596
    sget-object v0, Lcom/oplus/camera/ui/control/e;->q:Lcom/oplus/camera/jni/FormatConverter;

    if-eqz v0, :cond_5

    mul-int v2, v3, v5

    mul-int v7, v10, v5

    move-object v1, p0

    move v4, v6

    move-object v5, v12

    move v6, v7

    move v7, v10

    move v8, v11

    .line 597
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/jni/FormatConverter;->scaleArea(Landroid/graphics/Bitmap;IIILandroid/graphics/Bitmap;IIII)V

    goto :goto_2

    :cond_5
    const-string v0, "getNoMoireThumbnailBitmap, sFormatConverter: null"

    .line 600
    invoke-static {v7, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v12, p0

    :goto_2
    return-object v12
.end method

.method public static c()V
    .locals 2

    const-string v0, "Thumbnail"

    const-string v1, "closeMediaLimitCondition"

    .line 902
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    sget-object v0, Lcom/oplus/camera/ui/control/e;->r:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method

.method public static d()V
    .locals 2

    const-string v0, "Thumbnail"

    const-string v1, "openMediaLimitCondition"

    .line 908
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sget-object v0, Lcom/oplus/camera/ui/control/e;->r:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private static m()I
    .locals 10

    .line 219
    sget-object v0, Lcom/oplus/camera/ui/control/e;->d:Lcom/oplus/camera/ui/control/e$d;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, v0, Lcom/oplus/camera/ui/control/e$d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "video/mp4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v4, "video/3gp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v4, "image/png"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_3
    const-string v4, "image/x-adobe-dng"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_4
    const-string v4, "image/jpeg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v4, "image/heic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    .line 239
    sput v2, Lcom/oplus/camera/ui/control/e;->f:I

    goto :goto_4

    .line 235
    :cond_1
    sput v3, Lcom/oplus/camera/ui/control/e;->f:I

    goto :goto_4

    .line 229
    :cond_2
    sput v1, Lcom/oplus/camera/ui/control/e;->f:I

    goto :goto_4

    .line 243
    :cond_3
    sget-object v0, Lcom/oplus/camera/ui/control/e;->b:Lcom/oplus/camera/ui/control/e$d;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    iget-wide v6, v0, Lcom/oplus/camera/ui/control/e$d;->c:J

    goto :goto_2

    :cond_4
    move-wide v6, v4

    .line 244
    :goto_2
    sget-object v0, Lcom/oplus/camera/ui/control/e;->c:Lcom/oplus/camera/ui/control/e$d;

    if-eqz v0, :cond_5

    iget-wide v8, v0, Lcom/oplus/camera/ui/control/e$d;->c:J

    goto :goto_3

    :cond_5
    move-wide v8, v4

    :goto_3
    cmp-long v0, v6, v8

    if-ltz v0, :cond_6

    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    .line 247
    sput v1, Lcom/oplus/camera/ui/control/e;->f:I

    goto :goto_4

    :cond_6
    cmp-long v0, v8, v6

    if-lez v0, :cond_7

    cmp-long v0, v8, v4

    if-lez v0, :cond_7

    .line 249
    sput v3, Lcom/oplus/camera/ui/control/e;->f:I

    goto :goto_4

    .line 251
    :cond_7
    sput v2, Lcom/oplus/camera/ui/control/e;->f:I

    .line 255
    :goto_4
    sget v0, Lcom/oplus/camera/ui/control/e;->f:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x58a8e8f5 -> :sswitch_5
        -0x58a7d764 -> :sswitch_4
        -0x54d6098a -> :sswitch_3
        -0x34686c8b -> :sswitch_2
        0x4f6188c8 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/oplus/camera/ui/control/e;->o:J

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/oplus/camera/ui/control/e;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e$d;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/oplus/camera/ui/control/e;->p:Lcom/oplus/camera/ui/control/e$d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1071
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/e;->m:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/oplus/camera/ui/control/e;->o:J

    return-wide v0
.end method

.method public e()Landroid/net/Uri;
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/oplus/camera/ui/control/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g()J
    .locals 2

    .line 1035
    iget-wide v0, p0, Lcom/oplus/camera/ui/control/e;->j:J

    return-wide v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 0

    .line 1051
    iget-object p0, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 0

    .line 1059
    iget-object p0, p0, Lcom/oplus/camera/ui/control/e;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public j()Z
    .locals 0

    .line 1067
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/e;->m:Z

    return p0
.end method

.method public k()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1091
    iput-object v0, p0, Lcom/oplus/camera/ui/control/e;->k:Landroid/graphics/Bitmap;

    .line 1092
    iput-object v0, p0, Lcom/oplus/camera/ui/control/e;->g:Landroid/net/Uri;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 0

    .line 1096
    iget-object p0, p0, Lcom/oplus/camera/ui/control/e;->h:Ljava/lang/String;

    return-object p0
.end method

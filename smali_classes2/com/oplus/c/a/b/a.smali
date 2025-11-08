.class public final Lcom/oplus/c/a/b/a;
.super Ljava/lang/Object;
.source "MediaItem.kt"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/net/Uri;

.field private final h:I

.field private final i:J

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJZZ)V
    .locals 1

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/c/a/b/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/c/a/b/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/c/a/b/a;->g:Landroid/net/Uri;

    iput p4, p0, Lcom/oplus/c/a/b/a;->h:I

    iput-wide p5, p0, Lcom/oplus/c/a/b/a;->i:J

    iput-boolean p7, p0, Lcom/oplus/c/a/b/a;->j:Z

    iput-boolean p8, p0, Lcom/oplus/c/a/b/a;->k:Z

    const-string p1, ""

    .line 33
    iput-object p1, p0, Lcom/oplus/c/a/b/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/c/a/b/a;->a:I

    return p0
.end method

.method public final a(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/oplus/c/a/b/a;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/oplus/c/a/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/oplus/c/a/b/a;->b:I

    return p0
.end method

.method public final b(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/oplus/c/a/b/a;->b:I

    return-void
.end method

.method public final c()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/oplus/c/a/b/a;->c:I

    return p0
.end method

.method public final c(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/oplus/c/a/b/a;->c:I

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/c/a/b/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/c/a/b/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/oplus/c/a/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oplus/c/a/b/a;

    iget-object v0, p0, Lcom/oplus/c/a/b/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/c/a/b/a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/c/a/b/a;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/c/a/b/a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/c/a/b/a;->g:Landroid/net/Uri;

    iget-object v1, p1, Lcom/oplus/c/a/b/a;->g:Landroid/net/Uri;

    invoke-static {v0, v1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/c/a/b/a;->h:I

    iget v1, p1, Lcom/oplus/c/a/b/a;->h:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/oplus/c/a/b/a;->i:J

    iget-wide v2, p1, Lcom/oplus/c/a/b/a;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/c/a/b/a;->j:Z

    iget-boolean v1, p1, Lcom/oplus/c/a/b/a;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/oplus/c/a/b/a;->k:Z

    iget-boolean p1, p1, Lcom/oplus/c/a/b/a;->k:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/c/a/b/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Landroid/net/Uri;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/c/a/b/a;->g:Landroid/net/Uri;

    return-object p0
.end method

.method public final h()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oplus/c/a/b/a;->h:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/c/a/b/a;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/c/a/b/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/c/a/b/a;->g:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/c/a/b/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/c/a/b/a;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/c/a/b/a;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/c/a/b/a;->k:Z

    if-eqz p0, :cond_4

    move p0, v2

    :cond_4
    add-int/2addr v0, p0

    return v0
.end method

.method public final i()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/oplus/c/a/b/a;->i:J

    return-wide v0
.end method

.method public final j()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oplus/c/a/b/a;->j:Z

    return p0
.end method

.method public final k()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/oplus/c/a/b/a;->k:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItem(mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/c/a/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/c/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/c/a/b/a;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/c/a/b/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateModifiedInSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/c/a/b/a;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/c/a/b/a;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/c/a/b/a;->k:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

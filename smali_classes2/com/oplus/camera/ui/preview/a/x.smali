.class public Lcom/oplus/camera/ui/preview/a/x;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "SuperTextTexturePreview.java"


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/oplus/camera/ui/preview/a/aa;

.field private d:Lcom/oplus/camera/gl/s;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:Ljava/lang/Object;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->b:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/x;->k:Z

    .line 23
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/x;->l:I

    .line 24
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/x;->m:I

    .line 25
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/x;->n:I

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/x;->o:I

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->p:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/a/x;->q:J

    .line 32
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/x;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperTextTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/x;->l:I

    .line 55
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/x;->m:I

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 184
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(J)V

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iput-wide p1, p0, Lcom/oplus/camera/ui/preview/a/x;->q:J

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputBlurTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperTextTexturePreview"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/x;->c:Lcom/oplus/camera/ui/preview/a/aa;

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 1

    .line 111
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/x;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 115
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/x;->k:Z

    if-nez p1, :cond_1

    return v0

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/x;->c:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez p0, :cond_2

    return v0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->p()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 14

    .line 132
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 134
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/x;->c:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 138
    :cond_0
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->b:Lcom/oplus/camera/gl/g;

    .line 140
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    if-nez v2, :cond_1

    return v3

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/x;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    iget v4, p0, Lcom/oplus/camera/ui/preview/a/x;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/oplus/camera/ui/preview/a/x;->o:I

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_3

    invoke-static {}, Lcom/oplus/camera/y;->b()Z

    move-result v4

    if-nez v4, :cond_3

    .line 146
    iget v4, p0, Lcom/oplus/camera/ui/preview/a/x;->n:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_2

    .line 147
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/x;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v6

    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->i()I

    move-result v7

    .line 148
    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->h()I

    move-result v8

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/s;->e()I

    move-result v9

    iget v10, p0, Lcom/oplus/camera/ui/preview/a/x;->n:I

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/oplus/camera/ui/preview/a/x;->q:J

    .line 147
    invoke-interface/range {v5 .. v13}, Lcom/oplus/camera/ui/preview/a/y$b;->a(IIIIIZJ)Lcom/oplus/camera/u/a;

    goto :goto_0

    .line 150
    :cond_2
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/x;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->e()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->h()I

    move-result v6

    .line 151
    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->i()I

    move-result v7

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/s;->e()I

    move-result v8

    iget v9, p0, Lcom/oplus/camera/ui/preview/a/x;->n:I

    const/4 v10, 0x1

    iget-wide v11, p0, Lcom/oplus/camera/ui/preview/a/x;->q:J

    .line 150
    invoke-interface/range {v4 .. v12}, Lcom/oplus/camera/ui/preview/a/y$b;->a(IIIIIZJ)Lcom/oplus/camera/u/a;

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Lcom/oplus/camera/y;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/x;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/y$b;->a(Lcom/oplus/camera/u/a;)V

    .line 156
    :cond_4
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide p0

    .line 160
    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/x;->a:Ljava/lang/String;

    return v3

    :catchall_0
    move-exception p0

    .line 156
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/x;->n:I

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    .line 75
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/x;->l:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/x;->m:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    .line 76
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/x;->k:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "SuperTextTexturePreview"

    const-string v1, "recycleTextures"

    .line 90
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/x;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/x;->d:Lcom/oplus/camera/gl/s;

    :cond_1
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/x;->k:Z

    return-void
.end method

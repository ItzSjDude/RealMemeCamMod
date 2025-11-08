.class public Lcom/oplus/camera/o/b;
.super Ljava/lang/Object;
.source "QrCodeResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/o/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/oplus/camera/o/b$a;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/RectF;

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/camera/o/b$a;Ljava/lang/String;Landroid/graphics/RectF;II)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/oplus/camera/o/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/oplus/camera/o/b;->b:Lcom/oplus/camera/o/b$a;

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/o/b;->c:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/oplus/camera/o/b;->d:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/oplus/camera/o/b;->e:I

    .line 19
    iput v0, p0, Lcom/oplus/camera/o/b;->f:I

    .line 20
    iput-boolean v0, p0, Lcom/oplus/camera/o/b;->g:Z

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/o/b;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oplus/camera/o/b;->b:Lcom/oplus/camera/o/b$a;

    .line 25
    iput-object p3, p0, Lcom/oplus/camera/o/b;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/oplus/camera/o/b;->d:Landroid/graphics/RectF;

    .line 27
    iput p5, p0, Lcom/oplus/camera/o/b;->e:I

    .line 28
    iput p6, p0, Lcom/oplus/camera/o/b;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/o/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 68
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/o/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/o/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/oplus/camera/o/b$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/o/b;->b:Lcom/oplus/camera/o/b$a;

    return-object p0
.end method

.method public d()Landroid/graphics/RectF;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/camera/o/b;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public e()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/o/b;->e:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/oplus/camera/o/b;->f:I

    return p0
.end method

.method public declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/o/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrCodeResult{mContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/o/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/o/b;->b:Lcom/oplus/camera/o/b$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mScanStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/o/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

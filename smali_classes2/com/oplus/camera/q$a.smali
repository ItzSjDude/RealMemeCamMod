.class public Lcom/oplus/camera/q$a;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lcom/oplus/camera/q$a;->a:Ljava/lang/String;

    .line 465
    iput-object v0, p0, Lcom/oplus/camera/q$a;->b:Ljava/lang/String;

    .line 466
    iput-object v0, p0, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    .line 467
    iput-object v0, p0, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    .line 469
    iput-object v0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    .line 471
    iput-object v0, p0, Lcom/oplus/camera/q$a;->h:Ljava/lang/String;

    .line 472
    iput-object v0, p0, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    return-void
.end method

.method private a()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 523
    iget-object v1, p0, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v1, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v1, p0, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v1, p0, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v1, p0, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v1, p0, Lcom/oplus/camera/q$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object p0, p0, Lcom/oplus/camera/q$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/q$a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/q$a;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/oplus/camera/q$a;->h:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    iget-object v1, p0, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    .line 538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/q$a;->b:Ljava/lang/String;

    .line 542
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/q$a;->a:Ljava/lang/String;

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

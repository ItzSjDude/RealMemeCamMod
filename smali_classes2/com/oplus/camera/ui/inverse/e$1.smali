.class Lcom/oplus/camera/ui/inverse/e$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InverseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/inverse/e;->setInverseColor(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/inverse/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/inverse/e;IZ)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    iput p2, p0, Lcom/oplus/camera/ui/inverse/e$1;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/inverse/e$1;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private static synthetic a(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    .line 266
    iget-object v0, p3, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->common:Lcom/oplus/camera/ui/inverse/c$a;

    if-ne v0, v1, :cond_0

    iget p3, p3, Lcom/oplus/camera/ui/inverse/c;->a:I

    if-ne p0, p3, :cond_0

    .line 268
    :try_start_0
    check-cast p2, Lcom/oplus/camera/ui/inverse/a;

    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/inverse/a;->setInverseColor(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    invoke-static {}, Lcom/oplus/camera/ui/inverse/e;->access$300()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic b(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    .line 248
    iget-object v0, p3, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->mask:Lcom/oplus/camera/ui/inverse/c$a;

    if-ne v0, v1, :cond_0

    iget p3, p3, Lcom/oplus/camera/ui/inverse/c;->a:I

    if-ne p0, p3, :cond_0

    .line 249
    check-cast p2, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setInverseColor(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic c(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    .line 235
    iget-object v0, p3, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->mask:Lcom/oplus/camera/ui/inverse/c$a;

    if-ne v0, v1, :cond_0

    iget p3, p3, Lcom/oplus/camera/ui/inverse/c;->a:I

    if-ne p0, p3, :cond_0

    .line 236
    check-cast p2, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setInverseColor(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$URMfj-2p-yD7aA6ILT_9JgVt2TE(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/e$1;->b(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$W1sVRVfWBsfr2cFBdKzfsC9KrZM(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/e$1;->c(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$a0P70OsTK0EqwTy3lgJOw8c2yJU(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/e$1;->a(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/e;->access$002(Lcom/oplus/camera/ui/inverse/e;Z)Z

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/e;->access$100(Lcom/oplus/camera/ui/inverse/e;)Lcom/oplus/camera/ui/inverse/f;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/ui/inverse/e$1;->a:I

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/e$1;->b:Z

    new-instance v1, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$1$W1sVRVfWBsfr2cFBdKzfsC9KrZM;

    invoke-direct {v1, v0, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$1$W1sVRVfWBsfr2cFBdKzfsC9KrZM;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/inverse/f;->a(Lcom/oplus/camera/ui/inverse/f$a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/e;->access$002(Lcom/oplus/camera/ui/inverse/e;Z)Z

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/e;->access$100(Lcom/oplus/camera/ui/inverse/e;)Lcom/oplus/camera/ui/inverse/f;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/ui/inverse/e$1;->a:I

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/e$1;->b:Z

    new-instance v1, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$1$URMfj-2p-yD7aA6ILT_9JgVt2TE;

    invoke-direct {v1, v0, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$1$URMfj-2p-yD7aA6ILT_9JgVt2TE;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/inverse/f;->a(Lcom/oplus/camera/ui/inverse/f$a;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/e;->access$200(Lcom/oplus/camera/ui/inverse/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 259
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/ui/inverse/e;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInverseColor, onAnimationStart, mbAnimationRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {v2}, Lcom/oplus/camera/ui/inverse/e;->access$000(Lcom/oplus/camera/ui/inverse/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/inverse/e;->access$000(Lcom/oplus/camera/ui/inverse/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    monitor-exit p1

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/inverse/e;->access$100(Lcom/oplus/camera/ui/inverse/e;)Lcom/oplus/camera/ui/inverse/f;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/inverse/e$1;->a:I

    iget-boolean v2, p0, Lcom/oplus/camera/ui/inverse/e$1;->b:Z

    new-instance v3, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$1$a0P70OsTK0EqwTy3lgJOw8c2yJU;

    invoke-direct {v3, v1, v2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$1$a0P70OsTK0EqwTy3lgJOw8c2yJU;-><init>(IZ)V

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/f;->a(Lcom/oplus/camera/ui/inverse/f$a;)V

    .line 278
    invoke-static {}, Lcom/oplus/camera/ui/inverse/e;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInverseColor, onAnimationStart X, mbAnimationRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e$1;->c:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/inverse/e;->access$000(Lcom/oplus/camera/ui/inverse/e;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

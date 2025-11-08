.class public Lcom/oplus/camera/ui/camerascreenhint/a;
.super Ljava/lang/Object;
.source "CameraScreenHintInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/camerascreenhint/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/camerascreenhint/a$a;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->b:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->c:Z

    .line 11
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->d:I

    const v2, 0x7f0604ff

    .line 12
    iput v2, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->e:I

    const/16 v2, 0xbb8

    .line 13
    iput v2, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->f:I

    .line 14
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->g:I

    .line 15
    iput-boolean v1, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->h:Z

    .line 16
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->i:Z

    .line 17
    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->j:Z

    .line 24
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Lcom/oplus/camera/ui/camerascreenhint/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->a:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Lcom/oplus/camera/ui/camerascreenhint/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->b:Z

    .line 26
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->c(Lcom/oplus/camera/ui/camerascreenhint/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->c:Z

    .line 27
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->d(Lcom/oplus/camera/ui/camerascreenhint/a$a;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->d:I

    .line 28
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->e(Lcom/oplus/camera/ui/camerascreenhint/a$a;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->e:I

    .line 29
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->f(Lcom/oplus/camera/ui/camerascreenhint/a$a;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->f:I

    .line 30
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->g(Lcom/oplus/camera/ui/camerascreenhint/a$a;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->g:I

    .line 31
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->h(Lcom/oplus/camera/ui/camerascreenhint/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->h:Z

    .line 32
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->i(Lcom/oplus/camera/ui/camerascreenhint/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->i:Z

    .line 33
    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->j(Lcom/oplus/camera/ui/camerascreenhint/a$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/camerascreenhint/a$a;Lcom/oplus/camera/ui/camerascreenhint/a$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/a;-><init>(Lcom/oplus/camera/ui/camerascreenhint/a$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->b:Z

    return p0
.end method

.method public c()Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->c:Z

    return p0
.end method

.method public d()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->d:I

    return p0
.end method

.method public e()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->e:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->f:I

    return p0
.end method

.method public g()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->g:I

    return p0
.end method

.method public h()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->h:Z

    return p0
.end method

.method public i()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->i:Z

    return p0
.end method

.method public j()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oplus/camera/ui/camerascreenhint/a;->j:Z

    return p0
.end method

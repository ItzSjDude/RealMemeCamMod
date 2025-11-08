.class public Lcom/oplus/statistics/b;
.super Ljava/lang/Object;
.source "OTrackConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/oplus/statistics/b;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/oplus/statistics/b;

    invoke-direct {v0}, Lcom/oplus/statistics/b;-><init>()V

    sput-object v0, Lcom/oplus/statistics/b;->a:Lcom/oplus/statistics/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/oplus/statistics/b;->d:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oplus/statistics/b;->e:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/oplus/statistics/b;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/oplus/statistics/b$a;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/oplus/statistics/b;->d:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oplus/statistics/b;->e:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/oplus/statistics/b;->f:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/oplus/statistics/b$a;->a(Lcom/oplus/statistics/b$a;)I

    move-result v0

    iput v0, p0, Lcom/oplus/statistics/b;->b:I

    .line 31
    invoke-static {p1}, Lcom/oplus/statistics/b$a;->b(Lcom/oplus/statistics/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/statistics/b;->d:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/oplus/statistics/b$a;->c(Lcom/oplus/statistics/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/statistics/b;->e:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/oplus/statistics/b$a;->d(Lcom/oplus/statistics/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/statistics/b;->f:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/oplus/statistics/b$a;->e(Lcom/oplus/statistics/b$a;)I

    move-result p1

    iput p1, p0, Lcom/oplus/statistics/b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/statistics/b$a;Lcom/oplus/statistics/b$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/oplus/statistics/b;-><init>(Lcom/oplus/statistics/b$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/oplus/statistics/b;->b:I

    return p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/oplus/statistics/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/statistics/b;->c:I

    return p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oplus/statistics/b;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oplus/statistics/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oplus/statistics/b;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/statistics/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/statistics/b;->f:Ljava/lang/String;

    return-object p0
.end method

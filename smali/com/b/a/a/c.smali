.class public Lcom/b/a/a/c;
.super Ljava/lang/Object;
.source "AnimGroup.java"

# interfaces
.implements Lcom/b/a/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/c$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "c"


# instance fields
.field final b:Lcom/b/a/a/e;

.field final c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/e;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    .line 23
    iput p2, p0, Lcom/b/a/a/c;->c:I

    .line 24
    invoke-virtual {p1, p0}, Lcom/b/a/a/e;->a(Lcom/b/a/a/j;)Lcom/b/a/a/e;

    return-void
.end method

.method private static synthetic a(Lcom/b/a/a/c$a;Lcom/b/a/a/c$a;)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/b/a/a/c$a;->b:I

    iget v1, p1, Lcom/b/a/a/c$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 66
    :cond_0
    iget p0, p0, Lcom/b/a/a/c$a;->b:I

    iget p1, p1, Lcom/b/a/a/c$a;->b:I

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Lcom/b/a/a/c$a;)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/b/a/a/c$a;->e:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/j;

    invoke-interface {v0}, Lcom/b/a/a/j;->d()V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/b/a/a/c$a;->e:Z

    :cond_0
    return-void
.end method

.method private static synthetic b(Lcom/b/a/a/c$a;Lcom/b/a/a/c$a;)I
    .locals 2

    .line 49
    iget v0, p1, Lcom/b/a/a/c$a;->b:I

    iget v1, p0, Lcom/b/a/a/c$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 51
    :cond_0
    iget p1, p1, Lcom/b/a/a/c$a;->b:I

    iget p0, p0, Lcom/b/a/a/c$a;->b:I

    if-le p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic b(Lcom/b/a/a/c$a;)V
    .locals 4

    .line 113
    iget-boolean v0, p1, Lcom/b/a/a/c$a;->e:Z

    if-nez v0, :cond_0

    .line 114
    iget v0, p1, Lcom/b/a/a/c$a;->b:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-wide v2, p0, Lcom/b/a/a/e;->d:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    .line 115
    iput-boolean p0, p1, Lcom/b/a/a/c$a;->e:Z

    .line 116
    iget-object p0, p1, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/j;

    invoke-interface {p0}, Lcom/b/a/a/j;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$AH2j3kY-YL4KLMFw0n9b64JAsZI(Lcom/b/a/a/c;Lcom/b/a/a/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c$a;)V

    return-void
.end method

.method public static synthetic lambda$TQzsjdUJfMAQozbmpbg-ZXIVHWU(Lcom/b/a/a/c$a;Lcom/b/a/a/c$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c$a;Lcom/b/a/a/c$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XBWLyOfRu-PObRwpEZ4GUB4XRDA(Lcom/b/a/a/c$a;)V
    .locals 0

    invoke-static {p0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c$a;)V

    return-void
.end method

.method public static synthetic lambda$xB0QgZOcdVD4emFy7a-GHGP4BpA(Lcom/b/a/a/c$a;Lcom/b/a/a/c$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c$a;Lcom/b/a/a/c$a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()J
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-boolean v0, v0, Lcom/b/a/a/e;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    sget-object v3, Lcom/b/a/a/-$$Lambda$c$TQzsjdUJfMAQozbmpbg-ZXIVHWU;->INSTANCE:Lcom/b/a/a/-$$Lambda$c$TQzsjdUJfMAQozbmpbg-ZXIVHWU;

    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 57
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/c$a;

    .line 58
    iget-object v4, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-wide v4, v4, Lcom/b/a/a/e;->e:J

    iget v6, v3, Lcom/b/a/a/c$a;->b:I

    iget v7, v3, Lcom/b/a/a/c$a;->c:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 59
    iget v3, v3, Lcom/b/a/a/c$a;->c:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    sget-object v3, Lcom/b/a/a/-$$Lambda$c$xB0QgZOcdVD4emFy7a-GHGP4BpA;->INSTANCE:Lcom/b/a/a/-$$Lambda$c$xB0QgZOcdVD4emFy7a-GHGP4BpA;

    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 72
    iget-object p0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/c$a;

    .line 73
    iget v3, v0, Lcom/b/a/a/c$a;->b:I

    iget v0, v0, Lcom/b/a/a/c$a;->c:I

    add-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    return-wide v1
.end method

.method public a(Lcom/b/a/a/j;)Lcom/b/a/a/c;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-wide v0, v0, Lcom/b/a/a/e;->e:J

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/j;IIZ)Lcom/b/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/b/a/a/j;IIZ)Lcom/b/a/a/c;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-static {v0}, Lcom/b/a/n;->a(Z)V

    .line 37
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    new-instance v1, Lcom/b/a/a/c$a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/b/a/a/c$a;-><init>(Lcom/b/a/a/j;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(F)V
    .locals 10

    .line 124
    invoke-virtual {p0}, Lcom/b/a/a/c;->c()V

    .line 125
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/c$a;

    .line 126
    iget-boolean v2, v1, Lcom/b/a/a/c$a;->e:Z

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-boolean v2, v2, Lcom/b/a/a/e;->b:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 131
    iget-boolean v2, v1, Lcom/b/a/a/c$a;->d:Z

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-wide v6, v2, Lcom/b/a/a/e;->e:J

    iget v2, v1, Lcom/b/a/a/c$a;->b:I

    iget v8, v1, Lcom/b/a/a/c$a;->c:I

    add-int/2addr v2, v8

    int-to-long v8, v2

    sub-long/2addr v6, v8

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/e;

    iget-wide v8, v2, Lcom/b/a/a/e;->d:J

    sub-long/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 133
    iget-boolean v2, v1, Lcom/b/a/a/c$a;->d:Z

    if-eqz v2, :cond_2

    .line 134
    iget v2, v1, Lcom/b/a/a/c$a;->c:I

    int-to-long v6, v2

    rem-long/2addr v4, v6

    goto :goto_2

    .line 136
    :cond_2
    iget v2, v1, Lcom/b/a/a/c$a;->c:I

    int-to-long v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 137
    iget v2, v1, Lcom/b/a/a/c$a;->c:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    :goto_2
    long-to-float v2, v4

    .line 139
    iget v4, v1, Lcom/b/a/a/c$a;->c:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float v2, v3, v2

    goto :goto_3

    :cond_3
    move v2, p1

    .line 154
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ratio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AnimGroup"

    invoke-static {v5, v4}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v4, v1, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/j;

    invoke-interface {v4, v2}, Lcom/b/a/a/j;->a(F)V

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 157
    iget-object v2, v1, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/j;

    invoke-interface {v2}, Lcom/b/a/a/j;->d()V

    const/4 v2, 0x0

    .line 158
    iput-boolean v2, v1, Lcom/b/a/a/c$a;->e:Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/b/a/a/c$a;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/c$a;

    .line 107
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/b/a/a/c;->c()V

    return-void
.end method

.method public b(Lcom/b/a/a/j;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v0

    :cond_0
    return v1

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/c$a;

    .line 92
    iget-object v4, v3, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/j;

    if-ne v4, p1, :cond_2

    .line 93
    iget-object p0, p0, Lcom/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v0

    :cond_3
    return v1
.end method

.method c()V
    .locals 1

    .line 112
    new-instance v0, Lcom/b/a/a/-$$Lambda$c$AH2j3kY-YL4KLMFw0n9b64JAsZI;

    invoke-direct {v0, p0}, Lcom/b/a/a/-$$Lambda$c$AH2j3kY-YL4KLMFw0n9b64JAsZI;-><init>(Lcom/b/a/a/c;)V

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 169
    sget-object v0, Lcom/b/a/a/-$$Lambda$c$XBWLyOfRu-PObRwpEZ4GUB4XRDA;->INSTANCE:Lcom/b/a/a/-$$Lambda$c$XBWLyOfRu-PObRwpEZ4GUB4XRDA;

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

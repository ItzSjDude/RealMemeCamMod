.class public Lcom/oplus/camera/professional/z;
.super Ljava/lang/Object;
.source "SubModeBarData.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/oplus/camera/professional/z;->b:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/oplus/camera/professional/z;->f:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/z;->g:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/z;->h:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/professional/z;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/oplus/camera/professional/z;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oplus/camera/professional/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/z;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oplus/camera/professional/z;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/z;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lcom/oplus/camera/professional/z;
    .locals 0

    .line 45
    iput p1, p0, Lcom/oplus/camera/professional/z;->f:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/professional/z;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/professional/z;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public c(I)Lcom/oplus/camera/professional/z;
    .locals 0

    .line 50
    iput p1, p0, Lcom/oplus/camera/professional/z;->b:I

    return-object p0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/professional/z;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public d(I)Lcom/oplus/camera/professional/z;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/professional/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/z;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/oplus/camera/professional/z;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lcom/oplus/camera/professional/z;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/professional/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 72
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/oplus/camera/professional/z;->g:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/professional/z;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/oplus/camera/professional/z;->f:I

    return p0
.end method

.method public f(I)Lcom/oplus/camera/professional/z;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/professional/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 82
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/oplus/camera/professional/z;->h:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

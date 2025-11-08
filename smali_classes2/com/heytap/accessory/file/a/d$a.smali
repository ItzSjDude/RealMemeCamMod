.class public Lcom/heytap/accessory/file/a/d$a;
.super Ljava/lang/Object;
.source "FileDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/file/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/heytap/accessory/file/a/d$a;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/heytap/accessory/file/a/d$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/heytap/accessory/file/a/d$a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/file/a/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/heytap/accessory/file/a/d$a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/file/a/d$a;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/heytap/accessory/file/a/d$a;
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/heytap/accessory/file/a/d$a;->a:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/heytap/accessory/file/a/d$a;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/heytap/accessory/file/a/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/heytap/accessory/file/a/d;
    .locals 2

    .line 90
    new-instance v0, Lcom/heytap/accessory/file/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/file/a/d;-><init>(Lcom/heytap/accessory/file/a/d$a;B)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/heytap/accessory/file/a/d$a;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/heytap/accessory/file/a/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

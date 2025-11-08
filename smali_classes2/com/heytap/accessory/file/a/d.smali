.class public Lcom/heytap/accessory/file/a/d;
.super Ljava/lang/Object;
.source "FileDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/file/a/d$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/file/a/d$a;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/heytap/accessory/file/a/d$a;->a(Lcom/heytap/accessory/file/a/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/accessory/file/a/d;->a:J

    .line 26
    invoke-static {p1}, Lcom/heytap/accessory/file/a/d$a;->b(Lcom/heytap/accessory/file/a/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/file/a/d;->b:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/heytap/accessory/file/a/d$a;->c(Lcom/heytap/accessory/file/a/d$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/file/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/file/a/d$a;B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/heytap/accessory/file/a/d;-><init>(Lcom/heytap/accessory/file/a/d$a;)V

    return-void
.end method

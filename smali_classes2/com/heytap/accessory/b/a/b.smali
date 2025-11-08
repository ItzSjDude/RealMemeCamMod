.class public Lcom/heytap/accessory/b/a/b;
.super Ljava/lang/Exception;
.source "BufferException.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    iput p1, p0, Lcom/heytap/accessory/b/a/b;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput p1, p0, Lcom/heytap/accessory/b/a/b;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/heytap/accessory/b/a/b;->a:I

    return p0
.end method

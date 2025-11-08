.class public Lcom/oplus/c/a/a/a/c$a;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/c/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/oplus/c/a/a/a/c$a;->a:[B

    return-void
.end method

.method synthetic constructor <init>(ILcom/oplus/c/a/a/a/c$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/oplus/c/a/a/a/c$a;-><init>(I)V

    return-void
.end method

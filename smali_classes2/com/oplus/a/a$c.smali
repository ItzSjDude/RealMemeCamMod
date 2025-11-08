.class Lcom/oplus/a/a$c;
.super Ljava/lang/Object;
.source "OplusBlurProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:[B

.field final synthetic c:Lcom/oplus/a/a;


# direct methods
.method public constructor <init>(Lcom/oplus/a/a;I[B)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/oplus/a/a$c;->c:Lcom/oplus/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 492
    iput p1, p0, Lcom/oplus/a/a$c;->a:I

    const/4 p1, 0x0

    .line 493
    iput-object p1, p0, Lcom/oplus/a/a$c;->b:[B

    .line 496
    iput p2, p0, Lcom/oplus/a/a$c;->a:I

    .line 497
    iput-object p3, p0, Lcom/oplus/a/a$c;->b:[B

    return-void
.end method

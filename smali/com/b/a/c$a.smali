.class Lcom/b/a/c$a;
.super Ljava/lang/Object;
.source "ModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/b/a/a/d;

.field b:I

.field c:I

.field d:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/d;II)V
    .locals 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/b/a/c$a;->d:Z

    .line 427
    iput-object p1, p0, Lcom/b/a/c$a;->a:Lcom/b/a/a/d;

    .line 428
    iput p2, p0, Lcom/b/a/c$a;->b:I

    .line 429
    iput p3, p0, Lcom/b/a/c$a;->c:I

    return-void
.end method

.class Lcom/b/a/a/c$a;
.super Ljava/lang/Object;
.source "AnimGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/b/a/a/j;

.field b:I

.field c:I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/j;IIZ)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/b/a/a/c$a;->e:Z

    .line 186
    iput-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/j;

    .line 187
    iput p2, p0, Lcom/b/a/a/c$a;->b:I

    .line 188
    iput p3, p0, Lcom/b/a/a/c$a;->c:I

    .line 189
    iput-boolean p4, p0, Lcom/b/a/a/c$a;->d:Z

    return-void
.end method

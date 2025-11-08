.class public Lcom/oplus/camera/w$b;
.super Ljava/lang/Object;
.source "OplusPlaySound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/oplus/camera/w$b;->a:I

    .line 290
    iput v0, p0, Lcom/oplus/camera/w$b;->b:I

    .line 291
    iput-boolean v0, p0, Lcom/oplus/camera/w$b;->c:Z

    .line 294
    iput p1, p0, Lcom/oplus/camera/w$b;->a:I

    .line 295
    iput p2, p0, Lcom/oplus/camera/w$b;->b:I

    return-void
.end method

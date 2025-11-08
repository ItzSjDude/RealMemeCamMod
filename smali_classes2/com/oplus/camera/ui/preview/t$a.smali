.class Lcom/oplus/camera/ui/preview/t$a;
.super Ljava/lang/Object;
.source "NormalAISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/t;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/preview/t;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/t$a;->a:Lcom/oplus/camera/ui/preview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 596
    iput p1, p0, Lcom/oplus/camera/ui/preview/t$a;->b:I

    .line 597
    iput p1, p0, Lcom/oplus/camera/ui/preview/t$a;->c:I

    const/4 p1, 0x0

    .line 599
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/t$a;->d:Z

    .line 600
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/t$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/preview/t;Lcom/oplus/camera/ui/preview/t$1;)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/t$a;-><init>(Lcom/oplus/camera/ui/preview/t;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 619
    iget p0, p0, Lcom/oplus/camera/ui/preview/t$a;->b:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 603
    iput p1, p0, Lcom/oplus/camera/ui/preview/t$a;->b:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/t$a;->d:Z

    return-void
.end method

.method public b()I
    .locals 0

    .line 623
    iget p0, p0, Lcom/oplus/camera/ui/preview/t$a;->c:I

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 607
    iput p1, p0, Lcom/oplus/camera/ui/preview/t$a;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 615
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/t$a;->e:Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 627
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/t$a;->d:Z

    return p0
.end method

.method public d()Z
    .locals 0

    .line 631
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/t$a;->e:Z

    return p0
.end method

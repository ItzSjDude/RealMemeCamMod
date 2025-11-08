.class public Lcom/airbnb/lottie/c/b/j;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/airbnb/lottie/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/airbnb/lottie/c/a/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/c/a/b;",
            "Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/c/b/j;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/airbnb/lottie/c/b/j;->b:Lcom/airbnb/lottie/c/a/m;

    .line 24
    iput-object p3, p0, Lcom/airbnb/lottie/c/b/j;->c:Lcom/airbnb/lottie/c/a/m;

    .line 25
    iput-object p4, p0, Lcom/airbnb/lottie/c/b/j;->d:Lcom/airbnb/lottie/c/a/b;

    .line 26
    iput-boolean p5, p0, Lcom/airbnb/lottie/c/b/j;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;)Lcom/airbnb/lottie/a/a/c;
    .locals 1

    .line 50
    new-instance v0, Lcom/airbnb/lottie/a/a/o;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/a/a/o;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/c/b/j;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/airbnb/lottie/c/b/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/airbnb/lottie/c/a/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/airbnb/lottie/c/b/j;->d:Lcom/airbnb/lottie/c/a/b;

    return-object p0
.end method

.method public c()Lcom/airbnb/lottie/c/a/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/airbnb/lottie/c/b/j;->c:Lcom/airbnb/lottie/c/a/m;

    return-object p0
.end method

.method public d()Lcom/airbnb/lottie/c/a/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/airbnb/lottie/c/b/j;->b:Lcom/airbnb/lottie/c/a/m;

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/airbnb/lottie/c/b/j;->e:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/c/b/j;->b:Lcom/airbnb/lottie/c/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/c/b/j;->c:Lcom/airbnb/lottie/c/a/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

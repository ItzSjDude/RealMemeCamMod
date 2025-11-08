.class Lcom/airbnb/lottie/c/c/a$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/c/c/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/c/c/a;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/c/c/a;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a$1;->a:Lcom/airbnb/lottie/c/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 172
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a$1;->a:Lcom/airbnb/lottie/c/c/a;

    invoke-static {p0}, Lcom/airbnb/lottie/c/c/a;->c(Lcom/airbnb/lottie/c/c/a;)Lcom/airbnb/lottie/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/c;->i()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/c/c/a;Z)V

    return-void
.end method

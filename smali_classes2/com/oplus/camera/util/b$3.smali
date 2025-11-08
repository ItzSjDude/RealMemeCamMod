.class Lcom/oplus/camera/util/b$3;
.super Ljava/lang/Object;
.source "AnimUtil.java"

# interfaces
.implements Lcom/airbnb/lottie/g/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/b;->a(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;ILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/g/e<",
        "Landroid/graphics/ColorFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/oplus/camera/util/b$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g/b;)Landroid/graphics/ColorFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/b<",
            "Landroid/graphics/ColorFilter;",
            ">;)",
            "Landroid/graphics/ColorFilter;"
        }
    .end annotation

    .line 226
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/oplus/camera/util/b$3;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method public synthetic getValue(Lcom/airbnb/lottie/g/b;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/oplus/camera/util/b$3;->a(Lcom/airbnb/lottie/g/b;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

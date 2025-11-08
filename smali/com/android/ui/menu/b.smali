.class public Lcom/android/ui/menu/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "MultiplePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ui/menu/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/android/ui/menu/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/android/ui/menu/b$a;
    .locals 2

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00eb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/android/ui/menu/b$a;

    invoke-direct {p2, p0, p1}, Lcom/android/ui/menu/b$a;-><init>(Lcom/android/ui/menu/b;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/android/ui/menu/b$a;)V
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->d(Lcom/android/ui/menu/b$a;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 67
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public a(Lcom/android/ui/menu/b$a;I)V
    .locals 1

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder, position:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiplePageAdapter"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 40
    invoke-static {}, Lcom/oplus/camera/util/Util;->ap()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f0026

    .line 41
    invoke-static {p1, p0}, Lcom/android/ui/menu/b$a;->a(Lcom/android/ui/menu/b$a;I)I

    goto :goto_0

    :cond_0
    const p0, 0x7f0f0027

    .line 43
    invoke-static {p1, p0}, Lcom/android/ui/menu/b$a;->a(Lcom/android/ui/menu/b$a;I)I

    .line 46
    :goto_0
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->a(Lcom/android/ui/menu/b$a;)Landroid/widget/TextView;

    move-result-object p0

    const p2, 0x7f1001ce

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->b(Lcom/android/ui/menu/b$a;)Landroid/widget/TextView;

    move-result-object p0

    const p2, 0x7f1005ba

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 49
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->ap()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0f002a

    .line 50
    invoke-static {p1, p0}, Lcom/android/ui/menu/b$a;->a(Lcom/android/ui/menu/b$a;I)I

    goto :goto_1

    :cond_2
    const p0, 0x7f0f002b

    .line 52
    invoke-static {p1, p0}, Lcom/android/ui/menu/b$a;->a(Lcom/android/ui/menu/b$a;I)I

    .line 55
    :goto_1
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->a(Lcom/android/ui/menu/b$a;)Landroid/widget/TextView;

    move-result-object p0

    const p2, 0x7f100440

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->b(Lcom/android/ui/menu/b$a;)Landroid/widget/TextView;

    move-result-object p0

    const p2, 0x7f10043d

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :goto_2
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->d(Lcom/android/ui/menu/b$a;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-static {p1}, Lcom/android/ui/menu/b$a;->c(Lcom/android/ui/menu/b$a;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 60
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->d(Lcom/android/ui/menu/b$a;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setForceDarkAllowed(Z)V

    return-void
.end method

.method public b(Lcom/android/ui/menu/b$a;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 74
    invoke-static {p1}, Lcom/android/ui/menu/b$a;->d(Lcom/android/ui/menu/b$a;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 79
    sget p0, Lcom/android/ui/menu/b;->a:I

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/android/ui/menu/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/android/ui/menu/b;->a(Lcom/android/ui/menu/b$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/ui/menu/b;->a(Landroid/view/ViewGroup;I)Lcom/android/ui/menu/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/android/ui/menu/b$a;

    invoke-virtual {p0, p1}, Lcom/android/ui/menu/b;->b(Lcom/android/ui/menu/b$a;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/android/ui/menu/b$a;

    invoke-virtual {p0, p1}, Lcom/android/ui/menu/b;->a(Lcom/android/ui/menu/b$a;)V

    return-void
.end method

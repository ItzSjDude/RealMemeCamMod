.class public Lcom/android/ui/menu/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "MultiplePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ui/menu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ui/menu/b;

.field private b:Lcom/airbnb/lottie/LottieAnimationView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/android/ui/menu/b;Landroid/view/View;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/ui/menu/b$a;->a:Lcom/android/ui/menu/b;

    .line 89
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/android/ui/menu/b$a;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 84
    iput-object p1, p0, Lcom/android/ui/menu/b$a;->c:Landroid/widget/TextView;

    .line 85
    iput-object p1, p0, Lcom/android/ui/menu/b$a;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/android/ui/menu/b$a;->e:I

    const p1, 0x7f090054

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/ui/menu/b$a;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f0901c4

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/ui/menu/b$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0901c3

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/ui/menu/b$a;->d:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/android/ui/menu/b$a;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/ui/menu/b$a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/android/ui/menu/b$a;)Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/ui/menu/b$a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/android/ui/menu/b$a;)Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/ui/menu/b$a;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/android/ui/menu/b$a;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/ui/menu/b$a;->e:I

    return p0
.end method

.method static synthetic d(Lcom/android/ui/menu/b$a;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/ui/menu/b$a;->b:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

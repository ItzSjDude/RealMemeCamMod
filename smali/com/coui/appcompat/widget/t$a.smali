.class Lcom/coui/appcompat/widget/t$a;
.super Ljava/lang/Object;
.source "COUIViewCompat.java"

# interfaces
.implements Lcom/coui/appcompat/widget/t$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public c(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

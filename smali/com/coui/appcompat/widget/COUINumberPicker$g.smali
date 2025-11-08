.class Lcom/coui/appcompat/widget/COUINumberPicker$g;
.super Ljava/lang/Object;
.source "COUINumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0

    .line 1876
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1888
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->b:I

    const/4 p1, 0x2

    .line 1889
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x0

    .line 1898
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->e:I

    .line 1899
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->d:I

    .line 1900
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1901
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1903
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1905
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1906
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1907
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1918
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a()V

    const/4 v0, 0x1

    .line 1919
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->e:I

    .line 1920
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->d:I

    .line 1921
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1930
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a()V

    const/4 v0, 0x2

    .line 1931
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->e:I

    .line 1932
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->d:I

    .line 1933
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 1938
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1954
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->d:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 1965
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1966
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1967
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 1966
    invoke-virtual {v0, p0, v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1969
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1970
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1956
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1957
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1958
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 1957
    invoke-virtual {v0, p0, v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1960
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1961
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1940
    :cond_5
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->d:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 1947
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1948
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1942
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1943
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    :goto_0
    return-void
.end method

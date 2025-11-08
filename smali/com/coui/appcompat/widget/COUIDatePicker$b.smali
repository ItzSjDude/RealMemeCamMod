.class Lcom/coui/appcompat/widget/COUIDatePicker$b;
.super Ljava/lang/Object;
.source "COUIDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Calendar;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIDatePicker$b;)Ljava/util/Calendar;
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUIDatePicker$b;)Z
    .locals 0

    .line 889
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    if-nez v0, :cond_0

    .line 923
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 926
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 928
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/high16 p0, -0x80000000

    return p0

    .line 934
    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public a()J
    .locals 2

    .line 913
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p1, v0, :cond_1

    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    .line 946
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    .line 948
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 949
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 951
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 952
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 953
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 954
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->d(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 956
    :cond_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    .line 958
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 959
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 961
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 962
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    const/16 v4, 0x7e4

    invoke-virtual {v3, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 963
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 964
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->d(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 967
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 968
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 970
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 971
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 972
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 973
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->d(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 976
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->d(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x1

    .line 981
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    const/4 p1, 0x2

    .line 982
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    const/4 p1, 0x5

    .line 983
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    .line 918
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    return-void
.end method

.method public a(Lcom/coui/appcompat/widget/COUIDatePicker$b;)V
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 905
    iget-boolean p1, p1, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    return-void
.end method

.method a(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    .line 1014
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    .line 1017
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    .line 1018
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    goto :goto_0

    .line 1019
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1020
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    .line 1021
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    .line 1022
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Calendar;)Z
    .locals 1

    .line 992
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    if-nez v0, :cond_0

    .line 993
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method b(I)I
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    return p0
.end method

.method public b(Ljava/util/Calendar;)Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b:Z

    if-nez v0, :cond_0

    .line 1000
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method c(I)I
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method d(I)I
    .locals 1

    .line 1028
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    if-le p1, p0, :cond_0

    return p0

    :cond_0
    return p1
.end method

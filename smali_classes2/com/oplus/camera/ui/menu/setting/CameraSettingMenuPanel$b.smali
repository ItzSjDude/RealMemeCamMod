.class Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;
.super Ljava/lang/Object;
.source "CameraSettingMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    if-nez p1, :cond_0

    .line 2002
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    .line 2005
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    if-nez p1, :cond_1

    .line 2006
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    .line 1989
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F
    .locals 7

    .line 2082
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 2083
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2085
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2086
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    :goto_1
    int-to-float p0, p0

    return p0

    .line 2089
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p1

    .line 2091
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    .line 2095
    :cond_2
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-static {v4, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    .line 2098
    :goto_2
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    if-eqz v0, :cond_4

    .line 2100
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    if-ltz v5, :cond_3

    .line 2101
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_3
    check-cast v5, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    goto :goto_4

    .line 2103
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 2106
    :goto_4
    invoke-virtual {v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v5

    .line 2108
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-static {v6, v5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2109
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2114
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 2117
    :goto_5
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 2118
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 2119
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v3

    .line 2121
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-static {v4, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2122
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2127
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2130
    :goto_6
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_a

    .line 2131
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 2132
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p1

    .line 2134
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2135
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    return v1
.end method

.method public a(F)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
    .locals 5

    .line 2047
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2049
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2050
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    .line 2053
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_0
    if-ltz p1, :cond_1

    .line 2057
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(I)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
    .locals 2

    .line 2033
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2035
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2039
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1993
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    return-object p0
.end method

.method public b(F)Z
    .locals 6

    .line 2073
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    float-to-double v2, p1

    .line 2074
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    .line 2075
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(I)Z
    .locals 0

    .line 2065
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2066
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 1

    .line 2145
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2146
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation

    .line 1997
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    return-object p0
.end method

.method public d()I
    .locals 0

    .line 2011
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2015
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public e()V
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b:Ljava/util/List;

    goto :goto_0

    .line 2022
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2025
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c:Ljava/util/List;

    goto :goto_1

    .line 2028
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    return-void
.end method

.class public Lcom/oplus/camera/ui/modepanel/l;
.super Ljava/lang/Object;
.source "ModePanelData.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/l;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/l;->c:Z

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/l;->b:Landroid/app/Activity;

    .line 28
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/l;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/l;->c()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/l;->c:Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ModePanelData"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 10

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/l;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    const-string v2, "position_mode_panel"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addRearItem, itemId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error, position panel has no data."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModePanelData"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/oplus/camera/ui/modepanel/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;->INSTANCE:Lcom/oplus/camera/ui/modepanel/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 67
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/i;->d()I

    move-result v1

    :goto_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_3

    .line 71
    new-instance p1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v5, 0x0

    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x9

    const/4 v9, 0x0

    const-string v4, "breenoScan"

    const-string v6, "position_mode_panel"

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 73
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/util/List;)Z

    goto :goto_1

    :cond_3
    const/16 v0, 0x11

    if-ne v0, p1, :cond_4

    .line 76
    new-instance p1, Lcom/oplus/camera/ui/modepanel/i;

    const/4 v5, 0x0

    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x11

    const/4 v9, 0x0

    const-string v4, "soloopTemplate"

    const-string v6, "position_mode_panel"

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 78
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/util/List;)Z

    goto :goto_1

    .line 82
    :cond_4
    new-instance v0, Lcom/oplus/camera/ui/modepanel/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->d(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/lit8 v7, v1, 0x1

    const/4 v9, 0x0

    const-string v6, "position_mode_panel"

    move-object v3, v0

    move v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/camera/ui/modepanel/i;-><init>(Ljava/lang/String;ZLjava/lang/String;IIZ)V

    .line 84
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/util/List;)Z

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/l;->c()V

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/modepanel/k;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public b(I)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/b;->b(I)Z

    .line 93
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/l;->c()V

    return-void
.end method

.method public c(I)I
    .locals 2

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/k;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public c()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    const-string v1, "position_mode_panel"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;->INSTANCE:Lcom/oplus/camera/ui/modepanel/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 116
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/i;

    .line 119
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "idPhoto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sticker"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const-string v2, "com.oplus.feature.street.long.exposure.support"

    .line 121
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "longExposure"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    new-instance v2, Lcom/oplus/camera/ui/modepanel/k;

    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/l;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->e()I

    move-result v4

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->e()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/a/c;->c(I)I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/oplus/camera/ui/modepanel/k;-><init>(Landroid/app/Activity;II)V

    .line 127
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

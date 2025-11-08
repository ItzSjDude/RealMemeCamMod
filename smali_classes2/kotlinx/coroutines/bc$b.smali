.class final Lkotlinx/coroutines/bc$b;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private volatile _exceptionsHolder:Ljava/lang/Object;

.field private volatile _isCompleting:I

.field private volatile _rootCause:Ljava/lang/Object;

.field private final a:Lkotlinx/coroutines/bg;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bg;ZLjava/lang/Throwable;)V
    .locals 0

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/bc$b;->a:Lkotlinx/coroutines/bg;

    .line 1076
    iput p2, p0, Lkotlinx/coroutines/bc$b;->_isCompleting:I

    .line 1081
    iput-object p3, p0, Lkotlinx/coroutines/bc$b;->_rootCause:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1086
    iput-object p1, p0, Lkotlinx/coroutines/bc$b;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lkotlinx/coroutines/bc$b;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method

.method private final g()Ljava/lang/Object;
    .locals 0

    .line 1088
    iget-object p0, p0, Lkotlinx/coroutines/bc$b;->_exceptionsHolder:Ljava/lang/Object;

    return-object p0
.end method

.method private final h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1135
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lkotlinx/coroutines/bc$b;->_rootCause:Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1079
    iput p1, p0, Lkotlinx/coroutines/bc$b;->_isCompleting:I

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1099
    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1100
    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1101
    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    .line 1102
    :cond_1
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/ArrayList;

    .line 1105
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 1106
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 1107
    invoke-static {p1, v1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/bd;->a()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/bc$b;->a(Ljava/lang/Object;)V

    .line 1109
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1103
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "State is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public b()Z
    .locals 0

    .line 1094
    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->d()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    .line 1114
    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1116
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bc$b;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    .line 1120
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1121
    invoke-direct {p0, p1}, Lkotlinx/coroutines/bc$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1122
    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    return-void

    .line 1124
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    .line 1125
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    sget-object p1, Lc/s;->a:Lc/s;

    .line 1124
    invoke-direct {p0, v1}, Lkotlinx/coroutines/bc$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1130
    :cond_4
    instance-of p0, v0, Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 1131
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "State is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final c()Z
    .locals 0

    .line 1078
    iget p0, p0, Lkotlinx/coroutines/bc$b;->_isCompleting:I

    return p0
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 0

    .line 1083
    iget-object p0, p0, Lkotlinx/coroutines/bc$b;->_rootCause:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final e()Z
    .locals 1

    .line 1092
    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->g()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlinx/coroutines/bd;->a()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1093
    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->d()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k_()Lkotlinx/coroutines/bg;
    .locals 0

    .line 1072
    iget-object p0, p0, Lkotlinx/coroutines/bc$b;->a:Lkotlinx/coroutines/bg;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->d()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/bc$b;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/bc$b;->k_()Lkotlinx/coroutines/bg;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

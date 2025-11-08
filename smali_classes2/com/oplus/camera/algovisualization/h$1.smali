.class Lcom/oplus/camera/algovisualization/h$1;
.super Ljava/lang/Object;
.source "NetworkAuthenticationUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/algovisualization/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/algovisualization/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/algovisualization/h;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 43
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {p1}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;)[J

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {v1}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;)[J

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {p1}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;)[J

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;)[J

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 46
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {p1}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;)[J

    move-result-object p1

    aget-wide v0, p1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    sub-long/2addr v4, v6

    cmp-long p1, v0, v4

    if-ltz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {p1}, Lcom/oplus/camera/algovisualization/h;->c(Lcom/oplus/camera/algovisualization/h;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    .line 48
    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->b(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 49
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    .line 50
    invoke-static {p1}, Lcom/oplus/camera/algovisualization/h;->d(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Lcom/oplus/camera/ui/menu/a;

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->c(Lcom/oplus/camera/algovisualization/h;)Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    .line 54
    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->d(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->e(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    .line 55
    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->f(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/oplus/camera/ui/menu/a;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a;->show()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {p1}, Lcom/oplus/camera/algovisualization/h;->c(Lcom/oplus/camera/algovisualization/h;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/h;->g(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 61
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h$1;->a:Lcom/oplus/camera/algovisualization/h;

    const/16 p1, 0x8

    new-array p1, p1, [J

    invoke-static {p0, p1}, Lcom/oplus/camera/algovisualization/h;->a(Lcom/oplus/camera/algovisualization/h;[J)[J

    :cond_1
    return-void
.end method

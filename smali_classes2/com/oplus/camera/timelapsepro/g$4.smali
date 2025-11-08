.class Lcom/oplus/camera/timelapsepro/g$4;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/adapter/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/oplus/camera/timelapsepro/a/k;)V
    .locals 6

    const/4 p2, 0x0

    move v0, p2

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/adapter/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/adapter/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/k;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v2, p2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/a/k;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/adapter/b;->notifyDataSetChanged()V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;I)I

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->d(Lcom/oplus/camera/timelapsepro/g;)I

    move-result v1

    const-string v3, "pref_time_lapse_pro_template_key"

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    const v1, 0x7f1006b2

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, p2

    :goto_2
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    .line 197
    invoke-static {v5}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/adapter/b;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/timelapsepro/a/k;

    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/a/k;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    .line 196
    invoke-static {v0, v1, v3, v4}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;IZ[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    if-eqz p1, :cond_3

    move p2, v2

    :cond_3
    invoke-static {v0, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Z)Z

    if-eqz p1, :cond_4

    .line 202
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p2}, Lcom/oplus/camera/timelapsepro/g;->e(Lcom/oplus/camera/timelapsepro/g;)V

    .line 205
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p2, p1}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;I)V

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$4;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;I)V

    return-void
.end method

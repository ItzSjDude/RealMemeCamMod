.class Lcom/oplus/camera/timelapsepro/g$1;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;


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

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$1;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/oplus/camera/timelapsepro/a/j;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$1;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clickItem, current setting is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", so return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeLapseProMenuLayout"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g$1;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v2}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g$1;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v2}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/j;

    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, v2, Lcom/oplus/camera/timelapsepro/a/j;->b:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$1;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->notifyDataSetChanged()V

    .line 181
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$1;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;ILcom/oplus/camera/timelapsepro/a/j;)V

    return-void
.end method

.class Lcom/oplus/camera/algovisualization/c$a;
.super Ljava/lang/Object;
.source "AlgoVisualViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/algovisualization/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/algovisualization/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/algovisualization/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/c$a;->a:Lcom/oplus/camera/algovisualization/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 323
    iput p1, p0, Lcom/oplus/camera/algovisualization/c$a;->j:I

    const/4 p1, 0x1

    .line 324
    iput p1, p0, Lcom/oplus/camera/algovisualization/c$a;->k:I

    .line 330
    iput-object p2, p0, Lcom/oplus/camera/algovisualization/c$a;->b:Ljava/lang/String;

    .line 331
    iput-object p3, p0, Lcom/oplus/camera/algovisualization/c$a;->c:Ljava/lang/String;

    .line 332
    iput-object p4, p0, Lcom/oplus/camera/algovisualization/c$a;->d:Ljava/lang/String;

    .line 333
    iput p5, p0, Lcom/oplus/camera/algovisualization/c$a;->e:I

    .line 334
    iput p6, p0, Lcom/oplus/camera/algovisualization/c$a;->f:I

    .line 335
    iput-object p7, p0, Lcom/oplus/camera/algovisualization/c$a;->h:Ljava/util/ArrayList;

    .line 336
    iput-object p8, p0, Lcom/oplus/camera/algovisualization/c$a;->i:Ljava/util/ArrayList;

    .line 337
    iput p9, p0, Lcom/oplus/camera/algovisualization/c$a;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c$a;->a:Lcom/oplus/camera/algovisualization/c;

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/c;->a(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v1, p0, Lcom/oplus/camera/algovisualization/c$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/camera/algovisualization/c$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/camera/algovisualization/c$a;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oplus/camera/algovisualization/c$a;->i:Ljava/util/ArrayList;

    iget v5, p0, Lcom/oplus/camera/algovisualization/c$a;->f:I

    iget-object v6, p0, Lcom/oplus/camera/algovisualization/c$a;->d:Ljava/lang/String;

    iget v0, p0, Lcom/oplus/camera/algovisualization/c$a;->e:I

    .line 346
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/oplus/camera/algovisualization/c$a;->g:I

    .line 344
    invoke-static/range {v1 .. v8}, Lcom/oplus/camera/algovisualization/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "AlgoVisualViewManager"

    if-nez v2, :cond_0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visualViewRunnable, algo key: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/oplus/camera/algovisualization/c$a;->a:Lcom/oplus/camera/algovisualization/c;

    invoke-static {v2}, Lcom/oplus/camera/algovisualization/c;->a(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v5, v3, v1}, Lcom/oplus/camera/algovisualization/c;->a(Landroid/widget/TextView;Ljava/lang/StringBuilder;Landroid/text/SpannableStringBuilder;)V

    :cond_0
    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visualViewRunnable, algo value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c$a;->a:Lcom/oplus/camera/algovisualization/c;

    invoke-static {p0}, Lcom/oplus/camera/algovisualization/c;->b(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v2, v3, v0}, Lcom/oplus/camera/algovisualization/c;->a(Landroid/widget/TextView;Ljava/lang/StringBuilder;Landroid/text/SpannableStringBuilder;)V

    :cond_1
    return-void
.end method

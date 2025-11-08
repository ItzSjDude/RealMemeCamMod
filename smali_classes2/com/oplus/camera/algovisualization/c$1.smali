.class Lcom/oplus/camera/algovisualization/c$1;
.super Ljava/lang/Object;
.source "AlgoVisualViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/algovisualization/c;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/algovisualization/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/algovisualization/c;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/c$1;->b:Lcom/oplus/camera/algovisualization/c;

    iput p2, p0, Lcom/oplus/camera/algovisualization/c$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/algovisualization/c$1;->b:Lcom/oplus/camera/algovisualization/c;

    invoke-static {v1}, Lcom/oplus/camera/algovisualization/c;->a(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/oplus/camera/algovisualization/c;->a(Landroid/widget/TextView;Ljava/lang/StringBuilder;Landroid/text/SpannableStringBuilder;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/algovisualization/c$1;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c$1;->b:Lcom/oplus/camera/algovisualization/c;

    invoke-static {p0}, Lcom/oplus/camera/algovisualization/c;->b(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/oplus/camera/algovisualization/c;->a(Landroid/widget/TextView;Ljava/lang/StringBuilder;Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

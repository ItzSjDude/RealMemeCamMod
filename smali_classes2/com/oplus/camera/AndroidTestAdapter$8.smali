.class Lcom/oplus/camera/AndroidTestAdapter$8;
.super Ljava/lang/Object;
.source "AndroidTestAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/AndroidTestAdapter;->setMovieParameter(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/oplus/camera/AndroidTestAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/camera/AndroidTestAdapter;ILjava/lang/String;I)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->d:Lcom/oplus/camera/AndroidTestAdapter;

    iput p2, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->a:I

    iput-object p3, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->b:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->d:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-static {v0}, Lcom/oplus/camera/AndroidTestAdapter;->access$000(Lcom/oplus/camera/AndroidTestAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/l;

    .line 307
    iget v1, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/l;->setManual(I)V

    .line 308
    iget v1, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->a:I

    iget-object v2, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->b:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/filmvideomode/l;->a(ILjava/lang/String;I)V

    .line 309
    iget v1, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/filmvideomode/l;->a(ZI)V

    .line 310
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter$8;->d:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-virtual {p0}, Lcom/oplus/camera/AndroidTestAdapter;->blurModeChanged()V

    return-void
.end method

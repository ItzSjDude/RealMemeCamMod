.class Lcom/oplus/camera/AndroidTestAdapter$11;
.super Ljava/lang/Object;
.source "AndroidTestAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/AndroidTestAdapter;->resetProfessionalParameter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/AndroidTestAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/camera/AndroidTestAdapter;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/oplus/camera/AndroidTestAdapter$11;->a:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter$11;->a:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-static {v0}, Lcom/oplus/camera/AndroidTestAdapter;->access$000(Lcom/oplus/camera/AndroidTestAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/p;

    .line 343
    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->b()V

    .line 344
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter$11;->a:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-virtual {p0}, Lcom/oplus/camera/AndroidTestAdapter;->blurModeChanged()V

    return-void
.end method

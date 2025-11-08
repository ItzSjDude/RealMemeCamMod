.class Lcom/oplus/camera/AndroidTestAdapter$2;
.super Ljava/lang/Object;
.source "AndroidTestAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/AndroidTestAdapter;->setXpanEvWheelValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/AndroidTestAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/camera/AndroidTestAdapter;I)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/oplus/camera/AndroidTestAdapter$2;->b:Lcom/oplus/camera/AndroidTestAdapter;

    iput p2, p0, Lcom/oplus/camera/AndroidTestAdapter$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter$2;->b:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-static {v0}, Lcom/oplus/camera/AndroidTestAdapter;->access$000(Lcom/oplus/camera/AndroidTestAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09042c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    .line 367
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result v1

    iget p0, p0, Lcom/oplus/camera/AndroidTestAdapter$2;->a:I

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    return-void
.end method

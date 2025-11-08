.class Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "HSScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V
    .locals 2

    .line 708
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingInterpolator;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    const/4 p1, 0x0

    const v0, 0x3f147ae1    # 0.58f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 709
    invoke-direct {p0, p1, p1, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

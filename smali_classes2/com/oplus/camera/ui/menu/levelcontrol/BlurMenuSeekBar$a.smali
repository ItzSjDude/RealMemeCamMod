.class Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$a;
.super Landroid/view/animation/PathInterpolator;
.source "BlurMenuSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x3f147ae1    # 0.58f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 826
    invoke-direct {p0, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

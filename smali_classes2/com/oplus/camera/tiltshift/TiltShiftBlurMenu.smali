.class public Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;
.super Lcom/oplus/camera/ui/menu/levelcontrol/c;
.source "TiltShiftBlurMenu.java"


# static fields
.field private static final DEFAULT_DOT_FOCUS_VALUE:F = 70.0f

.field private static final PERCENT_TEXT:Ljava/lang/String; = "%"

.field private static final TiltShift_BLUR_VALUES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    .line 10
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->TiltShift_BLUR_VALUES:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
        0x420c0000    # 35.0f
        0x42200000    # 40.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
        0x425c0000    # 55.0f
        0x42700000    # 60.0f
        0x42820000    # 65.0f
        0x428c0000    # 70.0f
        0x42960000    # 75.0f
        0x42a00000    # 80.0f
        0x42aa0000    # 85.0f
        0x42b40000    # 90.0f
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/levelcontrol/c$a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/levelcontrol/c$a;)V

    return-void
.end method


# virtual methods
.method protected convertBlurMenuValueToTextValue(I)F
    .locals 0

    .line 44
    sget-object p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->TiltShift_BLUR_VALUES:[F

    aget p0, p0, p1

    return p0
.end method

.method protected convertValueToFocus(F)Ljava/lang/String;
    .locals 0

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBlurTextWidth(F)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getMaxValue()I
    .locals 0

    .line 49
    sget-object p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->TiltShift_BLUR_VALUES:[F

    array-length p0, p0

    return p0
.end method

.method protected getOffset(II)F
    .locals 0

    .line 59
    sget-object p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->TiltShift_BLUR_VALUES:[F

    aget p0, p0, p1

    int-to-float p1, p2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method protected getRealValue(I)I
    .locals 0

    .line 54
    sget-object p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->TiltShift_BLUR_VALUES:[F

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected getTextValuesLength()I
    .locals 0

    .line 39
    sget-object p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->TiltShift_BLUR_VALUES:[F

    array-length p0, p0

    return p0
.end method

.method protected initBlurSeekbarDefaultDotPosition()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/high16 v1, 0x428c0000    # 70.0f

    .line 72
    invoke-virtual {p0, v0}, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->convertBlurMenuValueToTextValue(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 73
    iget-object p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setDefaultDotPosition(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public show(ZZ)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->show(ZZ)V

    .line 65
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftBlurMenu;->hideBlurMenuValuePrefixText()V

    return-void
.end method

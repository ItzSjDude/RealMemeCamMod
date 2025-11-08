.class public Lcom/oplus/camera/ui/preview/af;
.super Lcom/oplus/camera/ui/preview/ai;
.source "ZoomArcSeekBar.java"


# static fields
.field private static di:F = 0.5f


# instance fields
.field private dA:Landroid/graphics/RectF;

.field private dB:Landroid/graphics/SweepGradient;

.field private dC:[I

.field private dD:[F

.field private dE:I

.field private dF:I

.field private dG:I

.field private dH:I

.field private dI:I

.field private dJ:I

.field private dK:I

.field private dL:F

.field private dM:F

.field private dN:F

.field private dO:F

.field private dP:Landroid/graphics/Paint;

.field private dQ:Landroid/graphics/Paint;

.field private dR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private dS:I

.field private dj:I

.field private dk:I

.field private dl:I

.field private dm:F

.field private dn:F

.field private do:Landroid/graphics/Paint;

.field private dp:Landroid/graphics/Paint;

.field private dq:Landroid/graphics/Paint;

.field private dr:I

.field private ds:I

.field private dt:I

.field private du:I

.field private dv:I

.field private dw:I

.field private dx:I

.field private dy:Landroid/text/TextPaint;

.field private dz:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 100
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ai;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dj:I

    .line 60
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    .line 61
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dl:I

    const/high16 v0, 0x41d80000    # 27.0f

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->dm:F

    const/high16 v0, 0x421c0000    # 39.0f

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->dn:F

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    .line 67
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dr:I

    .line 68
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->ds:I

    .line 69
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dt:I

    .line 70
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->du:I

    .line 71
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dv:I

    .line 72
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dw:I

    .line 73
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dx:I

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    .line 76
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dz:I

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dA:Landroid/graphics/RectF;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dB:Landroid/graphics/SweepGradient;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dC:[I

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dD:[F

    .line 82
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dE:I

    .line 83
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dF:I

    .line 84
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dG:I

    .line 85
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dH:I

    .line 86
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dI:I

    .line 87
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dJ:I

    .line 88
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dK:I

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dL:F

    .line 90
    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dM:F

    .line 91
    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dN:F

    .line 92
    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dO:F

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dQ:Landroid/graphics/Paint;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dR:Ljava/util/Map;

    .line 97
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dS:I

    .line 102
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/af;->E()V

    return-void
.end method

.method private E()V
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d97

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dj:I

    const v1, 0x7f070d7b

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    const v1, 0x7f070d82

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    const v1, 0x7f070d8b

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dM:F

    const v1, 0x7f070d8c

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dN:F

    const v1, 0x7f0708fc

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dK:I

    const v1, 0x7f070d9f

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dx:I

    const v1, 0x7f060581

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dr:I

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dr:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->du:I

    const v1, 0x7f070d7c

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dl:I

    const v1, 0x7f060582

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->ds:I

    .line 167
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    .line 168
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dl:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->ds:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dt:I

    .line 174
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    .line 175
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dl:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, 0x7f070d94

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dz:I

    const/4 v1, 0x4

    .line 180
    new-array v1, v1, [I

    const-string v3, "#00FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v1, v5

    iget v4, p0, Lcom/oplus/camera/ui/preview/af;->ds:I

    aput v4, v1, v2

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 181
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v1, v4

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dC:[I

    .line 182
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/af;->getSweepGradientPositions()[F

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dD:[F

    .line 183
    new-instance v1, Landroid/graphics/SweepGradient;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget v4, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/af;->dC:[I

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/af;->dD:[F

    invoke-direct {v1, v3, v4, v6, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dB:Landroid/graphics/SweepGradient;

    const v1, 0x7f070d83

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->aD:I

    const v1, 0x7f060583

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->aL:I

    const v1, 0x7f070d8a

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dE:I

    const v1, 0x7f060584

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dF:I

    .line 190
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bA:Landroid/graphics/Paint;

    .line 191
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bA:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bA:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bA:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->aL:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bA:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->aY:I

    .line 196
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dQ:Landroid/graphics/Paint;

    .line 197
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dQ:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dQ:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dQ:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dE:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dQ:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dF:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bI:Landroid/text/TextPaint;

    const v1, 0x7f070d90

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->aT:I

    .line 204
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bI:Landroid/text/TextPaint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->aT:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 205
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bI:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 206
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bI:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 207
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bI:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    const v1, 0x7f070d93

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dv:I

    .line 211
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    iget v4, p0, Lcom/oplus/camera/ui/preview/af;->dv:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 212
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 213
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v1, 0x7f070d95

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dw:I

    const v1, 0x7f070dbe

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dS:I

    .line 220
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bI:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 221
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 222
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/oplus/camera/ui/preview/af;->dL:F

    const v1, 0x7f070d8f

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dG:I

    const v1, 0x7f070d8d

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/af;->dH:I

    .line 226
    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dH:I

    div-int/2addr v3, v5

    sub-int/2addr v1, v3

    const v3, 0x7f070d8e

    .line 227
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->dO:F

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->dI:I

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->dJ:I

    return-void
.end method

.method private a(Landroid/animation/TimeInterpolator;FFF)F
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    sub-float/2addr p4, p3

    const v1, 0x3ca3d70a    # 0.02f

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v0

    move v0, p0

    :goto_0
    cmpg-float v4, p0, v2

    if-gez v4, :cond_1

    .line 437
    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, p4

    add-float/2addr v4, p3

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    move v0, p0

    move v3, v4

    :cond_0
    add-float/2addr p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :cond_2
    return p0
.end method

.method private a(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cs:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 490
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cj:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cj:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 493
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 494
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->cd:Ljava/util/Map;

    sget-object v0, Lcom/oplus/camera/ui/preview/ai$b;->ULTRA_WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cl:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->cm:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/af;->az:Z

    if-eqz p2, :cond_1

    .line 501
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cn:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cn:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 504
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 505
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->cd:Ljava/util/Map;

    sget-object v0, Lcom/oplus/camera/ui/preview/ai$b;->TELE:Lcom/oplus/camera/ui/preview/ai$b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cp:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->cq:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 507
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 511
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->dd:F

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 514
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int p2, p2

    int-to-float p2, p2

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->dd:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 515
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->cd:Ljava/util/Map;

    sget-object p3, Lcom/oplus/camera/ui/preview/ai$b;->WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->dd:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cp:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cq:F

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 10

    .line 318
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->A:F

    .line 319
    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->B:F

    .line 320
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bQ:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 321
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bR:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->bX:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->aj:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->bU:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 323
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bS:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->bY:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dx:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FFF)V

    .line 326
    iget v7, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->dx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v8, v0, v1

    iget v9, p0, Lcom/oplus/camera/ui/preview/af;->cs:I

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;F)V
    .locals 4

    .line 772
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 773
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->dh:Lcom/oplus/camera/screen/g;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/screen/b/a;->a(Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 774
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 775
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dj:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 777
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->dl:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 778
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->dl:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 524
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cs:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 525
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cj:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cj:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 528
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 529
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->cd:Ljava/util/Map;

    sget-object v0, Lcom/oplus/camera/ui/preview/ai$b;->ULTRA_WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cl:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->cm:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/af;->az:Z

    if-eqz p2, :cond_1

    .line 535
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cn:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cn:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 539
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->cd:Ljava/util/Map;

    sget-object v0, Lcom/oplus/camera/ui/preview/ai$b;->TELE:Lcom/oplus/camera/ui/preview/ai$b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cp:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->cq:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 545
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->dd:F

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 548
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int p2, p2

    int-to-float p2, p2

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->dd:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 549
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->cd:Ljava/util/Map;

    sget-object p3, Lcom/oplus/camera/ui/preview/ai$b;->WIDE:Lcom/oplus/camera/ui/preview/ai$b;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->dd:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cp:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cq:F

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/af;->getTotleAngle()F

    move-result v1

    iget v2, v0, Lcom/oplus/camera/ui/preview/af;->ad:F

    mul-float/2addr v1, v2

    const/high16 v9, 0x42b40000    # 90.0f

    add-float v10, v1, v9

    .line 624
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ZoomArcSeekBar"

    const-string v1, "drawIndicatorLines, text is null"

    .line 625
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 630
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/af;->D()V

    .line 632
    iget v1, v0, Lcom/oplus/camera/ui/preview/af;->dO:F

    iget v2, v0, Lcom/oplus/camera/ui/preview/af;->dj:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    int-to-float v2, v2

    mul-float v2, v2, p4

    add-float v11, v1, v2

    const/4 v13, 0x0

    .line 635
    :goto_0
    iget v1, v0, Lcom/oplus/camera/ui/preview/af;->bb:I

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v13, v1, :cond_a

    int-to-float v1, v13

    .line 636
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/af;->e(F)F

    move-result v1

    .line 637
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/af;->b(F)Z

    move-result v16

    .line 638
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/af;->c(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float v6, v2, v3

    const/high16 v2, 0x41200000    # 10.0f

    .line 641
    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    const v4, 0x3727c5ac    # 1.0E-5f

    const/4 v5, 0x1

    if-gez v3, :cond_1

    rem-float v3, v6, v15

    .line 642
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_1

    :goto_1
    move v2, v5

    goto :goto_2

    .line 644
    :cond_1
    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_2

    rem-float v2, v6, v2

    .line 645
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 649
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/af;->getLayoutDirection()I

    move-result v3

    if-ne v5, v3, :cond_3

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/af;->getTotleAngle()F

    move-result v3

    sub-float v1, v15, v1

    goto :goto_3

    .line 652
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/af;->getTotleAngle()F

    move-result v3

    :goto_3
    mul-float/2addr v3, v1

    sub-float v1, v10, v3

    float-to-double v3, v1

    .line 655
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    move/from16 v19, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 656
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 658
    iget v3, v0, Lcom/oplus/camera/ui/preview/af;->af:F

    mul-float v4, v11, v12

    add-float/2addr v3, v4

    .line 659
    iget v4, v0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-float v4, v4

    mul-float v5, v11, v13

    sub-float v5, v4, v5

    .line 661
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    iget v14, v0, Lcom/oplus/camera/ui/preview/af;->dH:I

    int-to-float v14, v14

    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 662
    iget v4, v0, Lcom/oplus/camera/ui/preview/af;->dG:I

    int-to-float v14, v4

    mul-float/2addr v14, v15

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v14, v18

    sub-float v14, v3, v14

    int-to-float v4, v4

    mul-float/2addr v4, v15

    div-float v4, v4, v18

    add-float/2addr v4, v3

    if-eqz v16, :cond_4

    .line 668
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    .line 670
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    iget v9, v0, Lcom/oplus/camera/ui/preview/af;->dI:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 672
    :cond_5
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    iget v9, v0, Lcom/oplus/camera/ui/preview/af;->dJ:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    :goto_4
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/af;->m(F)I

    move-result v2

    .line 677
    invoke-static {v8, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-gtz v9, :cond_6

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    :cond_6
    move v9, v2

    .line 681
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v20, 0x42b40000    # 90.0f

    sub-float v1, v20, v1

    .line 684
    invoke-virtual {v7, v1, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 686
    invoke-static {v6, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_7

    if-nez v16, :cond_7

    iget-boolean v3, v0, Lcom/oplus/camera/ui/preview/af;->bi:Z

    if-eqz v3, :cond_7

    add-float/2addr v14, v4

    div-float v14, v14, v18

    add-float/2addr v5, v5

    div-float v5, v5, v18

    .line 689
    iget v3, v0, Lcom/oplus/camera/ui/preview/af;->dK:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v5, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v15, v1

    move/from16 v22, v9

    move/from16 v21, v10

    move v10, v2

    move v9, v6

    goto :goto_5

    .line 691
    :cond_7
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    move v15, v1

    move-object/from16 v1, p1

    move/from16 v21, v10

    move v10, v2

    move v2, v14

    move-object v14, v3

    move v3, v5

    move/from16 v22, v9

    move v9, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 694
    :goto_5
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v16, :cond_9

    .line 697
    invoke-virtual {v0, v9}, Lcom/oplus/camera/ui/preview/af;->f(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/af;->a(F)Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 700
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 701
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 703
    iget v3, v0, Lcom/oplus/camera/ui/preview/af;->dH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v11, v3

    iget v4, v0, Lcom/oplus/camera/ui/preview/af;->dw:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 704
    iget v4, v0, Lcom/oplus/camera/ui/preview/af;->af:F

    mul-float/2addr v12, v3

    add-float/2addr v4, v12

    .line 705
    iget v5, v0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-float v5, v5

    mul-float/2addr v3, v13

    sub-float/2addr v5, v3

    .line 707
    invoke-virtual {v7, v15, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 708
    iget v3, v0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 710
    invoke-static {v8, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gtz v3, :cond_8

    .line 711
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v8

    float-to-int v10, v10

    invoke-virtual {v3, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_6

    .line 713
    :cond_8
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    const/16 v10, 0xff

    invoke-virtual {v3, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 716
    :goto_6
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/af;->ax:Landroid/content/res/Resources;

    const v10, 0x7f070d96

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 717
    iget-object v10, v0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    move/from16 v12, v22

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    int-to-float v10, v3

    add-float/2addr v10, v5

    .line 718
    iget-object v12, v0, Lcom/oplus/camera/ui/preview/af;->dy:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v4, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 719
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/af;->dR:Ljava/util/Map;

    invoke-virtual {v0, v9}, Lcom/oplus/camera/ui/preview/af;->f(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    float-to-int v4, v4

    float-to-int v5, v5

    add-int/2addr v5, v3

    invoke-direct {v10, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    add-int/lit8 v13, v19, 0x1

    move/from16 v9, v20

    move/from16 v10, v21

    goto/16 :goto_0

    .line 724
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 725
    iget v1, v0, Lcom/oplus/camera/ui/preview/af;->dN:F

    iget v2, v0, Lcom/oplus/camera/ui/preview/af;->dj:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    int-to-float v2, v2

    mul-float v2, v2, p4

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 730
    invoke-static {v8, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_b

    const/16 v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    goto :goto_8

    :cond_b
    const/16 v2, 0xff

    :goto_8
    move v6, v2

    .line 734
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/af;->ax:Landroid/content/res/Resources;

    const v3, 0x7f0806ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 735
    iget v3, v0, Lcom/oplus/camera/ui/preview/af;->af:F

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFI)V

    .line 737
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getSweepGradientPositions()[F
    .locals 7

    const/4 v0, 0x4

    .line 741
    new-array v0, v0, [F

    .line 743
    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dm:F

    const/high16 v2, 0x43340000    # 180.0f

    add-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v3, v5

    const/4 v6, 0x0

    aput v3, v0, v6

    .line 744
    iget p0, p0, Lcom/oplus/camera/ui/preview/af;->dn:F

    add-float/2addr v2, p0

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    const/4 v3, 0x1

    aput v2, v0, v3

    sub-float p0, v5, p0

    mul-float/2addr p0, v4

    div-float/2addr p0, v5

    const/4 v2, 0x2

    aput p0, v0, v2

    sub-float p0, v5, v1

    mul-float/2addr p0, v4

    div-float/2addr p0, v5

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method private l(F)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/af;->n(F)V

    return-void
.end method

.method private m(F)I
    .locals 6

    .line 752
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dm:F

    .line 753
    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dn:F

    .line 754
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->dP:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    if-ltz v2, :cond_0

    sub-float v2, v4, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v2, p1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v2, :cond_1

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    int-to-float p0, p0

    mul-float/2addr p0, v5

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    sub-float/2addr p1, v0

    :goto_0
    mul-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_1

    :cond_1
    sub-float v2, v4, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    sub-float v2, v4, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    int-to-float p0, p0

    mul-float/2addr p0, v5

    sub-float v1, v0, v1

    div-float/2addr p0, v1

    add-float/2addr p1, v0

    sub-float/2addr p1, v4

    goto :goto_0

    :cond_2
    move p0, v3

    .line 768
    :goto_1
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private n(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->dr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 820
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->du:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 821
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 822
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->dt:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/ui/preview/af;->dt:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 815
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dr:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/af;->dp:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ds:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 817
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/af;->dq:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/ui/preview/af;->ds:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(FLandroid/view/VelocityTracker;)F
    .locals 4

    .line 829
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    .line 831
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->au:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->av:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->au:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->as:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->ar:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ar:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 834
    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->au:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->av:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 836
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->aq:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/ui/preview/af;->au:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    div-float/2addr p2, v0

    :cond_0
    neg-float p0, p1

    mul-float/2addr p0, p2

    return p0
.end method

.method public a(F)Ljava/lang/String;
    .locals 3

    .line 802
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getZoomValueUnit()Z

    move-result v0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomValueUnit, changeUnit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomArcSeekBar"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bP:Lcom/oplus/camera/ah;

    if-nez v1, :cond_0

    .line 807
    new-instance v1, Lcom/oplus/camera/ah;

    invoke-direct {v1}, Lcom/oplus/camera/ah;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bP:Lcom/oplus/camera/ah;

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->bP:Lcom/oplus/camera/ah;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ah;->a(ZF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(FF)Ljava/lang/String;
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 257
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v3, v2

    float-to-double v2, v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    .line 259
    iget v6, p0, Lcom/oplus/camera/ui/preview/af;->dS:I

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onClickZoomArcSeekBar, touched zoom value : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomArcSeekBar"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public a(FFFLjava/util/ArrayList;Ljava/util/ArrayList;IZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;IZZZ)V"
        }
    .end annotation

    move-object v4, p4

    .line 109
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v3, p3

    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    :goto_0
    move-object v0, p0

    .line 113
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/af;->dR:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const-string v2, "com.oplus.night.mode.max.zoom.support"

    .line 114
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/math/BigDecimal;

    move v5, p2

    float-to-double v5, v5

    invoke-direct {v2, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, v1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_2
    move v5, p2

    move v2, v5

    :goto_1
    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 115
    invoke-super/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/ai;->a(FFFLjava/util/ArrayList;Ljava/util/ArrayList;IZZZ)V

    return-void
.end method

.method public a(IIIIFFF)V
    .locals 1

    .line 121
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->R:I

    .line 122
    iget p1, p0, Lcom/oplus/camera/ui/preview/af;->R:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    int-to-float p1, p3

    .line 123
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->cf:F

    .line 124
    iget p1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->cf:F

    mul-float/2addr p3, v0

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->ch:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->ck:F

    .line 125
    iget p1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->cf:F

    mul-float/2addr p3, v0

    add-float/2addr p1, p3

    iget p3, p0, Lcom/oplus/camera/ui/preview/af;->ch:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->co:F

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    .line 128
    iget p1, p0, Lcom/oplus/camera/ui/preview/af;->ck:F

    .line 129
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->co:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->ck:F

    .line 130
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->co:F

    .line 133
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/preview/af;->cs:I

    invoke-virtual {p0, p1, p3}, Lcom/oplus/camera/ui/preview/af;->b(IZ)V

    .line 135
    iput p2, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    .line 136
    iget p1, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->dH:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    .line 137
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d8e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dO:F

    int-to-float p1, p4

    .line 138
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    .line 139
    iput p5, p0, Lcom/oplus/camera/ui/preview/af;->ah:F

    .line 140
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/af;->ax:Landroid/content/res/Resources;

    const p2, 0x7f070dc0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    mul-float/2addr p6, p1

    iput p6, p0, Lcom/oplus/camera/ui/preview/af;->cg:F

    .line 141
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/af;->bS:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/camera/ui/preview/af;->cg:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p1, 0x41d80000    # 27.0f

    add-float/2addr p1, p7

    .line 142
    iput p1, p0, Lcom/oplus/camera/ui/preview/af;->dm:F

    const/high16 p1, 0x421c0000    # 39.0f

    add-float/2addr p7, p1

    .line 143
    iput p7, p0, Lcom/oplus/camera/ui/preview/af;->dn:F

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 786
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getMeasuredWidth()I

    move-result v1

    .line 787
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v3, p1

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 794
    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-double v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v9, v1

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    int-to-double v2, v2

    add-double/2addr v5, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 795
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p1

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 796
    iget p0, p0, Lcom/oplus/camera/ui/preview/af;->dk:I

    int-to-double p0, p0

    invoke-static {p0, p1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 451
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->w()V

    .line 453
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 454
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FFF)V

    .line 455
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->M:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;IF)V

    .line 457
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cn:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->cZ:F

    goto :goto_0

    .line 463
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->cZ:F

    goto :goto_0

    .line 459
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cj:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->cZ:F

    .line 472
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cZ:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->cZ:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    .line 474
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FF)V

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 476
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 477
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->ba:F

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->aj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 480
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/af;->d(Landroid/graphics/Canvas;)V

    const/16 p1, 0x9

    .line 481
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/af;->setStatus(I)V

    :goto_1
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 4

    .line 557
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->w()V

    .line 559
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FFF)V

    .line 560
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FF)V

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 562
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 563
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->ba:F

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->aj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->w()V

    .line 571
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    .line 572
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FFF)V

    .line 573
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->M:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;IF)V

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->getCurrentBarIndex()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cn:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    goto :goto_0

    .line 581
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->ci:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    goto :goto_0

    .line 577
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->cj:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    .line 590
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->af:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 592
    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->N:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->de:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->N:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    .line 596
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;FF)V

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 598
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->aV:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->ag:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->ba:F

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->aj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 602
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 603
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/af;->setStatus(I)V

    :goto_1
    return-void
.end method

.method protected f()V
    .locals 1

    .line 247
    invoke-super {p0}, Lcom/oplus/camera/ui/preview/ai;->f()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 248
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/af;->l(F)V

    return-void
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 4

    .line 293
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->C:F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/af;->l(F)V

    .line 294
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->u()V

    .line 296
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 297
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->D:F

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;F)V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cH:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->x()V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bH:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cH:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bH:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->E:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->D:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cF:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bG:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cG:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->bG:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cX:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 314
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->f(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected g(Landroid/graphics/Canvas;)V
    .locals 5

    .line 270
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 271
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->C:F

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/af;->l(F)V

    .line 272
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->D:F

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;F)V

    .line 274
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cH:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->x()V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bH:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cH:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bH:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/camera/ui/preview/af;->E:F

    iget v4, p0, Lcom/oplus/camera/ui/preview/af;->D:F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->cF:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/af;->bG:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cG:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bG:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 289
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->g(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getLayoutHeight()I
    .locals 1

    .line 238
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->ax:Landroid/content/res/Resources;

    const v0, 0x7f070d88

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->u()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;F)V

    .line 333
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cH:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->x()V

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bH:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 338
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cH:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bH:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 339
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->cV:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/oplus/camera/ui/preview/af;->b(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 341
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cI:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->cF:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->bG:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->cG:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->bG:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public p()V
    .locals 4

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScaleBegin, mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomArcSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/af;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/af;->T:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/af;->V:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 353
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->S:I

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->S:I

    if-ne v0, v1, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/af;->V:Z

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->N:F

    .line 358
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->P:F

    .line 359
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->O:F

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/animation/TimeInterpolator;FFF)F

    move-result v0

    .line 362
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 365
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->N:F

    .line 366
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->P:F

    .line 367
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->O:F

    .line 370
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->aN:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->aP:I

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->M:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/animation/TimeInterpolator;FFF)F

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 376
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/16 v0, 0x8

    .line 381
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/af;->setStatus(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public q()V
    .locals 4

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScaleEnd, mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomArcSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->S:I

    const/16 v1, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/oplus/camera/ui/preview/af;->S:I

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/af;->V:Z

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->n:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->aP:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/af;->a(I)I

    move-result v0

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->aN:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/af;->a(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_1

    .line 394
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->da:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->N:F

    .line 395
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->dc:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->P:F

    .line 396
    iget v0, p0, Lcom/oplus/camera/ui/preview/af;->db:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->O:F

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    sub-float v2, v3, v2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/animation/TimeInterpolator;FFF)F

    move-result v0

    .line 399
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->F:F

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/animation/TimeInterpolator;FFF)F

    move-result v0

    .line 403
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 408
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->N:F

    .line 409
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->P:F

    .line 410
    iput v0, p0, Lcom/oplus/camera/ui/preview/af;->O:F

    .line 413
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v2, p0, Lcom/oplus/camera/ui/preview/af;->M:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/oplus/camera/ui/preview/af;->a(Landroid/animation/TimeInterpolator;FFF)F

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/af;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 417
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/16 v0, 0xa

    .line 422
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/af;->setStatus(I)V

    :cond_4
    return-void
.end method

.method public u()V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dh:Lcom/oplus/camera/screen/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dh:Lcom/oplus/camera/screen/g;

    .line 845
    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->dh:Lcom/oplus/camera/screen/g;

    .line 846
    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/af;->do:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/af;->aw:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06058f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

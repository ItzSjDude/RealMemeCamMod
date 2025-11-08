.class public Lcom/oplus/camera/timelapsepro/i;
.super Landroid/widget/RelativeLayout;
.source "TimeLapseProRecordView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Lcom/oplus/camera/ui/preview/CameraTimeView;

.field private g:Lcom/oplus/camera/ui/preview/CameraTimeView;

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/timelapsepro/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, -0x1

    .line 35
    iput-wide p2, p0, Lcom/oplus/camera/timelapsepro/i;->h:J

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/i;->setLayoutDirection(I)V

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070148

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/i;->d:I

    .line 50
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070146

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/i;->b:I

    .line 51
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070147

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/i;->c:I

    .line 53
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/i;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c1c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/i;->e:I

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/i;->f()V

    .line 63
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/i;->e()V

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/i;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    .line 70
    new-instance v0, Lcom/oplus/camera/ui/menu/OplusTextView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903bf

    .line 71
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setId(I)V

    const v2, 0x7f1006e6

    .line 72
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 73
    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextSize(IF)V

    .line 74
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    const v4, 0x7f06004d

    invoke-static {v3, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextColor(I)V

    .line 75
    iget v3, p0, Lcom/oplus/camera/timelapsepro/i;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/timelapsepro/i;->b:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oplus/camera/timelapsepro/i;->c:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    const v7, 0x7f06004c

    invoke-static {v6, v7}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/oplus/camera/ui/menu/OplusTextView;->setShadowLayer(FFFI)V

    .line 77
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v5, 0x7f0903be

    .line 78
    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    iget v2, p0, Lcom/oplus/camera/timelapsepro/i;->e:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 80
    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/timelapsepro/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0172

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/CameraTimeView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a()V

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->b()V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setNeedRelayout(Z)V

    .line 88
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x5

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c1d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e()V
    .locals 7

    .line 97
    new-instance v0, Lcom/oplus/camera/ui/menu/OplusTextView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903bd

    .line 98
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setId(I)V

    const v2, 0x7f100658

    .line 99
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 100
    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextSize(IF)V

    .line 101
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    const v3, 0x7f06004d

    invoke-static {v2, v3}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextColor(I)V

    .line 102
    iget v2, p0, Lcom/oplus/camera/timelapsepro/i;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/camera/timelapsepro/i;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/timelapsepro/i;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    const v6, 0x7f06004c

    invoke-static {v5, v6}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oplus/camera/ui/menu/OplusTextView;->setShadowLayer(FFFI)V

    .line 104
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    const v5, 0x7f0903be

    .line 105
    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 106
    iget v5, p0, Lcom/oplus/camera/timelapsepro/i;->e:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 107
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/timelapsepro/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0172

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/CameraTimeView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->f:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->f:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a()V

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->f:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setNeedRelayout(Z)V

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 115
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x7

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c1d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/i;->f:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f()V
    .locals 5

    .line 122
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903be

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    const v2, 0x7f060096

    invoke-static {v1, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c1b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 126
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "TimeLapseProRecordView"

    const-string v1, "resetTime."

    .line 149
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->f:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZ)V

    .line 152
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZ)V

    return-void
.end method

.method public a(JJZ)V
    .locals 3

    const-wide/32 v0, 0x157529ff

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    move-wide p1, v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->f:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0, p1, p2, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZ)V

    .line 138
    iget-wide v0, p0, Lcom/oplus/camera/timelapsepro/i;->h:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_1

    return-void

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTime, recordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", videoTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", showIndicator: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeLapseProRecordView"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-wide p3, p0, Lcom/oplus/camera/timelapsepro/i;->h:J

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/i;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZ)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->removeAllViews()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/i;->a:Landroid/content/Context;

    return-void
.end method

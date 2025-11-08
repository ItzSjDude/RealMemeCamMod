.class public Lcom/oplus/camera/ui/preview/ae;
.super Ljava/lang/Object;
.source "VideoRecordingTimeUI.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/RelativeLayout;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lcom/oplus/camera/ui/preview/CameraTimeView;

.field private h:Lcom/oplus/camera/ui/preview/CameraTimeView;

.field private i:J

.field private j:J

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    .line 34
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    .line 35
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/ae;->e:Z

    .line 36
    iput v1, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const-wide/16 v2, 0x0

    .line 40
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/ae;->i:J

    .line 41
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/ae;->j:J

    .line 42
    iput v1, p0, Lcom/oplus/camera/ui/preview/ae;->k:I

    .line 43
    iput v1, p0, Lcom/oplus/camera/ui/preview/ae;->l:I

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070813

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ae;->k:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/ae;)Lcom/oplus/camera/ui/preview/CameraTimeView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/ae;)Lcom/oplus/camera/ui/preview/CameraTimeView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    return-object p0
.end method

.method private e(Z)V
    .locals 11

    .line 52
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 59
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v7

    .line 60
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 63
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v9, 0x0

    const v10, 0x7f0c0149

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/CameraTimeView;

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 65
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ae;->f(Z)I

    move-result v6

    move v4, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(ZIIII)V

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ae;->l:I

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setScreenLayoutMode(I)V

    .line 71
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-nez p1, :cond_3

    .line 72
    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/CameraTimeView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ae;->l:I

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setScreenLayoutMode(I)V

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->measure(II)V

    .line 76
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    iget v3, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 77
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result p1

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getBlinkRecordIconWidth()I

    move-result v4

    sub-int/2addr p1, v4

    div-int/lit8 v6, p1, 0x2

    move v4, v7

    move v5, v0

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(ZIIII)V

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->measure(II)V

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    const/16 p1, 0xb4

    .line 81
    iget v0, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    if-ne p1, v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getBlinkRecordIconWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    .line 86
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getBlinkRecordIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    .line 89
    :goto_0
    new-instance p1, Lcom/oplus/camera/ui/preview/ae$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/ae$1;-><init>(Lcom/oplus/camera/ui/preview/ae;)V

    .line 99
    new-instance v0, Lcom/oplus/camera/ui/preview/ae$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/ae$2;-><init>(Lcom/oplus/camera/ui/preview/ae;)V

    .line 109
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setCameraTimeListener(Lcom/oplus/camera/ui/preview/CameraTimeView$a;)V

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setCameraTimeListener(Lcom/oplus/camera/ui/preview/CameraTimeView$a;)V

    :cond_3
    return-void
.end method

.method private f(Z)I
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ae;->j()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/oplus/camera/ui/preview/ae;->k:I

    add-int/2addr v0, v2

    .line 315
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/ae;->e:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    return v0

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xb4

    .line 318
    iget p0, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    if-ne v0, p0, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 321
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result p0

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_3
    return v1
.end method

.method private l()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->c()V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 136
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->c()V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 142
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(IIIZZZ)V
    .locals 7

    .line 160
    iput p1, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    .line 161
    iput-boolean p4, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    .line 162
    iput p3, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    .line 163
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ae;->l()V

    .line 164
    invoke-direct {p0, p5}, Lcom/oplus/camera/ui/preview/ae;->e(Z)V

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(IIIZZ)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v1, :cond_1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p6

    .line 171
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(IIIZZ)V

    :cond_1
    const-string p0, "VideoRecordingTimeUI"

    const-string p1, "CameraTest Video Shutter Timing Start"

    .line 174
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(IIZZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/ae;->a(IIZZZ)V

    return-void
.end method

.method public a(IIZZZ)V
    .locals 7

    .line 155
    iget v3, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/ae;->a(IIIZZZ)V

    return-void
.end method

.method public a(JJZ)V
    .locals 9

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 270
    invoke-virtual/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/ae;->a(JJZZJ)V

    return-void
.end method

.method public a(JJZZJ)V
    .locals 1

    .line 251
    iput-wide p1, p0, Lcom/oplus/camera/ui/preview/ae;->i:J

    .line 252
    iput-wide p3, p0, Lcom/oplus/camera/ui/preview/ae;->j:J

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v0, :cond_2

    if-nez p6, :cond_0

    .line 256
    invoke-virtual {v0, p1, p2, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZ)V

    goto :goto_0

    :cond_0
    sub-long/2addr p7, p1

    const-wide/16 p1, 0x12c

    cmp-long p1, p1, p7

    if-ltz p1, :cond_1

    const-wide/16 p7, 0x0

    :cond_1
    const/4 p1, 0x1

    .line 259
    invoke-virtual {v0, p7, p8, p5, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZZ)V

    .line 264
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p3, p4, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZ)V

    :cond_3
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;)V
    .locals 8

    .line 329
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/ae;->l:I

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;I)I

    move-result v3

    iget-boolean v5, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/preview/ae;->a(IIZZZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/preview/ae;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(ZZ)V

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p0, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/ae;->i:J

    .line 179
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/ae;->j:J

    return-void
.end method

.method public b(IIZZ)V
    .locals 10

    .line 197
    iget v0, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    if-ne v0, p2, :cond_0

    return-void

    .line 201
    :cond_0
    iput p2, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    .line 203
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    .line 204
    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->d()Z

    move-result p2

    if-nez p2, :cond_1

    .line 205
    iget v1, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    move-object v0, p0

    move v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/ae;->a(IIZZZ)V

    .line 208
    :cond_1
    iget-wide v5, p0, Lcom/oplus/camera/ui/preview/ae;->i:J

    iget-wide v7, p0, Lcom/oplus/camera/ui/preview/ae;->j:J

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/camera/ui/preview/ae;->a(JJZ)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 0

    .line 212
    iget p0, p0, Lcom/oplus/camera/ui/preview/ae;->f:I

    return p0
.end method

.method public c(Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ae;->f(Z)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "onPause"

    .line 216
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->clearAnimation()V

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->h:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->clearAnimation()V

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ae;->l()V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ae;->e:Z

    return-void
.end method

.method public e()I
    .locals 0

    .line 232
    iget p0, p0, Lcom/oplus/camera/ui/preview/ae;->c:I

    return p0
.end method

.method public f()Z
    .locals 0

    .line 236
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ae;->d:Z

    return p0
.end method

.method public g()V
    .locals 6

    .line 246
    iget-wide v1, p0, Lcom/oplus/camera/ui/preview/ae;->i:J

    iget-wide v3, p0, Lcom/oplus/camera/ui/preview/ae;->j:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/ae;->a(JJZ)V

    return-void
.end method

.method public h()Z
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->a:Landroid/app/Activity;

    return-void
.end method

.method public j()I
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->measure(II)V

    .line 290
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k()Z
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae;->g:Lcom/oplus/camera/ui/preview/CameraTimeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

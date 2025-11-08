.class public Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;
.super Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;
.source "CameraDrawerSettingMenuPanel.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$c;


# instance fields
.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Lcom/oplus/camera/ui/inverse/InverseImageView;

.field private m:F

.field private n:F

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->h:I

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->i:I

    .line 49
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->j:Z

    .line 50
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->k:Z

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->m:F

    .line 53
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n:F

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->o:I

    .line 55
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    .line 63
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->j:Z

    return p0
.end method

.method public static synthetic lambda$CS8_kezgfoN5lpFJV38UVGY2s6A(Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->r()V

    return-void
.end method

.method private p()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->h:I

    .line 68
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->i:I

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->o:I

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n:F

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setClipChildren(Z)V

    return-void
.end method

.method private q()V
    .locals 4

    .line 112
    new-instance v0, Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    .line 113
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setId(I)V

    .line 114
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 115
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070416

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070418

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    const v2, 0x7f0803cc

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setImageResource(I)V

    .line 119
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->addView(Landroid/view/View;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 303
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setOffset(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/menu/h;IZ)V
    .locals 8

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    .line 78
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n()V

    .line 79
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 81
    iput p4, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->g:I

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setMotionEventSplittingEnabled(Z)V

    .line 83
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->getMenuPanelOptionList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 87
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 88
    invoke-interface {p4}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/camera/entry/b;->J()I

    move-result p4

    .line 87
    invoke-static {p2, p4}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/oplus/camera/ui/menu/h;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/b;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getCameraId()I

    move-result p5

    invoke-static {p2, p5}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 92
    new-instance p2, Lcom/oplus/camera/ui/menu/setting/g;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->g:I

    move-object v0, p2

    move-object v3, p4

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/setting/g;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;)V

    .line 94
    sget-object p5, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->f:Landroid/content/Context;

    invoke-virtual {p5, v0, p2}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 95
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/g;->b()V

    const/16 p5, 0x8

    .line 96
    invoke-virtual {p2, p5}, Lcom/oplus/camera/ui/menu/setting/g;->a(I)V

    .line 97
    iget-object p5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p5, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/g;->a(Landroid/view/ViewGroup;)V

    .line 99
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/b;->getOptionTitle()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/b;->getOptionKey()Ljava/lang/String;

    move-result-object p2

    const-string p4, "pref_setting_key"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->q()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->j:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_video_size_key"

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 208
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_fps_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lcom/oplus/camera/ui/menu/setting/g;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/setting/g;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 310
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 136
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->j:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->b:Z

    if-eqz p1, :cond_3

    sub-int/2addr p4, p2

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070415

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    const/4 p1, 0x0

    move p3, p2

    move p2, p1

    .line 141
    :goto_0
    iget-object p5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_3

    .line 142
    iget-object p5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p5, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 148
    invoke-virtual {p5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 149
    invoke-virtual {p5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v0

    .line 151
    invoke-virtual {p5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_setting_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    add-float/2addr p3, v1

    .line 153
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p4, v2

    div-int/lit8 v2, v2, 0x2

    float-to-int v3, p3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    .line 154
    invoke-virtual {v4}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    .line 155
    invoke-virtual {v5}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 153
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oplus/camera/ui/inverse/InverseImageView;->layout(IIII)V

    .line 156
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p3, v1

    .line 157
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    int-to-float v1, v1

    add-float/2addr p3, v1

    :cond_1
    float-to-int v1, p3

    int-to-float v0, v0

    add-float v2, p3, v0

    float-to-int v2, v2

    .line 160
    invoke-virtual {p5, p1, v1, p4, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    .line 161
    iget p5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n:F

    add-float/2addr v0, p5

    add-float/2addr p3, v0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 170
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    .line 172
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move v0, v1

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    .line 178
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 179
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 180
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 181
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0, v1, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->measureChild(Landroid/view/View;II)V

    .line 187
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v0, p2

    .line 188
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p2

    .line 189
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, p2

    :cond_2
    if-eqz v0, :cond_3

    int-to-float p2, v0

    .line 193
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070415

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 194
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    move v0, p2

    .line 197
    :cond_3
    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    .line 200
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 201
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->onMeasure(II)V

    return-void
.end method

.method public setOffset(F)V
    .locals 14

    .line 231
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->m:F

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 235
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070415

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/4 v3, 0x0

    int-to-float v4, v3

    add-float/2addr v4, v1

    float-to-int v4, v4

    .line 240
    iget v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->o:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    const/4 v5, 0x1

    move v6, v4

    move v7, v5

    move v4, v1

    move v1, v3

    .line 242
    :goto_0
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 243
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/16 v9, 0x8

    .line 249
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 250
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v9

    .line 252
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v10

    const-string v11, "pref_setting_key"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    if-eqz v10, :cond_1

    .line 253
    invoke-virtual {v10}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    add-float/2addr v4, v10

    .line 254
    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v10}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v10

    .line 255
    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-static {p1, v2, v11}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setAlpha(F)V

    .line 256
    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v10}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v10

    .line 257
    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v10}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    add-float/2addr v4, v10

    .line 258
    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->l:Lcom/oplus/camera/ui/inverse/InverseImageView;

    int-to-float v12, v6

    sub-float/2addr v12, v4

    iget v13, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->o:I

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v10, v3, v12}, Lcom/oplus/camera/ui/inverse/InverseImageView;->scrollTo(II)V

    .line 261
    :cond_1
    iget-object v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    if-eq v1, v10, :cond_4

    iget-boolean v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->k:Z

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x3

    .line 266
    iget v12, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->p:I

    if-ne v10, v12, :cond_3

    const/4 v10, 0x2

    if-ne v10, v7, :cond_3

    .line 267
    iget v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->i:I

    goto :goto_1

    .line 269
    :cond_3
    iget v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->h:I

    :goto_1
    int-to-float v10, v10

    .line 272
    iget v12, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->o:I

    add-int/2addr v12, v6

    sub-int/2addr v12, v0

    int-to-float v12, v12

    sub-float/2addr v12, v10

    .line 273
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v12, v10

    div-float/2addr v10, v12

    invoke-virtual {v8, v10}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(F)V

    goto :goto_3

    .line 262
    :cond_4
    :goto_2
    invoke-static {p1, v2, v11}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result v10

    invoke-virtual {v8, v10}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(F)V

    .line 276
    :goto_3
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v10

    int-to-float v12, v6

    sub-float/2addr v12, v4

    iget v13, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->o:I

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v10, v3, v12}, Landroid/view/View;->scrollTo(II)V

    .line 278
    invoke-static {v11, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_5

    .line 279
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_5

    .line 280
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 283
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_5

    .line 284
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setOffset, reSetOffset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->m:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CameraDrawerSettingMenuPanel"

    invoke-static {v11, v10}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v8

    new-instance v10, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraDrawerSettingMenuPanel$CS8_kezgfoN5lpFJV38UVGY2s6A;

    invoke-direct {v10, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraDrawerSettingMenuPanel$CS8_kezgfoN5lpFJV38UVGY2s6A;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    int-to-float v8, v9

    .line 291
    iget v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->n:F

    add-float/2addr v8, v10

    mul-float/2addr v8, p1

    add-float/2addr v4, v8

    add-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v10

    float-to-int v6, v6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 298
    :cond_7
    iput-boolean v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->k:Z

    :cond_8
    return-void
.end method

.method public setPendingDrawerGuideAni(Ljava/lang/Runnable;)V
    .locals 1

    .line 217
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel$1;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

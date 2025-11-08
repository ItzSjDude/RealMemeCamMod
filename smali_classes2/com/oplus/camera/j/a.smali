.class public Lcom/oplus/camera/j/a;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/j/a$a;,
        Lcom/oplus/camera/j/a$c;,
        Lcom/oplus/camera/j/a$b;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[Landroid/net/Uri;

.field private static e:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private f:Lcom/oplus/camera/ComboPreferences;

.field private g:Lcom/oplus/camera/ui/s;

.field private h:Lcom/oplus/camera/ui/s;

.field private i:Lcom/oplus/camera/ui/s;

.field private j:Lcom/oplus/camera/ui/s;

.field private k:Lcom/oplus/camera/ui/s;

.field private l:Lcom/oplus/camera/ui/s;

.field private m:Landroid/app/Dialog;

.field private n:Landroid/app/Dialog;

.field private o:Landroid/app/Dialog;

.field private p:Landroidx/recyclerview/widget/RecyclerView;

.field private q:Lcom/oplus/camera/longexposure/a;

.field private r:Landroidx/viewpager2/widget/ViewPager2;

.field private s:Lcom/coui/appcompat/widget/COUIPageIndicator;

.field private t:Lcom/oplus/camera/ui/widget/TextureVideoView;

.field private u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

.field private v:Landroid/widget/ImageView;

.field private w:Ljava/lang/Thread;

.field private x:Lcom/coui/appcompat/widget/popupwindow/b$a;

.field private y:Lcom/oplus/camera/ui/CameraUIListener;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 108
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oplus/camera/j/a;->a:[I

    .line 110
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oplus/camera/j/a;->b:[I

    .line 112
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oplus/camera/j/a;->c:[I

    .line 114
    new-array v0, v0, [Landroid/net/Uri;

    sput-object v0, Lcom/oplus/camera/j/a;->d:[Landroid/net/Uri;

    const-string v0, "CommonBottomGuide"

    .line 120
    sput-object v0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100200
        0x7f100201
        0x7f1001ff
    .end array-data

    :array_1
    .array-data 4
        0x7f0804cb
        0x7f0804cc
        0x7f0804ca
    .end array-data

    :array_2
    .array-data 4
        0x7f10012c
        0x7f10012d
        0x7f10012e
    .end array-data
.end method

.method public constructor <init>(Lcom/oplus/camera/ComboPreferences;Lcom/coui/appcompat/widget/popupwindow/b$a;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/oplus/camera/j/a;->f:Lcom/oplus/camera/ComboPreferences;

    .line 123
    iput-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    .line 124
    iput-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    .line 125
    iput-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    .line 126
    iput-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    .line 127
    iput-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    .line 128
    iput-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    .line 129
    iput-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    .line 130
    iput-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    .line 131
    iput-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    .line 132
    iput-object v0, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    iput-object v0, p0, Lcom/oplus/camera/j/a;->q:Lcom/oplus/camera/longexposure/a;

    .line 134
    iput-object v0, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 135
    iput-object v0, p0, Lcom/oplus/camera/j/a;->s:Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 136
    iput-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    .line 137
    iput-object v0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    .line 138
    iput-object v0, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    .line 139
    iput-object v0, p0, Lcom/oplus/camera/j/a;->w:Ljava/lang/Thread;

    .line 140
    iput-object v0, p0, Lcom/oplus/camera/j/a;->x:Lcom/coui/appcompat/widget/popupwindow/b$a;

    .line 141
    iput-object v0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    .line 142
    iput-object v0, p0, Lcom/oplus/camera/j/a;->z:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lcom/oplus/camera/j/a;->A:J

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/oplus/camera/j/a;->B:I

    .line 145
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->C:Z

    .line 146
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->D:Z

    .line 147
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->E:Z

    .line 150
    iput-object p1, p0, Lcom/oplus/camera/j/a;->f:Lcom/oplus/camera/ComboPreferences;

    .line 151
    iput-object p2, p0, Lcom/oplus/camera/j/a;->x:Lcom/coui/appcompat/widget/popupwindow/b$a;

    .line 152
    iput-object p3, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/j/a;->z:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 155
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/j/a;->z:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;J)J
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/oplus/camera/j/a;->A:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method private a(Landroidx/viewpager2/widget/ViewPager2;I)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;
    .locals 1

    .line 978
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 979
    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 982
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-le p2, p1, :cond_1

    goto :goto_1

    .line 986
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const p1, 0x7f09040f

    .line 990
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;Landroidx/viewpager2/widget/ViewPager2;I)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/j/a;->a(Landroidx/viewpager2/widget/ViewPager2;I)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    return-object p1
.end method

.method private a(Landroid/app/Activity;II)Lcom/oplus/camera/ui/s;
    .locals 3

    .line 1101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c7

    .line 1102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1103
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090083

    .line 1104
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1105
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090084

    .line 1106
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/anim/EffectiveAnimationView;

    .line 1107
    sget-object p3, Lcom/oplus/anim/n;->HARDWARE:Lcom/oplus/anim/n;

    invoke-virtual {p2, p3}, Lcom/oplus/anim/EffectiveAnimationView;->setRenderMode(Lcom/oplus/anim/n;)V

    const-string p3, "mode_arrage_guide.json"

    .line 1108
    invoke-static {p1, p3}, Lcom/oplus/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p3

    .line 1110
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_3

    .line 1111
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "mode_arrange_guide_rack.json"

    .line 1123
    invoke-static {p1, p3}, Lcom/oplus/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, "mode_arrange_guide_split.json"

    .line 1119
    invoke-static {p1, p3}, Lcom/oplus/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string p3, "mode_arrange_guide_full.json"

    .line 1115
    invoke-static {p1, p3}, Lcom/oplus/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/f;

    move-result-object p3

    .line 1130
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/oplus/camera/j/a;->a(ILandroid/view/View;Landroid/app/Activity;)V

    .line 1133
    :cond_3
    new-instance p1, Lcom/oplus/camera/j/a$14;

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/j/a$14;-><init>(Lcom/oplus/camera/j/a;Lcom/oplus/anim/EffectiveAnimationView;)V

    invoke-virtual {p3, p1}, Lcom/oplus/anim/f;->a(Lcom/oplus/anim/c;)Lcom/oplus/anim/f;

    .line 1140
    new-instance p1, Lcom/oplus/camera/ui/s;

    iget-object p0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {p1, v0, p0}, Lcom/oplus/camera/ui/s;-><init>(Landroid/view/View;Lcom/oplus/camera/ui/CameraUIListener;)V

    return-object p1
.end method

.method private a(Landroid/app/Activity;III)Lcom/oplus/camera/ui/s;
    .locals 4

    .line 1041
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901bb

    .line 1042
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f090085

    .line 1043
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1044
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f090083

    .line 1046
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v3, p4, :cond_0

    .line 1049
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 p4, 0x8

    .line 1052
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1055
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1056
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1058
    new-instance p1, Lcom/oplus/camera/ui/s;

    iget-object p0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {p1, v0, p0}, Lcom/oplus/camera/ui/s;-><init>(Landroid/view/View;Lcom/oplus/camera/ui/CameraUIListener;)V

    return-object p1
.end method

.method private a(Landroid/app/Activity;I[I[I)Lcom/oplus/camera/ui/s;
    .locals 1

    .line 1063
    new-instance v0, Lcom/oplus/camera/j/a$c;

    invoke-direct {v0, p3, p4}, Lcom/oplus/camera/j/a$c;-><init>([I[I)V

    .line 1064
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1065
    new-instance p2, Lcom/oplus/camera/ui/s;

    iget-object p3, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {p2, p1, p3}, Lcom/oplus/camera/ui/s;-><init>(Landroid/view/View;Lcom/oplus/camera/ui/CameraUIListener;)V

    const p3, 0x7f0901b8

    .line 1066
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    const/4 p4, 0x2

    .line 1067
    invoke-virtual {p3, p4}, Landroidx/viewpager2/widget/ViewPager2;->setOverScrollMode(I)V

    .line 1068
    invoke-virtual {p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const p4, 0x7f0901b9

    .line 1069
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 1070
    invoke-virtual {v0}, Lcom/oplus/camera/j/a$c;->getItemCount()I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setDotsCount(I)V

    .line 1072
    new-instance p4, Lcom/oplus/camera/j/a$13;

    invoke-direct {p4, p0, p1}, Lcom/oplus/camera/j/a$13;-><init>(Lcom/oplus/camera/j/a;Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    invoke-virtual {p3, p4}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 1093
    new-instance p0, Lcom/oplus/camera/j/-$$Lambda$a$FACW_vYi5yynUMHixE2LrkteMFU;

    invoke-direct {p0, p3}, Lcom/oplus/camera/j/-$$Lambda$a$FACW_vYi5yynUMHixE2LrkteMFU;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setOnDotClickListener(Lcom/coui/appcompat/widget/COUIPageIndicator$a;)V

    return-object p2
.end method

.method private synthetic a(I)V
    .locals 0

    .line 950
    iget-object p0, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    const/16 v3, 0x5a

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1169
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    const/4 v4, -0x1

    invoke-direct {p1, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1171
    iget-object p0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p0

    if-ne p0, v3, :cond_1

    .line 1172
    invoke-virtual {p2, v1}, Landroid/view/View;->setRotation(F)V

    const/4 p0, 0x3

    .line 1173
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 1175
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setRotation(F)V

    const/4 p0, 0x5

    .line 1176
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1179
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f0901c6

    .line 1180
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    .line 1182
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 1183
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1184
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1185
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f090084

    .line 1187
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1188
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1189
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0709ec

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1190
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1191
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0709d3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1192
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1146
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 1150
    :cond_3
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    .line 1151
    sget p3, Lcom/oplus/camera/screen/f;->a:I

    .line 1152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sub-int/2addr p3, p1

    neg-int p1, p3

    .line 1153
    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1154
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1155
    div-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1156
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1158
    iget-object p1, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    if-ne v3, p1, :cond_4

    .line 1159
    invoke-virtual {p2, v1}, Landroid/view/View;->setRotation(F)V

    .line 1160
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    const/16 p1, 0x10e

    .line 1161
    iget-object p0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p0

    if-ne p1, p0, :cond_5

    .line 1162
    invoke-virtual {p2, v2}, Landroid/view/View;->setRotation(F)V

    .line 1163
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1472
    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "mode_arrange_reddot_show"

    const/4 v0, 0x0

    .line 1473
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Landroid/app/Dialog;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1319
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1320
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    int-to-float p1, p2

    .line 1321
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1467
    iget-object p1, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7

    .line 997
    new-instance v6, Lcom/oplus/camera/j/a$b;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/j/a$b;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 998
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/oplus/camera/j/a;->w:Ljava/lang/Thread;

    .line 999
    iget-object p0, p0, Lcom/oplus/camera/j/a;->w:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4

    .line 438
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 439
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x28

    .line 441
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 444
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    .line 445
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    invoke-static {v0}, Landroidx/core/f/a;->a(Z)Landroidx/core/f/a;

    move-result-object p0

    .line 451
    sget-object v0, Landroidx/core/f/e;->e:Landroidx/core/f/d;

    invoke-virtual {p0, v2, v0}, Landroidx/core/f/a;->a(Ljava/lang/CharSequence;Landroidx/core/f/d;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 452
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 456
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    sget-object p1, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setRtlProfessionalTitleText error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroidx/fragment/app/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Landroidx/fragment/app/b;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/b;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p1}, Landroidx/fragment/app/b;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    .line 312
    invoke-virtual {p1}, Landroidx/fragment/app/b;->dismiss()V

    :cond_0
    return-void
.end method

.method private a(Landroidx/fragment/app/b;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1327
    invoke-virtual {p1}, Landroidx/fragment/app/b;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1329
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1330
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    int-to-float p1, p2

    .line 1331
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/j/a;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/oplus/camera/j/a;->D:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->f:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method private b(Landroid/app/Dialog;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 320
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 834
    iget-object p1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    return-void
.end method

.method private static synthetic b(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    .line 1094
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    return-object p1
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 788
    iget-object p1, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/widget/TextureVideoView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    return-object p0
.end method

.method private d(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 331
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1101b7

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    .line 332
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v0, 0x7f0c005b

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 333
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 334
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 335
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    .line 338
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bM()I

    move-result v0

    .line 341
    rem-int/lit16 v1, v0, 0xb4

    if-eqz v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f0902d8

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    .line 346
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    if-eqz v0, :cond_1

    .line 351
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 352
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 353
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 354
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_1
    if-eqz p1, :cond_2

    .line 359
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 360
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 361
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 362
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v1, 0x7f0901f9

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/oplus/camera/j/a$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/j/a$1;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f0903e8

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/widget/TextView;)V

    .line 376
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f0903ec

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/widget/TextView;)V

    .line 377
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f0903ef

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/widget/TextView;)V

    .line 378
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f0903ed

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/widget/TextView;)V

    .line 379
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f0903f0

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/widget/TextView;)V

    .line 381
    invoke-direct {p0}, Lcom/oplus/camera/j/a;->i()Z

    move-result p1

    const v2, 0x7f0903ea

    if-eqz p1, :cond_3

    .line 382
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/widget/TextView;)V

    .line 385
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/j/a;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    .line 386
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v3, 0x7f0903e9

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const v2, 0x7f090381

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 390
    new-instance v2, Lcom/oplus/camera/j/a$12;

    invoke-direct {v2, p0}, Lcom/oplus/camera/j/a$12;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 405
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    const/16 v2, 0x5a

    if-ne v2, v0, :cond_5

    .line 409
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    iput v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    goto :goto_1

    :cond_5
    const/16 v2, 0x10e

    if-ne v2, v0, :cond_6

    .line 411
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    iput v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    .line 413
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 415
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 418
    :cond_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    iput v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    .line 422
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 424
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Dialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    .line 431
    :cond_8
    sget-object p0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProfessionalParameterBottomGuide, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 523
    iget-object p1, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    return-object p0
.end method

.method private e(Landroid/app/Activity;)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    if-nez v0, :cond_0

    const v0, 0x7f0c005a

    const v1, 0x7f1006d9

    const v2, 0x7f100627

    .line 464
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;III)Lcom/oplus/camera/ui/s;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 468
    new-instance v1, Lcom/oplus/camera/j/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oplus/camera/j/a$a;-><init>(Lcom/oplus/camera/j/a$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 470
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$-6t9oV8odGoNwtWwnveaxwn1wlQ;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$-6t9oV8odGoNwtWwnveaxwn1wlQ;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s$a;)V

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/a$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/a$17;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object p0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "showNightTripodBottomGuide"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    .line 497
    iget-object p1, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/popupwindow/b$a;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->x:Lcom/coui/appcompat/widget/popupwindow/b$a;

    return-object p0
.end method

.method private f(Landroid/app/Activity;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->o(Landroid/app/Activity;)Lcom/oplus/camera/ui/s;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$1M7jQtsmqnjbSz_U4xrvfeoYtUk;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$1M7jQtsmqnjbSz_U4xrvfeoYtUk;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s$a;)V

    .line 501
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/a$18;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/a$18;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object p0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "showMakeupBottomGuide"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 472
    iget-object p1, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/j/a;)Landroid/os/Handler;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->z:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Landroid/app/Activity;)V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    if-nez v0, :cond_0

    const v0, 0x7f0c0055

    .line 518
    sget-object v1, Lcom/oplus/camera/j/a;->a:[I

    sget-object v2, Lcom/oplus/camera/j/a;->b:[I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I[I[I)Lcom/oplus/camera/ui/s;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$VtXUHbd8H7d2BwCsP8oKrhE7SLU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$VtXUHbd8H7d2BwCsP8oKrhE7SLU;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s$a;)V

    .line 527
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/a$19;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/a$19;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    iget-object p0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "showIdPhotoBottomGuide"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/j/a;)Landroid/widget/ImageView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h(Landroid/app/Activity;)V
    .locals 3

    .line 543
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1101b7

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    .line 544
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 545
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 546
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 547
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 551
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 552
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x7f1101b6

    .line 553
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 554
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 557
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->i(Landroid/app/Activity;)V

    .line 558
    iget-object p1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    new-instance v0, Lcom/oplus/camera/j/a$20;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j/a$20;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 565
    iget-object p1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const v0, 0x7f0901f9

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/j/a$21;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j/a$21;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object p1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const v0, 0x7f090381

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 576
    new-instance v0, Lcom/oplus/camera/j/a$22;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j/a$22;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 591
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 593
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    iput v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 598
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Dialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 600
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    .line 605
    :cond_2
    sget-object p0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLongExposureParameterBottomGuide, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private i(Landroid/app/Activity;)V
    .locals 4

    .line 611
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 612
    iget-object v0, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipChildren(Z)V

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 615
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->k(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/j/a;->q:Lcom/oplus/camera/longexposure/a;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/oplus/camera/longexposure/a;

    invoke-direct {v0, p1}, Lcom/oplus/camera/longexposure/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/camera/j/a;->q:Lcom/oplus/camera/longexposure/a;

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/oplus/camera/j/a;->q:Lcom/oplus/camera/longexposure/a;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method private i()Z
    .locals 0

    const-string p0, "com.oplus.feature.professional.super.raw.support"

    .line 326
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/j/a;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/oplus/camera/j/a;->D:Z

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/j/a;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method private j(Landroid/app/Activity;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/camera/longexposure/b;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    new-instance v0, Lcom/oplus/camera/longexposure/b;

    const v1, 0x7f100225

    .line 627
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1005e6

    .line 628
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080428

    .line 629
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 626
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v0, Lcom/oplus/camera/longexposure/b;

    const v1, 0x7f100226

    .line 631
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1005e7

    .line 632
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080429

    .line 633
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v0, Lcom/oplus/camera/longexposure/b;

    const v1, 0x7f100227

    .line 635
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1005e9

    .line 636
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08042a

    .line 637
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private synthetic j()V
    .locals 2

    .line 1466
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$0GIqP9J_wosn9_UMppyDJMDLmbs;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$0GIqP9J_wosn9_UMppyDJMDLmbs;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/j/a;)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/oplus/camera/j/a;->A:J

    return-wide v0
.end method

.method private k(Landroid/app/Activity;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/camera/longexposure/b;",
            ">;"
        }
    .end annotation

    .line 643
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->j(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p0

    const-string v0, "com.oplus.long.exposure.scene.type.array"

    .line 644
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_6

    .line 647
    array-length v1, v0

    if-lez v1, :cond_6

    if-eqz p0, :cond_0

    .line 648
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 652
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    goto/16 :goto_1

    .line 683
    :cond_1
    new-instance v3, Lcom/oplus/camera/longexposure/b;

    const v5, 0x7f10022b

    .line 684
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1005eb

    .line 685
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08042b

    .line 686
    invoke-virtual {p1, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 683
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 676
    :cond_2
    new-instance v3, Lcom/oplus/camera/longexposure/b;

    const v5, 0x7f100227

    .line 677
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1005e9

    .line 678
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08042a

    .line 679
    invoke-virtual {p1, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 676
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 669
    :cond_3
    new-instance v3, Lcom/oplus/camera/longexposure/b;

    const v5, 0x7f100226

    .line 670
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1005e7

    .line 671
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080429

    .line 672
    invoke-virtual {p1, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 669
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 662
    :cond_4
    new-instance v3, Lcom/oplus/camera/longexposure/b;

    const v5, 0x7f100225

    .line 663
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1005e6

    .line 664
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080428

    .line 665
    invoke-virtual {p1, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 662
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 655
    :cond_5
    new-instance v3, Lcom/oplus/camera/longexposure/b;

    const v5, 0x7f100229

    .line 656
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1005ea

    .line 657
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08042c

    .line 658
    invoke-virtual {p1, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oplus/camera/longexposure/b;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 655
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p0
.end method

.method private synthetic k()V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$Hs4ow8r9eePT0cm43rzkak4YVYQ;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$Hs4ow8r9eePT0cm43rzkak4YVYQ;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic l()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$ZxjjRibKgFaoVG__GBJcVj6MNHo;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$ZxjjRibKgFaoVG__GBJcVj6MNHo;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l(Landroid/app/Activity;)V
    .locals 11

    const v0, 0x7f0c0054

    const v1, 0x7f1004d0

    const v2, 0x7f1005cf

    .line 699
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;III)Lcom/oplus/camera/ui/s;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    .line 701
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09040f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/TextureVideoView;

    iput-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    .line 702
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 707
    new-instance v2, Lcom/oplus/camera/j/a$23;

    invoke-direct {v2, p0}, Lcom/oplus/camera/j/a$23;-><init>(Lcom/oplus/camera/j/a;)V

    .line 717
    new-instance v6, Lcom/oplus/camera/j/a$2;

    invoke-direct {v6, p0, p1}, Lcom/oplus/camera/j/a$2;-><init>(Lcom/oplus/camera/j/a;Landroid/app/Activity;)V

    .line 726
    new-instance v3, Lcom/oplus/camera/j/a$3;

    invoke-direct {v3, p0}, Lcom/oplus/camera/j/a$3;-><init>(Lcom/oplus/camera/j/a;)V

    .line 739
    iget-object v5, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 740
    iget-object v5, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    new-instance v8, Lcom/oplus/camera/j/a$a;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/oplus/camera/j/a$a;-><init>(Lcom/oplus/camera/j/a$1;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 741
    iget-object v5, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x106000d

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOutlineSpotShadowColor(I)V

    .line 743
    iget-object v5, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setEnabled(Z)V

    .line 744
    iget-object v5, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance v10, Lcom/oplus/camera/j/a$a;

    invoke-direct {v10, v9}, Lcom/oplus/camera/j/a$a;-><init>(Lcom/oplus/camera/j/a$1;)V

    invoke-virtual {v5, v10}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 745
    iget-object v5, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v5, v7}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setClipToOutline(Z)V

    .line 746
    iget-object v5, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v5, v4}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 747
    iget-object v5, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance v7, Lcom/oplus/camera/j/a$4;

    invoke-direct {v7, p0, v0, v1, v2}, Lcom/oplus/camera/j/a$4;-><init>(Lcom/oplus/camera/j/a;JLjava/lang/Runnable;)V

    invoke-virtual {v5, v7}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 763
    iget-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance v1, Lcom/oplus/camera/j/a$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/a$5;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 777
    iget-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance v1, Lcom/oplus/camera/j/a$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/a$6;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 786
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$0iMX4jyKt8eDfyBKgkPVyYxlhb4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$0iMX4jyKt8eDfyBKgkPVyYxlhb4;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s$a;)V

    .line 792
    iput-boolean v8, p0, Lcom/oplus/camera/j/a;->D:Z

    .line 793
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/a$7;

    invoke-direct {v1, p0, v3}, Lcom/oplus/camera/j/a$7;-><init>(Lcom/oplus/camera/j/a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 821
    iget-object v2, p0, Lcom/oplus/camera/j/a;->v:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oplus/camera/j/a;->z:Landroid/os/Handler;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/j/a;->a(Landroid/widget/ImageView;Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/j/a;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/oplus/camera/j/a;->C:Z

    return p0
.end method

.method public static synthetic lambda$-6t9oV8odGoNwtWwnveaxwn1wlQ(Lcom/oplus/camera/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/j/a;->o()V

    return-void
.end method

.method public static synthetic lambda$0GIqP9J_wosn9_UMppyDJMDLmbs(Lcom/oplus/camera/j/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$0iMX4jyKt8eDfyBKgkPVyYxlhb4(Lcom/oplus/camera/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/j/a;->l()V

    return-void
.end method

.method public static synthetic lambda$1M7jQtsmqnjbSz_U4xrvfeoYtUk(Lcom/oplus/camera/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/j/a;->n()V

    return-void
.end method

.method public static synthetic lambda$3OmpZ2qhqPLhLksDR0qjSSJ9ig4(Lcom/oplus/camera/j/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$FACW_vYi5yynUMHixE2LrkteMFU(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/j/a;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    return-void
.end method

.method public static synthetic lambda$FcTA2FNmiiB6Yf8tAVsnh5yy-Nc(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$Hs4ow8r9eePT0cm43rzkak4YVYQ(Lcom/oplus/camera/j/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$RZhUdy5W-PUipRCC-bAInUltETc(Lcom/oplus/camera/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/j/a;->k()V

    return-void
.end method

.method public static synthetic lambda$TbfY8TVF90n85sFBRpBVSCX_KEU(Lcom/oplus/camera/j/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->a(I)V

    return-void
.end method

.method public static synthetic lambda$VtXUHbd8H7d2BwCsP8oKrhE7SLU(Lcom/oplus/camera/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/j/a;->m()V

    return-void
.end method

.method public static synthetic lambda$ZxjjRibKgFaoVG__GBJcVj6MNHo(Lcom/oplus/camera/j/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$i6OrcszzdMsv4IRziDTLrV1rg-g(Lcom/oplus/camera/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/j/a;->j()V

    return-void
.end method

.method public static synthetic lambda$iSU3WfyJKlfazsV4Ws9aMQrRlVU(Lcom/oplus/camera/j/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ql4HwBFRIQZZ8Jq4CT11fqaDzAk(Lcom/oplus/camera/j/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    return-object p0
.end method

.method private synthetic m()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$iSU3WfyJKlfazsV4Ws9aMQrRlVU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$iSU3WfyJKlfazsV4Ws9aMQrRlVU;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m(Landroid/app/Activity;)V
    .locals 2

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/j/a;->A:J

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->C:Z

    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->E:Z

    .line 829
    iget-object v1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    if-nez v1, :cond_0

    .line 830
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->n(Landroid/app/Activity;)Lcom/oplus/camera/ui/s;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    .line 832
    iget-object p1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    new-instance v0, Lcom/oplus/camera/j/-$$Lambda$a$RZhUdy5W-PUipRCC-bAInUltETc;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j/-$$Lambda$a$RZhUdy5W-PUipRCC-bAInUltETc;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s$a;)V

    .line 838
    iget-object p1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    new-instance v0, Lcom/oplus/camera/j/a$8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j/a$8;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 864
    iget-object p1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    new-instance v0, Lcom/oplus/camera/j/a$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j/a$9;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    .line 875
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_1

    .line 876
    invoke-virtual {v1, v0, v0}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    .line 877
    iget-object v1, p0, Lcom/oplus/camera/j/a;->s:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setCurrentPosition(I)V

    .line 879
    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    iget-object p0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "showDoubleExposureBottomGuide"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/COUIPageIndicator;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->s:Lcom/coui/appcompat/widget/COUIPageIndicator;

    return-object p0
.end method

.method private n(Landroid/app/Activity;)Lcom/oplus/camera/ui/s;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/oplus/camera/j/a;->d:[Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f0016

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 889
    sget-object v0, Lcom/oplus/camera/j/a;->d:[Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f0017

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 891
    sget-object v0, Lcom/oplus/camera/j/a;->d:[Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f0018

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 893
    new-instance v0, Lcom/oplus/camera/j/b;

    sget-object v1, Lcom/oplus/camera/j/a;->c:[I

    sget-object v2, Lcom/oplus/camera/j/a;->d:[Landroid/net/Uri;

    invoke-direct {v0, p1, v1, v2}, Lcom/oplus/camera/j/b;-><init>(Landroid/content/Context;[I[Landroid/net/Uri;)V

    .line 895
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0053

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901b8

    .line 897
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v2, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 898
    iget-object v2, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 899
    iget-object v2, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    const v2, 0x7f0901b9

    .line 900
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUIPageIndicator;

    iput-object v2, p0, Lcom/oplus/camera/j/a;->s:Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 901
    iget-object v2, p0, Lcom/oplus/camera/j/a;->s:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {v0}, Lcom/oplus/camera/j/b;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setDotsCount(I)V

    .line 903
    iget-object v2, p0, Lcom/oplus/camera/j/a;->r:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/oplus/camera/j/a$10;

    invoke-direct {v3, p0, v0}, Lcom/oplus/camera/j/a$10;-><init>(Lcom/oplus/camera/j/a;Lcom/oplus/camera/j/b;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 949
    iget-object v2, p0, Lcom/oplus/camera/j/a;->s:Lcom/coui/appcompat/widget/COUIPageIndicator;

    new-instance v3, Lcom/oplus/camera/j/-$$Lambda$a$TbfY8TVF90n85sFBRpBVSCX_KEU;

    invoke-direct {v3, p0}, Lcom/oplus/camera/j/-$$Lambda$a$TbfY8TVF90n85sFBRpBVSCX_KEU;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setOnDotClickListener(Lcom/coui/appcompat/widget/COUIPageIndicator$a;)V

    .line 953
    new-instance v2, Lcom/oplus/camera/j/a$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/oplus/camera/j/a$11;-><init>(Lcom/oplus/camera/j/a;Lcom/oplus/camera/j/b;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/j/b;->a(Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;)V

    .line 972
    new-instance p1, Lcom/oplus/camera/ui/s;

    iget-object p0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {p1, v1, p0}, Lcom/oplus/camera/ui/s;-><init>(Landroid/view/View;Lcom/oplus/camera/ui/CameraUIListener;)V

    return-object p1
.end method

.method private synthetic n()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$3OmpZ2qhqPLhLksDR0qjSSJ9ig4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$3OmpZ2qhqPLhLksDR0qjSSJ9ig4;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o(Landroid/app/Activity;)Lcom/oplus/camera/ui/s;
    .locals 4

    .line 1201
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0058

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09023c

    .line 1203
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 1204
    new-instance v3, Lcom/oplus/camera/j/a$a;

    invoke-direct {v3, v1}, Lcom/oplus/camera/j/a$a;-><init>(Lcom/oplus/camera/j/a$1;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1206
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08042d

    .line 1207
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f08042e

    .line 1209
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 1212
    :goto_0
    new-instance p1, Lcom/oplus/camera/ui/s;

    iget-object p0, p0, Lcom/oplus/camera/j/a;->y:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {p1, v0, p0}, Lcom/oplus/camera/ui/s;-><init>(Landroid/view/View;Lcom/oplus/camera/ui/CameraUIListener;)V

    return-object p1
.end method

.method static synthetic o(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    return-object p0
.end method

.method private synthetic o()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$ql4HwBFRIQZZ8Jq4CT11fqaDzAk;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$ql4HwBFRIQZZ8Jq4CT11fqaDzAk;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    return-object p0
.end method

.method private p(Landroid/app/Activity;)V
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    if-nez v0, :cond_0

    const v0, 0x7f100247

    const v1, 0x7f10024c

    .line 1462
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;II)Lcom/oplus/camera/ui/s;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    .line 1465
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$i6OrcszzdMsv4IRziDTLrV1rg-g;

    invoke-direct {v1, p0}, Lcom/oplus/camera/j/-$$Lambda$a$i6OrcszzdMsv4IRziDTLrV1rg-g;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s$a;)V

    .line 1471
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    new-instance v1, Lcom/oplus/camera/j/-$$Lambda$a$FcTA2FNmiiB6Yf8tAVsnh5yy-Nc;

    invoke-direct {v1, p1}, Lcom/oplus/camera/j/-$$Lambda$a$FcTA2FNmiiB6Yf8tAVsnh5yy-Nc;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/s;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1478
    iget-object p0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "showModeArrangeGuide"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private q(Landroid/app/Activity;)V
    .locals 2

    .line 1483
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->r(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    .line 1485
    iget-object p1, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1487
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Dialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1489
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 1491
    iput-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    .line 1494
    :cond_0
    sget-object p0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show3DPhotoGuide, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private r(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 4

    .line 1500
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 1501
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1101b7

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    .line 1502
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1503
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1504
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1505
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 1509
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1510
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x7f1101b6

    .line 1511
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1512
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    const v2, 0x7f0901b6

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/oplus/camera/j/a$15;

    invoke-direct {v2, p0}, Lcom/oplus/camera/j/a$15;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    new-instance v2, Lcom/oplus/camera/j/a$16;

    invoke-direct {v2, p0}, Lcom/oplus/camera/j/a$16;-><init>(Lcom/oplus/camera/j/a;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1532
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    const v2, 0x7f0901b7

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1533
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 1534
    new-instance v1, Lcom/oplus/camera/photo3d/ui/b;

    invoke-direct {v1, p1}, Lcom/oplus/camera/photo3d/ui/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1536
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1537
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1538
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    iput v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    .line 1542
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->b(Landroid/app/Dialog;)V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->b(Landroid/app/Dialog;)V

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public a(IZ)V
    .locals 3

    .line 230
    sget-object v0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideCommonBottomGuide, start hide type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->b(Landroid/app/Dialog;)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->b(Landroid/app/Dialog;)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    goto :goto_0

    .line 266
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    goto :goto_0

    .line 271
    :pswitch_4
    iget-object v1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->E:Z

    .line 272
    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    goto :goto_0

    .line 261
    :pswitch_5
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    goto :goto_0

    .line 256
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/oplus/camera/j/a;->b(Landroid/app/Dialog;)V

    goto :goto_0

    .line 245
    :pswitch_7
    iget-object v1, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    if-eqz v1, :cond_1

    .line 246
    invoke-direct {p0, v1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    if-eqz p2, :cond_1

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/j/a;->f:Lcom/oplus/camera/ComboPreferences;

    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "key_bottom_guide_type_night_tripod"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 234
    :pswitch_8
    iget-object v1, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    if-eqz v1, :cond_1

    .line 235
    invoke-direct {p0, v1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;)V

    if-eqz p2, :cond_1

    .line 237
    iget-object p0, p0, Lcom/oplus/camera/j/a;->f:Lcom/oplus/camera/ComboPreferences;

    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "key_bottom_guide_type_fast_video"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    :cond_1
    :goto_0
    sget-object p0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideCommonBottomGuide, finish hide type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/j/a;->a(IZ)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 3

    .line 176
    sget-object v0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCommonBottomGuide, start show type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->q(Landroid/app/Activity;)V

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->h(Landroid/app/Activity;)V

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->f(Landroid/app/Activity;)V

    goto :goto_0

    .line 208
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->p(Landroid/app/Activity;)V

    goto :goto_0

    .line 200
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->m(Landroid/app/Activity;)V

    goto :goto_0

    .line 195
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->g(Landroid/app/Activity;)V

    goto :goto_0

    .line 190
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 185
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 180
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/oplus/camera/j/a;->l(Landroid/app/Activity;)V

    .line 226
    :goto_0
    sget-object p0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showCommonBottomGuide, finish show type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 3

    .line 1216
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x8

    .line 1217
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v2, v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->ab()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x8000000

    .line 1220
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/16 v0, 0x400

    .line 1221
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1222
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1704

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 1228
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 1229
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 1231
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1234
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1237
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;I)V

    .line 1254
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;I)V

    .line 1255
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Dialog;I)V

    .line 1256
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;I)V

    .line 1257
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroidx/fragment/app/b;I)V

    .line 1258
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Dialog;I)V

    .line 1259
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Dialog;I)V

    const/4 v0, 0x0

    .line 1260
    iput-object v0, p0, Lcom/oplus/camera/j/a;->x:Lcom/coui/appcompat/widget/popupwindow/b$a;

    .line 1261
    invoke-virtual {p0}, Lcom/oplus/camera/j/a;->c()Z

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/j/a;->a(IZ)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    .line 1345
    iput-boolean v0, p0, Lcom/oplus/camera/j/a;->D:Z

    .line 1347
    iget-object v1, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1349
    iput-object v2, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    .line 1350
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1352
    :cond_0
    iput-object v2, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    .line 1355
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1357
    iput-object v2, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    const/4 v0, 0x2

    .line 1358
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1363
    iput-object v2, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const/4 v0, 0x3

    .line 1364
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1369
    iput-object v2, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    const/4 v0, 0x4

    .line 1370
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    .line 1373
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1374
    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1375
    iput-object v2, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    const/4 v0, 0x5

    .line 1376
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1378
    :cond_4
    iput-object v2, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    .line 1381
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1382
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1383
    iput-object v2, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    const/16 v0, 0x8

    .line 1384
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    .line 1387
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1389
    iput-object v2, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    const/4 v0, 0x7

    .line 1390
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    .line 1393
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1394
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1395
    iput-object v2, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    const/16 v0, 0x9

    .line 1396
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I)V

    :cond_7
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1267
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1272
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    move v0, v1

    .line 1277
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1279
    iput-object v3, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    move v0, v1

    .line 1283
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1284
    iget-object v0, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1285
    iput-object v3, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    move v0, v1

    .line 1289
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1290
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1291
    iput-object v3, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    move v0, v1

    .line 1295
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1296
    iget-object v0, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    .line 1297
    iput-object v3, p0, Lcom/oplus/camera/j/a;->j:Lcom/oplus/camera/ui/s;

    move v0, v1

    .line 1301
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1302
    iget-object v0, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1303
    iput-object v3, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    move v0, v1

    .line 1307
    :cond_6
    iget-object v2, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1308
    iget-object v0, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1309
    iput-object v3, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    move v0, v1

    .line 1313
    :cond_7
    sget-object p0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideAllPopupWindow, isHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public d()Z
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    if-eqz p0, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->start()V

    .line 1403
    iget-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->requestFocus()Z

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_1

    .line 1408
    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->c()V

    .line 1410
    iget-object p0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    invoke-virtual {p0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->a()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1415
    sget-object v0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->pause()V

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_1

    .line 1423
    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    iget-object v0, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->b()V

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    iget-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->dismiss()V

    const/4 v0, 0x0

    .line 1429
    iput-object v0, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    :cond_2
    return-void
.end method

.method public g()V
    .locals 2

    .line 1434
    sget-object v0, Lcom/oplus/camera/j/a;->e:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/oplus/camera/j/a;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a;->w:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/oplus/camera/j/a;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1442
    iput-object v1, p0, Lcom/oplus/camera/j/a;->w:Ljava/lang/Thread;

    .line 1445
    :cond_1
    iput-object v1, p0, Lcom/oplus/camera/j/a;->x:Lcom/coui/appcompat/widget/popupwindow/b$a;

    .line 1446
    iput-object v1, p0, Lcom/oplus/camera/j/a;->t:Lcom/oplus/camera/ui/widget/TextureVideoView;

    .line 1447
    iput-object v1, p0, Lcom/oplus/camera/j/a;->g:Lcom/oplus/camera/ui/s;

    .line 1448
    iput-object v1, p0, Lcom/oplus/camera/j/a;->h:Lcom/oplus/camera/ui/s;

    .line 1449
    iput-object v1, p0, Lcom/oplus/camera/j/a;->m:Landroid/app/Dialog;

    .line 1450
    iput-object v1, p0, Lcom/oplus/camera/j/a;->i:Lcom/oplus/camera/ui/s;

    .line 1451
    iput-object v1, p0, Lcom/oplus/camera/j/a;->l:Lcom/oplus/camera/ui/s;

    .line 1452
    iput-object v1, p0, Lcom/oplus/camera/j/a;->f:Lcom/oplus/camera/ComboPreferences;

    .line 1453
    iput-object v1, p0, Lcom/oplus/camera/j/a;->k:Lcom/oplus/camera/ui/s;

    .line 1454
    iput-object v1, p0, Lcom/oplus/camera/j/a;->u:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    .line 1455
    iput-object v1, p0, Lcom/oplus/camera/j/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 1456
    iput-object v1, p0, Lcom/oplus/camera/j/a;->n:Landroid/app/Dialog;

    .line 1457
    iput-object v1, p0, Lcom/oplus/camera/j/a;->o:Landroid/app/Dialog;

    return-void
.end method

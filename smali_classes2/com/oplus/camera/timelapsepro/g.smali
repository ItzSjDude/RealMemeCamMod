.class public Lcom/oplus/camera/timelapsepro/g;
.super Landroid/widget/RelativeLayout;
.source "TimeLapseProMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/g$b;,
        Lcom/oplus/camera/timelapsepro/g$a;,
        Lcom/oplus/camera/timelapsepro/g$c;,
        Lcom/oplus/camera/timelapsepro/g$f;,
        Lcom/oplus/camera/timelapsepro/g$d;,
        Lcom/oplus/camera/timelapsepro/g$e;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private I:Lcom/oplus/camera/timelapsepro/a;

.field private J:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private K:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/RelativeLayout$LayoutParams;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/oplus/camera/timelapsepro/a/i;

.field private Q:Lcom/oplus/camera/timelapsepro/a/a;

.field private R:Z

.field private S:Lcom/oplus/camera/timelapsepro/b;

.field private T:I

.field private U:Landroid/widget/RelativeLayout$LayoutParams;

.field private V:Landroid/widget/RelativeLayout$LayoutParams;

.field private W:Landroid/widget/RelativeLayout$LayoutParams;

.field private final a:I

.field private aa:Landroid/widget/RelativeLayout$LayoutParams;

.field private ab:Landroid/widget/RelativeLayout$LayoutParams;

.field private ac:Z

.field private ad:I

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/oplus/camera/screen/b/a;

.field private ag:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private ah:Lcom/oplus/camera/timelapsepro/g$b;

.field private ai:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private aj:Lcom/oplus/camera/timelapsepro/g$b;

.field private ak:Z

.field private al:I

.field private am:I

.field private an:I

.field private ao:Z

.field private ap:Ljava/lang/String;

.field private aq:Landroid/view/View;

.field private ar:Z

.field private as:Z

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

.field private aw:Lcom/oplus/camera/timelapsepro/adapter/b$a;

.field private final b:I

.field private final c:I

.field private final d:Lcom/oplus/camera/ComboPreferences;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/g$e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/os/Handler;

.field private i:Landroid/content/Context;

.field private j:Lcom/oplus/camera/timelapsepro/g$e;

.field private k:Lcom/oplus/camera/timelapsepro/g$f;

.field private l:Lcom/oplus/camera/timelapsepro/g$c;

.field private m:Lcom/oplus/camera/timelapsepro/g$a;

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/oplus/camera/timelapsepro/adapter/b;

.field private q:Landroidx/recyclerview/widget/RecyclerView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

.field private volatile u:Lcom/oplus/camera/timelapsepro/a/j;

.field private volatile v:I

.field private w:Z

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
    .locals 5

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    .line 97
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->l:Lcom/oplus/camera/timelapsepro/g$c;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->m:Lcom/oplus/camera/timelapsepro/g$a;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    const/4 v2, 0x1

    .line 112
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    const/4 v3, -0x1

    .line 115
    iput v3, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    .line 118
    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    .line 119
    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    .line 120
    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->E:I

    .line 135
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->R:Z

    .line 138
    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    .line 146
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->ac:Z

    const/16 v4, 0x3c

    .line 147
    iput v4, p0, Lcom/oplus/camera/timelapsepro/g;->ad:I

    .line 148
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ae:Ljava/util/List;

    .line 149
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    .line 150
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ag:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 151
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ah:Lcom/oplus/camera/timelapsepro/g$b;

    .line 152
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ai:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 153
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aj:Lcom/oplus/camera/timelapsepro/g$b;

    .line 155
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->ak:Z

    const/4 v4, 0x3

    .line 156
    iput v4, p0, Lcom/oplus/camera/timelapsepro/g;->al:I

    .line 157
    iput v4, p0, Lcom/oplus/camera/timelapsepro/g;->am:I

    .line 158
    iput v3, p0, Lcom/oplus/camera/timelapsepro/g;->an:I

    .line 159
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/g;->ao:Z

    const-string v2, ""

    .line 160
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->ap:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aq:Landroid/view/View;

    .line 162
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->ar:Z

    .line 163
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->as:Z

    .line 164
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->at:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->au:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/oplus/camera/timelapsepro/g$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/g$1;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->av:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    .line 185
    new-instance v0, Lcom/oplus/camera/timelapsepro/g$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/g$4;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aw:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    .line 212
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->d:Lcom/oplus/camera/ComboPreferences;

    .line 214
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070148

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->c:I

    .line 215
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070146

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->a:I

    .line 216
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070147

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->b:I

    .line 217
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->F()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    .line 218
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->G()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    .line 219
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->a()V

    .line 221
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->r()V

    .line 223
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->v()V

    .line 225
    new-instance p1, Lcom/oplus/camera/timelapsepro/g$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/timelapsepro/g$5;-><init>(Lcom/oplus/camera/timelapsepro/g;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    .line 259
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Report TimelapsePro Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance p2, Lcom/oplus/camera/timelapsepro/g$6;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/timelapsepro/g$6;-><init>(Lcom/oplus/camera/timelapsepro/g;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 7

    .line 991
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f0903c1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 996
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 997
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 998
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1000
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    const v5, 0x7f0700df

    const v6, 0x7f070c27

    if-eq v2, v0, :cond_6

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    .line 1001
    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x4

    .line 1003
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1004
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c2e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1005
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1006
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1008
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_7

    .line 1009
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f08064d

    goto :goto_0

    :cond_2
    const p0, 0x7f08064e

    :goto_0
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10e

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v2

    if-ne v1, v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1015
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c26

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1017
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_7

    .line 1018
    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1019
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a41

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_1

    .line 1020
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a42

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_1
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 1002
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_7
    :goto_3
    return-void
.end method

.method private B()V
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->getScaleLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    .line 1059
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 1060
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    const v1, 0x7f090306

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->G()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/a;

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    .line 1069
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$zpzuJGx3CnKqsqlHAWGZXdhO0nI;

    invoke-direct {v2, v0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$zpzuJGx3CnKqsqlHAWGZXdhO0nI;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setTextUpdateListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;)V

    .line 1073
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 1074
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleSpace(I)V

    .line 1075
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 1077
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->E:I

    if-eqz v0, :cond_1

    .line 1078
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v1, Lcom/oplus/camera/timelapsepro/g$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/g$2;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 1094
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$EY_RPrT8h8MD8wujwGJ8hP4BXj0;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$EY_RPrT8h8MD8wujwGJ8hP4BXj0;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 1113
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->C()V

    .line 1114
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 1117
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private C()V
    .locals 6

    .line 1121
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f0903c1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1126
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1127
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1128
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1130
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    const v5, 0x7f0700df

    if-eq v2, v0, :cond_5

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    .line 1131
    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 1133
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c2e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1135
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1136
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c27

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 1138
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10e

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v2

    if-ne v1, v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1141
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c26

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1143
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    const v1, 0x7f090062

    .line 1144
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1145
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a41

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    .line 1146
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a42

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_0
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 1132
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->V:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_6
    :goto_2
    return-void
.end method

.method private D()V
    .locals 4

    .line 1172
    new-instance v0, Lcom/oplus/camera/timelapsepro/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->d:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/timelapsepro/b;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    .line 1174
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->E()V

    .line 1176
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/screen/b/a;II)V

    .line 1179
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ae:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/timelapsepro/b;->setParamList(Ljava/util/List;)V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    new-instance v1, Lcom/oplus/camera/timelapsepro/g$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/g$3;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/b;->setParameterCallback(Lcom/oplus/camera/timelapsepro/b$a;)V

    .line 1249
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;)V

    .line 1253
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->setVisibility(I)V

    return-void
.end method

.method private E()V
    .locals 6

    .line 1257
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1258
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0903c1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1262
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1263
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1264
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1266
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    .line 1267
    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-eq v0, v3, :cond_3

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    .line 1268
    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1275
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0x10e

    .line 1276
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v2

    if-ne v1, v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1278
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1269
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1270
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1271
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1272
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->W:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070bfa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_1
    return-void
.end method

.method private F()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/i;",
            ">;"
        }
    .end annotation

    .line 1307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0300ac

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 1310
    new-instance v4, Lcom/oplus/camera/timelapsepro/a/i;

    invoke-direct {v4, v3}, Lcom/oplus/camera/timelapsepro/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private G()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/a;",
            ">;"
        }
    .end annotation

    .line 1333
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_0

    .line 1336
    new-instance v1, Lcom/oplus/camera/timelapsepro/a/a;

    invoke-direct {v1, v0}, Lcom/oplus/camera/timelapsepro/a/a;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private H()V
    .locals 5

    .line 1511
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    .line 1512
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v1

    .line 1513
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2, v3, v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(Lcom/oplus/camera/screen/b/a;II)V

    .line 1514
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->ai:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1517
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->a(II)V

    .line 1519
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz v2, :cond_1

    .line 1520
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2, v4, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/screen/b/a;II)V

    .line 1523
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->aj:Lcom/oplus/camera/timelapsepro/g$b;

    if-eqz v1, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v3, 0x2

    .line 1524
    :cond_2
    invoke-virtual {v1, v3}, Lcom/oplus/camera/timelapsepro/g$b;->a(I)V

    .line 1528
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1529
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1530
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 1531
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 1533
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->removeView(Landroid/view/View;)V

    .line 1534
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    .line 1537
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 1538
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1539
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 1541
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->removeView(Landroid/view/View;)V

    .line 1542
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    :cond_5
    return-void
.end method

.method private I()V
    .locals 1

    .line 1734
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/g$d;

    .line 1735
    invoke-interface {v0}, Lcom/oplus/camera/timelapsepro/g$d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private J()V
    .locals 1

    .line 1740
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/g$d;

    .line 1741
    invoke-interface {v0}, Lcom/oplus/camera/timelapsepro/g$d;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private K()V
    .locals 4

    .line 1768
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1773
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private L()V
    .locals 4

    .line 1781
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1786
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private M()V
    .locals 0

    .line 1829
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->l:Lcom/oplus/camera/timelapsepro/g$c;

    if-eqz p0, :cond_0

    .line 1830
    invoke-interface {p0}, Lcom/oplus/camera/timelapsepro/g$c;->onChanged()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/oplus/camera/timelapsepro/g;->an:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    return p1
.end method

.method private a(II)V
    .locals 2

    .line 1547
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 1553
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1554
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1555
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_2

    .line 1560
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0903b9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1561
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x10e

    if-ne v0, p2, :cond_2

    const/16 p2, 0xb

    goto :goto_0

    :cond_2
    const/16 p2, 0x9

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1565
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070a4c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1567
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    const p2, 0x7f070be6

    if-ne v0, p1, :cond_3

    .line 1568
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x5a

    .line 1569
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1570
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_1

    .line 1572
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070be2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 1575
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1580
    :goto_2
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->A()V

    .line 1581
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->C()V

    .line 1582
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->E()V

    .line 1583
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->y()V

    .line 1585
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private a(ILcom/oplus/camera/timelapsepro/a/j;)V
    .locals 2

    .line 569
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    .line 570
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    const-string v1, "pref_time_lapse_pro_sub_setting_key"

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;I)V

    .line 571
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    .line 572
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p2, 0x1

    .line 573
    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/timelapsepro/g;->a(ZZ)V

    .line 574
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->y()V

    .line 576
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method private varargs a(IZ[Ljava/lang/Object;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->m:Lcom/oplus/camera/timelapsepro/g$a;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/g;->ao:Z

    if-eqz p0, :cond_0

    .line 440
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/g$a;->a(IZ[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 1

    .line 1420
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/g$e;

    .line 1421
    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/timelapsepro/g$e;->a(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 903
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    .line 904
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    .line 905
    check-cast p1, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    invoke-static {p1, v0}, Lcom/oplus/camera/timelapsepro/d;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V

    .line 907
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 908
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ap:Ljava/lang/String;

    const/4 p1, -0x1

    const-string v0, "pref_time_lapse_pro_speed_key"

    .line 909
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;I)V

    const-string p1, "auto"

    .line 910
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->d(Ljava/lang/String;)V

    .line 915
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 916
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static synthetic a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1070
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V
    .locals 3

    .line 1095
    iget p1, p0, Lcom/oplus/camera/timelapsepro/g;->E:I

    if-eq p1, p2, :cond_0

    .line 1096
    iput p2, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    const-string p1, "pref_time_lapse_pro_duration_key"

    .line 1097
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;I)V

    .line 1100
    :cond_0
    iput p2, p0, Lcom/oplus/camera/timelapsepro/g;->E:I

    .line 1101
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/a;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    .line 1103
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setShowText(Z)V

    const/4 p1, 0x1

    .line 1105
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->al:I

    if-ne p1, v0, :cond_1

    .line 1106
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/a;->f_()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/a;->g_()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    .line 1107
    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/a/a;->a(Lcom/oplus/camera/timelapsepro/a/i;)Lcom/oplus/camera/timelapsepro/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1110
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/a;->a()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;ILcom/oplus/camera/timelapsepro/a/j;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(ILcom/oplus/camera/timelapsepro/a/j;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;IZ[Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/g;->a(IZ[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;ZZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putPreferenceInt, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMenuLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->d:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1426
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/g$e;

    .line 1427
    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/timelapsepro/g$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 677
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 681
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    const-wide/16 v6, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 685
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    .line 689
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->y()V

    .line 693
    :cond_0
    iget-boolean v2, v0, Lcom/oplus/camera/timelapsepro/g;->R:Z

    const/16 v3, 0x11

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 694
    new-instance v2, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 695
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v2, v6, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 696
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setGravity(I)V

    .line 697
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setIncludeFontPadding(Z)V

    .line 698
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v2, v6}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setSingleLine(Z)V

    .line 699
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    const v8, 0x7f06056b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    .line 700
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v7, v0, Lcom/oplus/camera/timelapsepro/g;->c:I

    int-to-float v7, v7

    iget v8, v0, Lcom/oplus/camera/timelapsepro/g;->a:I

    int-to-float v8, v8

    iget v9, v0, Lcom/oplus/camera/timelapsepro/g;->b:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    const v11, 0x7f060069

    invoke-static {v10, v11}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 701
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070a5f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setMaxWidth(I)V

    .line 703
    new-instance v2, Lcom/oplus/camera/timelapsepro/a;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/oplus/camera/timelapsepro/a;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->I:Lcom/oplus/camera/timelapsepro/a;

    .line 704
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->I:Lcom/oplus/camera/timelapsepro/a;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    const v8, 0x7f06004d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/oplus/camera/timelapsepro/a;->setTextColor(I)V

    .line 705
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->I:Lcom/oplus/camera/timelapsepro/a;

    invoke-static {}, Lcom/oplus/camera/util/Util;->z()Landroid/graphics/Typeface;

    move-result-object v7

    const/high16 v9, 0x42600000    # 56.0f

    invoke-virtual {v2, v7, v4, v9}, Lcom/oplus/camera/timelapsepro/a;->a(Landroid/graphics/Typeface;IF)V

    .line 707
    new-instance v2, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 708
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v7, 0x42380000    # 46.0f

    invoke-virtual {v2, v4, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 709
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setGravity(I)V

    .line 710
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    .line 711
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v7, v0, Lcom/oplus/camera/timelapsepro/g;->c:I

    int-to-float v7, v7

    iget v8, v0, Lcom/oplus/camera/timelapsepro/g;->a:I

    int-to-float v8, v8

    iget v9, v0, Lcom/oplus/camera/timelapsepro/g;->b:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-static {v10, v11}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 713
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 714
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 715
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 716
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 717
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->I:Lcom/oplus/camera/timelapsepro/a;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 718
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 720
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 721
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070bde

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 723
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    .line 724
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    const v8, 0x7f0903ba

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 725
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 726
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 727
    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v7}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 733
    iput-boolean v6, v0, Lcom/oplus/camera/timelapsepro/g;->R:Z

    .line 735
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v7, Lcom/oplus/camera/timelapsepro/g$8;

    invoke-direct {v7, p0}, Lcom/oplus/camera/timelapsepro/g$8;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 747
    :cond_1
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v7}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v7

    const/4 v8, 0x4

    if-ne v8, v7, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setSingleLine(Z)V

    .line 748
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 749
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v7, v0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v7}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v7

    if-ne v8, v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setLines(I)V

    .line 751
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->I:Lcom/oplus/camera/timelapsepro/a;

    const-string v7, ""

    if-nez p1, :cond_4

    move-object v9, v7

    goto :goto_2

    :cond_4
    move-object v9, p1

    :goto_2
    invoke-virtual {v2, v9}, Lcom/oplus/camera/timelapsepro/a;->setTextToDraw(Ljava/lang/String;)V

    .line 752
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->J:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-nez v1, :cond_5

    move-object v9, v7

    goto :goto_3

    :cond_5
    move-object v9, v1

    :goto_3
    invoke-virtual {v2, v9}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, p3

    :goto_4
    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-nez p3, :cond_7

    goto :goto_5

    :cond_7
    move v8, v5

    :goto_5
    invoke-virtual {v2, v8}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    if-eqz v1, :cond_9

    .line 756
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 757
    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v5, "^[a-zA-Z]*"

    .line 758
    invoke-virtual {p2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v3, 0x50

    :cond_8
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_9
    if-eqz p5, :cond_a

    .line 762
    invoke-direct {p0, v6, v6}, Lcom/oplus/camera/timelapsepro/g;->a(ZZ)V

    .line 765
    :cond_a
    iget-object v1, v0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 766
    iget-object v1, v0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    if-eqz p4, :cond_c

    .line 770
    iget-object v0, v0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    move-wide/from16 v1, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    return-void
.end method

.method private a(Z)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 815
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz p1, :cond_0

    .line 816
    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/b;->setEnabled(Z)V

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x190

    const-wide/16 v6, 0x96

    new-instance v8, Lcom/oplus/camera/timelapsepro/g$9;

    invoke-direct {v8, p0}, Lcom/oplus/camera/timelapsepro/g$9;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    sget-object v9, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v1 .. v9}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 838
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    const/16 p1, 0xfa

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    .line 798
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->ac:Z

    if-eqz p2, :cond_0

    .line 801
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Z)V

    goto :goto_1

    .line 803
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 804
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 807
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 808
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/g;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->ak:Z

    return p1
.end method

.method private b(Ljava/lang/String;I)I
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->d:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreferenceInt, key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeLapseProMenuLayout"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private b(Ljava/lang/String;)Lcom/oplus/camera/timelapsepro/a/k;
    .locals 5

    .line 497
    sget-object v0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_TIMELAPSE_PRO_TEMPLATES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 498
    new-instance p1, Lcom/oplus/camera/timelapsepro/a/k;

    const v0, 0x7f080652

    iget v3, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-nez v3, :cond_0

    move v1, v2

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f10044b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/oplus/camera/timelapsepro/a/k;-><init>(IZLjava/lang/String;)V

    return-object p1

    .line 500
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_TIMELAPSE_PRO_TEMPLATES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    new-instance p1, Lcom/oplus/camera/timelapsepro/a/k;

    const v0, 0x7f08066b

    iget v3, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-ne v2, v3, :cond_2

    move v1, v2

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f10045a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/oplus/camera/timelapsepro/a/k;-><init>(IZLjava/lang/String;)V

    return-object p1

    .line 503
    :cond_3
    sget-object v0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_TIMELAPSE_PRO_TEMPLATES:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 504
    new-instance p1, Lcom/oplus/camera/timelapsepro/a/k;

    const v0, 0x7f080673

    iget v4, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-ne v3, v4, :cond_4

    move v1, v2

    .line 505
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f10045f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/oplus/camera/timelapsepro/a/k;-><init>(IZLjava/lang/String;)V

    return-object p1

    .line 506
    :cond_5
    sget-object v0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_TIMELAPSE_PRO_TEMPLATES:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 507
    new-instance p1, Lcom/oplus/camera/timelapsepro/a/k;

    const v0, 0x7f08066e

    iget v4, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-ne v3, v4, :cond_6

    move v1, v2

    .line 508
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f10045c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/oplus/camera/timelapsepro/a/k;-><init>(IZLjava/lang/String;)V

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    .line 435
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->a(IZ[Ljava/lang/Object;)V

    return-void
.end method

.method private b(II)V
    .locals 3

    .line 1589
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/b;->a(Lcom/oplus/camera/screen/b/a;II)V

    .line 1590
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ag:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1593
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->c(II)V

    .line 1595
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->ah:Lcom/oplus/camera/timelapsepro/g$b;

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 1597
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070bbf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Lcom/oplus/camera/timelapsepro/g$b;->b(I)V

    goto :goto_1

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070bbe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Lcom/oplus/camera/timelapsepro/g$b;->b(I)V

    :goto_1
    if-ne v1, p1, :cond_2

    .line 1603
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->ah:Lcom/oplus/camera/timelapsepro/g$b;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    goto :goto_2

    .line 1604
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 1605
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->ah:Lcom/oplus/camera/timelapsepro/g$b;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static synthetic b(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 898
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V
    .locals 4

    .line 959
    iput p2, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    .line 960
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/i;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    .line 962
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 963
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 965
    iget p1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    if-nez p1, :cond_0

    .line 966
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/i;->f_()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/i;->g_()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 970
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->c(Ljava/lang/String;I)V

    .line 972
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz p1, :cond_1

    .line 973
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/i;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(J)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/g;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1794
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    if-eqz p0, :cond_0

    .line 1795
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 0

    .line 1756
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    if-eqz p0, :cond_0

    .line 1757
    invoke-interface {p0, p1}, Lcom/oplus/camera/timelapsepro/g$f;->a(Z)V

    :cond_0
    return-void
.end method

.method private b(ZZ)V
    .locals 11

    .line 1038
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    .line 1040
    iget p2, p0, Lcom/oplus/camera/timelapsepro/g;->am:I

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1045
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x190

    const-wide/16 v7, 0x96

    const/4 v9, 0x0

    sget-object v10, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v10}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1048
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const/16 p1, 0xfa

    sget-object p2, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, p1, v1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    .line 1052
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/g;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/adapter/b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->at:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 3

    .line 635
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->al:I

    .line 636
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->an:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/timelapsepro/g;->b(ZZ)V

    .line 662
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/timelapsepro/g;->c(ZZ)V

    .line 663
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/timelapsepro/g;->d(ZZ)V

    .line 665
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/timelapsepro/g;->a(ZZ)V

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->b(ZZ)V

    .line 655
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->c(ZZ)V

    .line 656
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/timelapsepro/g;->d(ZZ)V

    goto :goto_0

    .line 647
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->b(ZZ)V

    .line 648
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/timelapsepro/g;->c(ZZ)V

    .line 649
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->d(ZZ)V

    goto :goto_0

    .line 640
    :cond_3
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/timelapsepro/g;->b(ZZ)V

    .line 641
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->c(ZZ)V

    .line 642
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->d(ZZ)V

    .line 673
    :goto_0
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g;->am:I

    return-void
.end method

.method private c(II)V
    .locals 2

    .line 1611
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    const/16 v0, 0xe

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070c30

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1622
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1616
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070bc2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1617
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1627
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1628
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bc3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x10e

    const v0, 0x7f070be9

    if-ne p1, p2, :cond_3

    .line 1631
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1632
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1634
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1635
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1641
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/g;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->e(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1410
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->O:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/a;

    .line 1412
    invoke-virtual {v0, p1}, Lcom/oplus/camera/timelapsepro/a/a;->a(Ljava/lang/String;)V

    .line 1413
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/a;->a()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g$e;->a(J)V

    goto :goto_0

    .line 1414
    :cond_0
    iget p1, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    .line 1415
    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g$e;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;I)V
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_time_lapse_pro_speed_key"

    .line 1399
    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;I)V

    .line 1400
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ap:Ljava/lang/String;

    .line 1402
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/g$e;

    .line 1403
    invoke-interface {v0, p1}, Lcom/oplus/camera/timelapsepro/g$e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1406
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(ZZ)V
    .locals 11

    .line 1152
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    const/4 p2, 0x1

    .line 1154
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->am:I

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1159
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x190

    const-wide/16 v7, 0x96

    const/4 v9, 0x0

    sget-object v10, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v10}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1162
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    const/16 p1, 0xfa

    sget-object p2, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, p1, v1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    .line 1166
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/g;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->au:Ljava/lang/String;

    return-object p1
.end method

.method private d(I)V
    .locals 1

    .line 1389
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/g$e;

    .line 1390
    invoke-interface {v0, p1}, Lcom/oplus/camera/timelapsepro/g$e;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/g;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->b(I)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "time_lapse_interval"

    .line 1777
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(ZZ)V
    .locals 11

    .line 1283
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    .line 1285
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/b;->e()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    const/4 p2, 0x2

    .line 1289
    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->am:I

    if-eq p2, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1294
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x190

    const-wide/16 v7, 0x96

    const/4 v9, 0x0

    sget-object v10, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v10}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1297
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    const/16 p1, 0xfa

    sget-object p2, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1301
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private e(I)V
    .locals 0

    .line 1762
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    if-eqz p0, :cond_0

    .line 1763
    invoke-interface {p0, p1}, Lcom/oplus/camera/timelapsepro/g$f;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->t()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/timelapsepro/g;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->f(I)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 1813
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    if-eqz p0, :cond_0

    .line 1814
    invoke-interface {p0, p1}, Lcom/oplus/camera/timelapsepro/g$f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "auto"

    goto :goto_0

    .line 1790
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "time_lapse_timer"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->x()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method private g(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "time_lapse_parameter"

    return-object p0

    :cond_1
    const-string p0, "time_lapse_timer"

    return-object p0

    :cond_2
    const-string p0, "time_lapse_interval"

    return-object p0
.end method

.method private getScaleLayoutId()I
    .locals 2

    const-string v0, "TimeLapseProMenuLayout"

    const-string v1, "getScaleLayoutId"

    .line 844
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const/16 v0, 0x10e

    .line 847
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p0

    if-ne v0, p0, :cond_0

    const p0, 0x7f0c0176

    return p0

    :cond_0
    const p0, 0x7f0c0175

    return p0

    :cond_1
    const p0, 0x7f0c0174

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/a/i;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/a/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/timelapsepro/g;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->at:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/timelapsepro/g;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->au:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$EY_RPrT8h8MD8wujwGJ8hP4BXj0(Lcom/oplus/camera/timelapsepro/g;Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V

    return-void
.end method

.method public static synthetic lambda$MLKeWOscLWQ8s98wFOyRI1tGQ1M(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$QD3VFN4PF0R__xhGX1K3W-xTRKE(Lcom/oplus/camera/timelapsepro/g;Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V

    return-void
.end method

.method public static synthetic lambda$tCrKp-4pvj04dPdkBupmpcP2Dr8(Lcom/oplus/camera/timelapsepro/g;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$zpzuJGx3CnKqsqlHAWGZXdhO0nI(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/timelapsepro/g;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->I:Lcom/oplus/camera/timelapsepro/a;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->K:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/timelapsepro/g;)Landroid/widget/LinearLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 378
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bc2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->aa:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ag:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->ag:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 391
    new-instance v0, Lcom/oplus/camera/timelapsepro/adapter/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    .line 393
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    if-nez v0, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getTemplateInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->aw:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/b;->a(Lcom/oplus/camera/timelapsepro/adapter/b$a;)V

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/b;->a(Ljava/util/List;)V

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 402
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bbe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 403
    new-instance v1, Lcom/oplus/camera/timelapsepro/g$b;

    invoke-direct {v1, v0}, Lcom/oplus/camera/timelapsepro/g$b;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->ah:Lcom/oplus/camera/timelapsepro/g$b;

    .line 404
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->ah:Lcom/oplus/camera/timelapsepro/g$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 406
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/timelapsepro/g;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    return p0
.end method

.method static synthetic s(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 410
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 415
    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/b;->a(I)V

    :cond_1
    const v0, 0x7f1006b0

    .line 418
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->b(I)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->d:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_time_lapse_pro_speed_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_time_lapse_pro_duration_key"

    .line 423
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->i()V

    .line 429
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->j()V

    .line 431
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->h()V

    return-void
.end method

.method static synthetic t(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->s()V

    return-void
.end method

.method static synthetic u(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private u()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/k;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    sget-object v1, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_TIMELAPSE_PRO_TEMPLATES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 482
    invoke-direct {p0, v4}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;)Lcom/oplus/camera/timelapsepro/a/k;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private v()V
    .locals 3

    .line 515
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aq:Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aq:Landroid/view/View;

    const v1, 0x7f0903b9

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 517
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 518
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 519
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->aq:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 523
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ai:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 524
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->ai:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 526
    new-instance v0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    .line 528
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->s:Ljava/util/List;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->av:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;)V

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(Ljava/util/List;)V

    .line 535
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 536
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 537
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 538
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 539
    new-instance v2, Lcom/oplus/camera/timelapsepro/g$b;

    invoke-direct {v2, v0, v1}, Lcom/oplus/camera/timelapsepro/g$b;-><init>(II)V

    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->aj:Lcom/oplus/camera/timelapsepro/g$b;

    .line 540
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->aj:Lcom/oplus/camera/timelapsepro/g$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    .line 547
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903c1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 548
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 549
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->ab:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic v(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->K()V

    return-void
.end method

.method private w()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/j;",
            ">;"
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 559
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 560
    new-instance v4, Lcom/oplus/camera/timelapsepro/a/j;

    aget-object v5, v1, v3

    iget v6, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    if-ne v6, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    invoke-direct {v4, v5, v6}, Lcom/oplus/camera/timelapsepro/a/j;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    :cond_1
    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/j;

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    return-object v0
.end method

.method static synthetic w(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->L()V

    return-void
.end method

.method static synthetic x(Lcom/oplus/camera/timelapsepro/g;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/oplus/camera/timelapsepro/g;->al:I

    return p0
.end method

.method private x()V
    .locals 5

    .line 580
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->a(II)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->z()V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->A:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 589
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->B()V

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-nez v0, :cond_3

    .line 593
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->D()V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 596
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->a(ZZ)V

    .line 598
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    iget-object v2, v2, Lcom/oplus/camera/timelapsepro/a/j;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1006bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 599
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz v2, :cond_4

    .line 600
    invoke-virtual {v2, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setShowText(Z)V

    .line 603
    :cond_4
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->c(I)V

    goto :goto_0

    .line 604
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    iget-object v0, v0, Lcom/oplus/camera/timelapsepro/a/j;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1006b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 605
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz v0, :cond_6

    .line 606
    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setShowText(Z)V

    .line 609
    :cond_6
    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/g;->c(I)V

    goto :goto_0

    .line 610
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    iget-object v0, v0, Lcom/oplus/camera/timelapsepro/a/j;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1006b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 611
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->c(I)V

    .line 614
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    if-ne v1, v0, :cond_9

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->ar:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    if-eqz v2, :cond_9

    .line 616
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->ar:Z

    .line 617
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/timelapsepro/g$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/g$7;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_9
    return-void
.end method

.method static synthetic y(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private y()V
    .locals 4

    .line 775
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 780
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 781
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0903c1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    .line 783
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 784
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 785
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    .line 786
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 787
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a65

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 788
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 789
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    .line 790
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    iget-object v2, v2, Lcom/oplus/camera/timelapsepro/a/j;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f1006b9

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f070a64

    goto :goto_0

    :cond_3
    const p0, 0x7f070a63

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 793
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->M:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a60

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_1
    return-void
.end method

.method private z()V
    .locals 7

    .line 858
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    .line 859
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->getScaleLayoutId()I

    move-result v4

    invoke-virtual {v0, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    .line 860
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const v4, 0x7f090305

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 861
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const v4, 0x7f090062

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 863
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 864
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const v4, 0x7f090306

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 866
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v4

    .line 867
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v6, Lcom/oplus/camera/timelapsepro/g$10;

    invoke-direct {v6, p0, v4}, Lcom/oplus/camera/timelapsepro/g$10;-><init>(Lcom/oplus/camera/timelapsepro/g;Lcom/a/a/f;)V

    invoke-virtual {v5, v6}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 887
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    if-nez v4, :cond_1

    .line 888
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->F()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    .line 891
    :cond_1
    iget v4, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    if-ne v4, v1, :cond_2

    .line 892
    iput v3, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    iget v4, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/i;

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    .line 897
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v4, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$MLKeWOscLWQ8s98wFOyRI1tGQ1M;

    invoke-direct {v4, v0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$MLKeWOscLWQ8s98wFOyRI1tGQ1M;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setTextUpdateListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$c;)V

    .line 901
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$tCrKp-4pvj04dPdkBupmpcP2Dr8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$tCrKp-4pvj04dPdkBupmpcP2Dr8;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    invoke-static {v0, v1, v3}, Lcom/oplus/camera/timelapsepro/d;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 924
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->ad:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setLineSpace(I)V

    .line 927
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    if-eqz v0, :cond_3

    .line 928
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 931
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v1, Lcom/oplus/camera/timelapsepro/g$11;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/g$11;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 958
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$QD3VFN4PF0R__xhGX1K3W-xTRKE;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$g$QD3VFN4PF0R__xhGX1K3W-xTRKE;-><init>(Lcom/oplus/camera/timelapsepro/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 977
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->A()V

    .line 978
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->U:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 981
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    if-gtz v0, :cond_4

    .line 982
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    goto :goto_1

    .line 984
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 987
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->x:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->ao:Z

    const/4 v0, 0x0

    const-string v1, "pref_time_lapse_pro_template_key"

    .line 310
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    const-string v1, "pref_time_lapse_pro_sub_setting_key"

    .line 311
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    const-string v1, "pref_time_lapse_pro_speed_key"

    const/4 v2, -0x1

    .line 312
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    const-string v1, "pref_time_lapse_pro_duration_key"

    .line 313
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    .line 314
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    .line 315
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->E:I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreFromPreference, mSelectTemplate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIndexOfCurrentSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeedIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDurationIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TimeLapseProMenuLayout"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSpeed, speedIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMenuLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getCurrentIndex()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz v0, :cond_1

    .line 1468
    invoke-virtual {v0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 1471
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1472
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 1473
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    .line 1474
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/g$d;)V
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/g$e;)V
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1329
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    .line 323
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/timelapsepro/a/k;

    iget v4, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-ne v0, v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/oplus/camera/timelapsepro/a/k;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/adapter/b;->notifyDataSetChanged()V

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    if-eqz v0, :cond_5

    move v0, v2

    .line 331
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 332
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/timelapsepro/a/j;

    iget v4, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    if-ne v0, v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput-boolean v4, v3, Lcom/oplus/camera/timelapsepro/a/j;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->s:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/j;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->u:Lcom/oplus/camera/timelapsepro/a/j;

    .line 336
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public b(Lcom/oplus/camera/timelapsepro/g$d;)V
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    return p0
.end method

.method public d()V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->aq:Landroid/view/View;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->r:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 369
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->am:I

    .line 371
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->c(I)V

    goto :goto_2

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->x()V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 7

    .line 445
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-lez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->F:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    if-nez v0, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/g;->P:Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/i;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g;->Q:Lcom/oplus/camera/timelapsepro/a/a;

    const v3, 0x7f1006cd

    if-eqz v2, :cond_2

    .line 454
    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/a;->b()I

    move-result v2

    if-gtz v2, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1006d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v3, 0x7f1006b3

    .line 464
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->f()Z

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    invoke-direct {p0, v3, v5, v6}, Lcom/oplus/camera/timelapsepro/g;->a(IZ[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public f()Z
    .locals 4

    .line 469
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-ne v3, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->E:I

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 471
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->d()Z

    move-result p0

    if-nez p0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1321
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    const v1, 0x7f0300ac

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    aget-object p0, v0, p0

    return-object p0

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getTemplateInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/k;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->u()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    .line 493
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1444
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz p0, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->f()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, -0x1

    .line 1450
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->z:I

    const/4 v0, 0x1

    .line 1451
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    .line 1453
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1454
    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 1455
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->y:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->H:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_1

    .line 1459
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/g;->w:Z

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1480
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->C:I

    .line 1482
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->B:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz p0, :cond_0

    .line 1483
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1488
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1489
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public l()V
    .locals 6

    .line 1645
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->ak:Z

    const v0, 0x7f1006b2

    .line 1646
    iget v3, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/g;->o:Ljava/util/List;

    iget v5, p0, Lcom/oplus/camera/timelapsepro/g;->T:I

    .line 1647
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/timelapsepro/a/k;

    invoke-virtual {v4}, Lcom/oplus/camera/timelapsepro/a/k;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1646
    invoke-direct {p0, v0, v3, v1}, Lcom/oplus/camera/timelapsepro/g;->a(IZ[Ljava/lang/Object;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1651
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g;->v:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1652
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/g;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 0

    .line 1661
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/g;->as:Z

    return p0
.end method

.method public o()V
    .locals 1

    .line 1665
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->b(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1376
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1377
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 1378
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1379
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1380
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    .line 1381
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->m:Lcom/oplus/camera/timelapsepro/g$a;

    .line 1382
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->l:Lcom/oplus/camera/timelapsepro/g$c;

    .line 1383
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    .line 1385
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public p()V
    .locals 0

    .line 1669
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz p0, :cond_0

    .line 1670
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->g()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    if-eqz v0, :cond_0

    .line 1679
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->aw:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    .line 1680
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/adapter/b;->a()V

    .line 1681
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->p:Lcom/oplus/camera/timelapsepro/adapter/b;

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 1686
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1688
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    if-eqz v0, :cond_1

    .line 1689
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->av:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    .line 1690
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a()V

    .line 1691
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->t:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->S:Lcom/oplus/camera/timelapsepro/b;

    if-eqz v0, :cond_2

    .line 1696
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/b;->c()V

    .line 1699
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->removeAllViews()V

    .line 1700
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->i:Landroid/content/Context;

    .line 1701
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1702
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1703
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 1704
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1705
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1706
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->m:Lcom/oplus/camera/timelapsepro/g$a;

    .line 1707
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->l:Lcom/oplus/camera/timelapsepro/g$c;

    .line 1708
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    return-void
.end method

.method public setAnimationState(Z)V
    .locals 0

    .line 1657
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->as:Z

    return-void
.end method

.method public setChangeScreenModeListener(Lcom/oplus/camera/timelapsepro/g$c;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->l:Lcom/oplus/camera/timelapsepro/g$c;

    return-void
.end method

.method public setCurrentScreenMode(Lcom/oplus/camera/screen/b/a;)V
    .locals 1

    .line 1502
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->M()V

    .line 1503
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->af:Lcom/oplus/camera/screen/b/a;

    .line 1505
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/g;->b(II)V

    .line 1507
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->H()V

    return-void
.end method

.method public setHintCallback(Lcom/oplus/camera/timelapsepro/g$a;)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->m:Lcom/oplus/camera/timelapsepro/g$a;

    return-void
.end method

.method public setProParameterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/e;",
            ">;)V"
        }
    .end annotation

    .line 1494
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->ae:Ljava/util/List;

    return-void
.end method

.method public setReportCallback(Lcom/oplus/camera/timelapsepro/g$f;)V
    .locals 0

    .line 1752
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->k:Lcom/oplus/camera/timelapsepro/g$f;

    return-void
.end method

.method public setSettingValues(Ljava/lang/String;)V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1027
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->F()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 1030
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1031
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/i;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g;->D:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setShowTemplate(Z)V
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->F:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/g;->F:Z

    .line 345
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    .line 346
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->d()V

    .line 348
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->G:Z

    if-eqz p1, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->I()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/g;->J()V

    .line 353
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/g;->ak:Z

    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 354
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTimeLapseProMenuListener(Lcom/oplus/camera/timelapsepro/g$e;)V
    .locals 1

    if-nez p1, :cond_1

    .line 1356
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1357
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1358
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    :cond_0
    return-void

    .line 1364
    :cond_1
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g;->j:Lcom/oplus/camera/timelapsepro/g$e;

    .line 1366
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1370
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

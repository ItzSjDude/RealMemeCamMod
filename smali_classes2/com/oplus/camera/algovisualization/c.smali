.class public Lcom/oplus/camera/algovisualization/c;
.super Ljava/lang/Object;
.source "AlgoVisualViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/algovisualization/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/oplus/camera/e/d;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/oplus/camera/algovisualization/j;

.field private k:Lcom/oplus/camera/algovisualization/f;

.field private l:Landroid/content/IntentFilter;

.field private m:I

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 53
    iput v0, p0, Lcom/oplus/camera/algovisualization/c;->m:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/camera/algovisualization/c;->n:I

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/oplus/camera/algovisualization/c;->o:I

    const/16 v0, 0xa

    .line 56
    iput v0, p0, Lcom/oplus/camera/algovisualization/c;->p:I

    const/16 v0, 0x23

    .line 57
    iput v0, p0, Lcom/oplus/camera/algovisualization/c;->q:I

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/oplus/camera/algovisualization/c;->b:Lcom/oplus/camera/e/d;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/algovisualization/c;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->k:Lcom/oplus/camera/algovisualization/f;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/oplus/camera/algovisualization/f;

    invoke-direct {v0}, Lcom/oplus/camera/algovisualization/f;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->k:Lcom/oplus/camera/algovisualization/f;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->l:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->l:Landroid/content/IntentFilter;

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->l:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/algovisualization/c;->k:Lcom/oplus/camera/algovisualization/f;

    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->k:Lcom/oplus/camera/algovisualization/f;

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/c;->b()V

    .line 66
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/c;->c()V

    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1

    .line 140
    new-instance v0, Lcom/oplus/camera/algovisualization/c$1;

    invoke-direct {v0, p0, p2}, Lcom/oplus/camera/algovisualization/c$1;-><init>(Lcom/oplus/camera/algovisualization/c;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/StringBuilder;Landroid/text/SpannableStringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x420c0000    # 35.0f

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    .line 207
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p0, -0x1

    .line 208
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p3, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p2, :cond_1

    .line 215
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v11, p0

    .line 157
    iget-object v0, v11, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/oplus/camera/algovisualization/j;

    iget-object v1, v11, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, v11, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    .line 161
    :cond_0
    iget-object v0, v11, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_FRAME_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    move-object v1, p1

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 164
    invoke-direct {p0}, Lcom/oplus/camera/algovisualization/c;->e()V

    .line 165
    iget-object v0, v11, Lcom/oplus/camera/algovisualization/c;->k:Lcom/oplus/camera/algovisualization/f;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/f;->a()I

    move-result v7

    .line 167
    iget v0, v11, Lcom/oplus/camera/algovisualization/c;->n:I

    rem-int/lit8 v1, v6, 0xa

    if-ne v0, v1, :cond_1

    :try_start_0
    const-string v0, "show.preview.info"

    const/4 v1, 0x1

    .line 170
    invoke-static {v0, v1}, Lcom/oplus/compat/os/SystemPropertiesNative;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, v11, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    new-instance v12, Lcom/oplus/camera/algovisualization/c$a;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/oplus/camera/algovisualization/c$a;-><init>(Lcom/oplus/camera/algovisualization/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    .line 181
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/algovisualization/c;->f()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->c:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f090238

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->d:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->f:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 85
    new-instance v0, Lcom/oplus/camera/algovisualization/j;

    iget-object v2, p0, Lcom/oplus/camera/algovisualization/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->d()J

    move-result-wide v2

    .line 89
    invoke-static {v2, v3}, Lcom/oplus/camera/algovisualization/e;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/algovisualization/j;->b(Z)V

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/algovisualization/j;->a(Z)V

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/algovisualization/j;->c(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->b()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    const v2, 0x7f100022

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    const v3, 0x7f100023

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    const v0, 0x7f100020

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    const v0, 0x7f100021

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 131
    new-instance v0, Lcom/oplus/camera/algovisualization/b;

    iget-object v1, p0, Lcom/oplus/camera/algovisualization/c;->b:Lcom/oplus/camera/e/d;

    iget-object v2, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    .line 132
    invoke-virtual {v2}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result v2

    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    .line 133
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/j;->c()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/oplus/camera/algovisualization/b;-><init>(Lcom/oplus/camera/e/d;ZZ)V

    .line 135
    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/b;->a()V

    .line 136
    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/b;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f100021

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 225
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v4, "on"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    const v0, 0x7f100022

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 227
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 230
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/algovisualization/j;->a(Z)V

    .line 232
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 233
    iget v0, p0, Lcom/oplus/camera/algovisualization/c;->m:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 234
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    const v1, 0x7f100023

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 237
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/algovisualization/j;->a(Z)V

    .line 242
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "PIC OFF"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/algovisualization/j;->c(Z)V

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 247
    :cond_1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 248
    iget v0, p0, Lcom/oplus/camera/algovisualization/c;->m:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 249
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/algovisualization/j;->b(Z)V

    .line 256
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/algovisualization/j;->a(Z)V

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/algovisualization/j;->c(Z)V

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 261
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v2, "PIC ON"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 269
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/algovisualization/j;->c(Z)V

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    const p1, 0x7f100020

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->j:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/algovisualization/j;->c(Z)V

    .line 273
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090234
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getX()F

    move-result p1

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 292
    iget-object v1, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getY()F

    move-result v1

    .line 293
    iget-object v2, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 294
    iget-object v3, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/algovisualization/c;->e:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    mul-int/2addr v4, p2

    int-to-float p2, v4

    add-float/2addr v3, p2

    .line 296
    iget-object p2, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setY(F)V

    .line 297
    iget-object p2, p0, Lcom/oplus/camera/algovisualization/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 299
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setY(F)V

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->g:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setX(F)V

    .line 302
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/c;->f:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setY(F)V

    .line 303
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/c;->f:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setX(F)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

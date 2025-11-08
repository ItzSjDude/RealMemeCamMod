.class public Lcom/oplus/camera/util/g;
.super Ljava/lang/Object;
.source "ExportPGrantUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/g$c;,
        Lcom/oplus/camera/util/g$b;,
        Lcom/oplus/camera/util/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "g"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/oplus/camera/util/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/oplus/camera/util/g$b;)V
    .locals 2

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object p0, Lcom/oplus/camera/util/g;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showPermissionGrantDialog, permission: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/oplus/camera/util/g;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/oplus/camera/util/g$b;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;Lcom/oplus/camera/util/g$b;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 52
    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 58
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    new-instance p1, Lcom/oplus/camera/util/g$c;

    const v1, 0x7f11014d

    invoke-direct {p1, p0, v1}, Lcom/oplus/camera/util/g$c;-><init>(Landroid/content/Context;I)V

    .line 71
    new-instance v1, Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;

    invoke-direct {v1, p2, p1}, Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;-><init>(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/util/g$c;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 83
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c003a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902c2

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902c5

    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    .line 86
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 87
    new-instance v4, Lcom/oplus/camera/util/g$a;

    invoke-direct {v4, p0, v0}, Lcom/oplus/camera/util/g$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const v0, 0x7f09008c

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIButton;

    const v3, 0x7f0903fa

    .line 89
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0903fd

    .line 90
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1002b7

    .line 91
    invoke-virtual {v0, v5}, Lcom/coui/appcompat/widget/COUIButton;->setText(I)V

    const v5, 0x7f1002b6

    .line 92
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f1002b5

    .line 93
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 94
    new-instance v4, Lcom/oplus/camera/util/-$$Lambda$g$WRorQWtfTQjxLDiCnnZlozI6OOw;

    invoke-direct {v4, p2, p1}, Lcom/oplus/camera/util/-$$Lambda$g$WRorQWtfTQjxLDiCnnZlozI6OOw;-><init>(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;)V

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v0, Lcom/oplus/camera/util/-$$Lambda$g$es9lHb36pszNyH7sNZVKxPrGh1I;

    invoke-direct {v0, p2, p1}, Lcom/oplus/camera/util/-$$Lambda$g$es9lHb36pszNyH7sNZVKxPrGh1I;-><init>(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    invoke-static {}, Lcom/oplus/camera/util/Util;->V()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07057c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0xe

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080416

    .line 112
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0805af

    .line 114
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1, v2}, Lcom/oplus/camera/util/g$c;->c(Z)V

    .line 119
    invoke-virtual {p1, v2}, Lcom/oplus/camera/util/g$c;->setCanceledOnTouchOutside(Z)V

    .line 120
    invoke-virtual {p1, v2}, Lcom/oplus/camera/util/g$c;->setCancelable(Z)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/oplus/camera/util/g$c;->supportRequestWindowFeature(I)Z

    .line 122
    invoke-virtual {p1}, Lcom/oplus/camera/util/g$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f06006b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p1}, Lcom/oplus/camera/util/g$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f06004d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/oplus/camera/util/g$c;->setContentView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Lcom/oplus/camera/util/g$c;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 126
    invoke-virtual {p1}, Lcom/oplus/camera/util/g$c;->c()Lcom/coui/appcompat/widget/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getDragView()Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/oplus/camera/util/g$c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1}, Lcom/oplus/camera/util/g$c;->show()V

    if-eqz p2, :cond_5

    .line 131
    invoke-interface {p2, p1}, Lcom/oplus/camera/util/g$b;->a(Landroidx/appcompat/app/f;)V

    :cond_5
    return-void

    .line 53
    :cond_6
    :goto_1
    sget-object p0, Lcom/oplus/camera/util/g;->a:Ljava/lang/String;

    const-string p1, "showPermissionGrantDialog, permissions is empty.."

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 102
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/util/g$b;->a(Landroidx/appcompat/app/f;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x0

    const/4 p4, 0x4

    if-ne p3, p4, :cond_1

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/util/g$b;->a(Landroidx/appcompat/app/f;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return p2
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/oplus/camera/util/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/util/g$b;->a(Landroidx/appcompat/app/f;Z)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_5

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v6

    goto :goto_0

    :sswitch_2
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_5
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f1002ac

    .line 154
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const p1, 0x7f1002ad

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const p1, 0x7f1002af

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const p1, 0x7f1002ab

    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_5
        -0x1833add0 -> :sswitch_4
        -0x3c1ac56 -> :sswitch_3
        0x1b9efa65 -> :sswitch_2
        0x516a29a7 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_5

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v6

    goto :goto_0

    :sswitch_2
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_5
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f1005a5

    .line 181
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const p1, 0x7f1005a7

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const p1, 0x7f1005a8

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const p1, 0x7f1002b0

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_5
        -0x1833add0 -> :sswitch_4
        -0x3c1ac56 -> :sswitch_3
        0x1b9efa65 -> :sswitch_2
        0x516a29a7 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic lambda$4vnD3yW_VK533aRjgqPk4qeg1tc(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/util/g;->a(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$WRorQWtfTQjxLDiCnnZlozI6OOw(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/g;->b(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$es9lHb36pszNyH7sNZVKxPrGh1I(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/g;->a(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/view/View;)V

    return-void
.end method

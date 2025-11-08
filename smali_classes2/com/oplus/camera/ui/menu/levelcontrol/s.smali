.class public Lcom/oplus/camera/ui/menu/levelcontrol/s;
.super Landroid/widget/BaseAdapter;
.source "VideoSoundSettingSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/levelcontrol/s$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:[Ljava/lang/CharSequence;

.field private g:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZIZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->a:Z

    .line 41
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->b:Z

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c:Landroid/content/Context;

    .line 43
    iput p4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->d:I

    .line 44
    iput-boolean p5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->e:Z

    .line 45
    iput-object p6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->f:[Ljava/lang/CharSequence;

    .line 46
    iput-object p7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->g:[Ljava/lang/CharSequence;

    return-void
.end method

.method private c(I)Ljava/lang/CharSequence;
    .locals 2

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->g:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 114
    :cond_0
    array-length v1, p0

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, p0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->d:I

    .line 92
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/s;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->f:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->f:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/s;->b(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/s;Lcom/oplus/camera/ui/menu/levelcontrol/s$1;)V

    .line 56
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c012c

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0902d2

    .line 57
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0902d1

    .line 58
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0902d0

    .line 59
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->c:Landroid/widget/CheckBox;

    .line 61
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/s;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 67
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    iget-object v3, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    iget-object v1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->c:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->d:I

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/s;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    iget-object p1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object p1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->b:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060508

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 83
    :cond_3
    iget-object p1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060509

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p1, p2, Lcom/oplus/camera/ui/menu/levelcontrol/s$a;->b:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/s;->e:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.class public Lcom/coui/responsiveui/config/ResponsiveUIConfig;
.super Ljava/lang/Object;
.source "ResponsiveUIConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/responsiveui/config/ResponsiveUIConfig$LifecycleCallbacks;
    }
.end annotation


# static fields
.field private static a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

.field private static b:Z

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/coui/responsiveui/config/ResponsiveUIConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Lcom/coui/responsiveui/config/UIConfig;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Lcom/coui/responsiveui/config/UIConfig$Status;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Lcom/coui/responsiveui/config/UIScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/content/Context;

.field private l:F

.field private m:F

.field private n:Lcom/coui/responsiveui/config/UIConfig$WindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:I

    .line 49
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    .line 50
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/m;

    .line 51
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->g:Landroidx/lifecycle/m;

    .line 52
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    .line 53
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->m:F

    .line 58
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->n:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    .line 61
    invoke-direct {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$integer;->inner_responsive_ui_column_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$integer;->inner_responsive_ui_column_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 189
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcoui/support/appcompat/R$integer;->inner_responsive_ui_column_12:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 190
    div-int/lit8 v2, v0, 0x2

    sub-int v3, v1, v2

    if-ge p1, v3, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int v0, p0, v2

    if-ge p1, v0, :cond_2

    :goto_0
    move p0, v1

    :cond_2
    :goto_1
    return p0
.end method

.method private a(ILcom/coui/responsiveui/config/UIScreenSize;)Lcom/coui/responsiveui/config/UIConfig$Status;
    .locals 4

    .line 130
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;

    .line 132
    invoke-virtual {p2}, Lcom/coui/responsiveui/config/UIScreenSize;->a()I

    move-result v1

    .line 133
    invoke-virtual {p2}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p2

    const/16 v2, 0x280

    if-ge p2, v2, :cond_0

    .line 136
    sget-object p2, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object p2, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->n:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    goto :goto_0

    :cond_0
    const/16 v3, 0x348

    if-ge p2, v3, :cond_1

    .line 138
    sget-object p2, Lcom/coui/responsiveui/config/UIConfig$WindowType;->MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object p2, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->n:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    goto :goto_0

    .line 140
    :cond_1
    sget-object p2, Lcom/coui/responsiveui/config/UIConfig$WindowType;->LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object p2, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->n:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    :goto_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const-string p0, "ResponsiveUIConfig"

    const-string p1, "undefined orientation Status unknown !!! "

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 p0, 0x1f4

    if-lt v1, p0, :cond_3

    .line 154
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    goto :goto_1

    .line 156
    :cond_3
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    goto :goto_1

    :cond_4
    if-lt v1, v2, :cond_5

    .line 146
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    goto :goto_1

    .line 148
    :cond_5
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    :goto_1
    return-object v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 40
    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b(Landroid/content/res/Configuration;)V

    .line 68
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b(Landroid/content/res/Resources;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/res/Configuration;)Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/res/Resources;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init uiConfig "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", columns count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init addContent ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildWidthDp()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentColumnsCount()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildColumnsCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 170
    sget v1, Lcoui/support/appcompat/R$integer;->responsive_ui_column_count:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 171
    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v1}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v1}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v1

    .line 172
    invoke-direct {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 179
    invoke-direct {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(I)I

    move-result p1

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)Z
    .locals 6

    .line 80
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 81
    new-instance v1, Lcom/coui/responsiveui/config/UIScreenSize;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, v2, v3, p1}, Lcom/coui/responsiveui/config/UIScreenSize;-><init>(III)V

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(ILcom/coui/responsiveui/config/UIScreenSize;)Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object p1

    .line 84
    new-instance v2, Lcom/coui/responsiveui/config/UIConfig;

    iget-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->n:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/coui/responsiveui/config/UIConfig;-><init>(Lcom/coui/responsiveui/config/UIConfig$Status;Lcom/coui/responsiveui/config/UIScreenSize;ILcom/coui/responsiveui/config/UIConfig$WindowType;)V

    .line 85
    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    invoke-virtual {p1}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/responsiveui/config/UIConfig;

    .line 87
    invoke-virtual {v2, p1}, Lcom/coui/responsiveui/config/UIConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIConfig;->getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/m;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getOrientation()I

    move-result v3

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIConfig;->getOrientation()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->g:Landroidx/lifecycle/m;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    move v1, v0

    :cond_3
    if-eqz p1, :cond_4

    .line 96
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/coui/responsiveui/config/UIScreenSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 97
    :cond_4
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p1

    .line 98
    invoke-direct {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b()I

    move-result v3

    sub-int v4, p1, v3

    .line 99
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_5

    .line 101
    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update ScreenSize few case newWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResponsiveUIConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v3}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/responsiveui/config/UIScreenSize;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 110
    invoke-virtual {v3}, Lcom/coui/responsiveui/config/UIScreenSize;->getHeightDp()I

    move-result p1

    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {v3}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p1

    .line 117
    :cond_7
    :goto_0
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/responsiveui/config/UIScreenSize;->getHeightDp()I

    move-result v1

    .line 118
    new-instance v3, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coui/responsiveui/config/UIScreenSize;->a()I

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lcom/coui/responsiveui/config/UIScreenSize;-><init>(III)V

    .line 119
    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    .line 121
    :goto_1
    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {p1}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v2, p1}, Lcom/coui/responsiveui/config/UIConfig;->a(Lcom/coui/responsiveui/config/UIScreenSize;)V

    .line 123
    :cond_8
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    return v0

    :cond_9
    return v1
.end method

.method private b()I
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    return p0
.end method

.method private b(Landroid/content/res/Configuration;)V
    .locals 1

    .line 204
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:F

    return-void
.end method

.method private b(Landroid/content/res/Resources;)V
    .locals 1

    .line 211
    sget v0, Lcoui/support/appcompat/R$integer;->inner_responsive_ui_column_4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:I

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/coui/responsiveui/config/ResponsiveUIConfig;
    .locals 3

    .line 391
    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    invoke-direct {v0, p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 396
    sget-object v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    iget v1, v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:I

    if-eq v0, v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefault context hash change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    iget v2, v2, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponsiveUIConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    invoke-direct {v0, p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/Context;)V

    .line 401
    :cond_1
    sget-object p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/coui/responsiveui/config/ResponsiveUIConfig;
    .locals 4

    .line 412
    sget-boolean v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Z

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 415
    new-instance v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig$LifecycleCallbacks;

    invoke-direct {v1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig$LifecycleCallbacks;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    .line 416
    sput-boolean v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Z

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 421
    sget-object v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ResponsiveUIConfig"

    if-eqz v1, :cond_1

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newInstance return the kept instance "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    return-object p0

    .line 425
    :cond_1
    new-instance v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    invoke-direct {v1, p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;-><init>(Landroid/content/Context;)V

    .line 426
    sget-object p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newInstance return the new instance "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public flush(Landroid/content/Context;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/Context;)V

    return-void
.end method

.method public getExtendHierarchyChildColumnsCount()I
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentColumnsCount()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getExtendHierarchyChildWidthDp()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getExtendHierarchyParentColumnsCount()I
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v1}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v1}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 285
    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-virtual {v1}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 286
    invoke-direct {p0, v0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(I)I

    move-result p0

    return p0
.end method

.method public getExtendHierarchyParentWidthDp()I
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    const/16 v1, 0x348

    if-lt v0, v1, :cond_0

    .line 263
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcoui/support/appcompat/R$integer;->inner_responsive_ui_extend_hierarchy_parent_width_360:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    const/16 v1, 0x280

    if-lt v0, v1, :cond_1

    .line 265
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcoui/support/appcompat/R$integer;->inner_responsive_ui_extend_hierarchy_parent_width_300:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {p0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p0

    return p0
.end method

.method public getScreenType()Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    invoke-virtual {p0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIConfig;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/UIConfig;->getWindowType()Lcom/coui/responsiveui/config/UIConfig$WindowType;

    move-result-object p0

    return-object p0
.end method

.method public getUiColumnsCount()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    return-object p0
.end method

.method public getUiConfig()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/coui/responsiveui/config/UIConfig;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    return-object p0
.end method

.method public getUiOrientation()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->g:Landroidx/lifecycle/m;

    return-object p0
.end method

.method public getUiScreenSize()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/coui/responsiveui/config/UIScreenSize;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    return-object p0
.end method

.method public getUiStatus()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/coui/responsiveui/config/UIConfig$Status;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/m;

    return-object p0
.end method

.method public onActivityConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 364
    invoke-direct {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(Landroid/content/res/Resources;)V

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUIConfigChanged uiConfig "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", columns count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUIConfigChanged addContent ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildWidthDp()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentColumnsCount()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildColumnsCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public spanCountBaseColumns(I)I
    .locals 1

    .line 317
    iget v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:I

    invoke-virtual {p0, v0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->spanCountBaseColumns(II)I

    move-result p0

    return p0
.end method

.method public spanCountBaseColumns(II)I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Landroidx/lifecycle/m;

    invoke-virtual {p0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/2addr p0, p1

    const/4 p1, 0x1

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    mul-int/2addr p0, p1

    return p0
.end method

.method public spanCountBaseWidth(I)I
    .locals 1

    const/16 v0, 0x168

    .line 325
    invoke-virtual {p0, v0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->spanCountBaseWidth(II)I

    move-result p0

    return p0
.end method

.method public spanCountBaseWidth(II)I
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getUiScreenSize()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    const/16 v1, 0x280

    if-ge v0, v1, :cond_0

    if-ge p1, v1, :cond_0

    return p2

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroidx/lifecycle/m;

    invoke-virtual {p0}, Landroidx/lifecycle/m;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/4 p1, 0x1

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

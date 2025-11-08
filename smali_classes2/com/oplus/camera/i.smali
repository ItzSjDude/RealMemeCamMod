.class public Lcom/oplus/camera/i;
.super Ljava/lang/Object;
.source "CameraStatementAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/i$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/app/c;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/oplus/camera/i$a;

.field private d:Lcom/coui/appcompat/widget/COUIFullPageStatement;

.field private e:Lcom/oplus/camera/ui/v;

.field private f:Lcom/oplus/camera/ui/v;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/i$a;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/i;->b:Landroid/content/SharedPreferences;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/i;->c:Lcom/oplus/camera/i$a;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/i;->d:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/oplus/camera/i;->g:Z

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/oplus/camera/i;->h:Z

    .line 63
    check-cast p1, Landroidx/appcompat/app/c;

    iput-object p1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    .line 64
    iput-object p2, p0, Lcom/oplus/camera/i;->c:Lcom/oplus/camera/i$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/i;Lcom/coui/appcompat/widget/COUIFullPageStatement;)Lcom/coui/appcompat/widget/COUIFullPageStatement;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/i;->d:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/i;->c:Lcom/oplus/camera/i$a;

    return-object p0
.end method

.method private a(II)Ljava/lang/CharSequence;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 300
    new-instance v1, Lcom/coui/appcompat/widget/c;

    iget-object v2, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/c;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v2, Lcom/oplus/camera/i$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/i$4;-><init>(Lcom/oplus/camera/i;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/c;->a(Lcom/coui/appcompat/widget/c$a;)V

    .line 318
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, v0

    const/16 p1, 0x21

    .line 319
    invoke-virtual {p0, v1, v0, p2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method private a(IILcom/coui/appcompat/widget/COUIFullPageStatement;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/i;->a(II)Ljava/lang/CharSequence;

    move-result-object p1

    const p2, 0x7f0903fa

    .line 190
    invoke-virtual {p3, p2}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 191
    iget-object v2, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    const v4, 0x7f0402aa

    const v5, 0x7f060083

    .line 192
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/c;->getColor(I)I

    move-result v5

    .line 191
    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/a/d;->a(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->getAppStatement()Landroid/widget/TextView;

    move-result-object p2

    .line 195
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    .line 197
    invoke-virtual {p1}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07014f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 196
    invoke-virtual {p2, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x106000d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 201
    new-instance p1, Lcom/oplus/camera/i$2;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/oplus/camera/i$2;-><init>(Lcom/oplus/camera/i;Landroid/widget/TextView;II)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/i;IILcom/coui/appcompat/widget/COUIFullPageStatement;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/i;->a(IILcom/coui/appcompat/widget/COUIFullPageStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/i;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/oplus/camera/i;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/i;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/oplus/camera/i;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 92
    new-instance v0, Lcom/oplus/camera/ui/v;

    invoke-direct {v0}, Lcom/oplus/camera/ui/v;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    new-instance v1, Lcom/oplus/camera/i$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/i$1;-><init>(Lcom/oplus/camera/i;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/v;->a(Lcom/oplus/camera/ui/v$a;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/i;)Lcom/coui/appcompat/widget/COUIFullPageStatement;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/i;->d:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    return-object p0
.end method

.method private d()Z
    .locals 0

    const-string p0, "com.oplus.app.feature.sticker.support"

    .line 166
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/i;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oplus/camera/i;->f()V

    return-void
.end method

.method private e()Z
    .locals 0

    const-string p0, "com.oplus.support.grand.tour.filter"

    .line 170
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private f()V
    .locals 3

    .line 237
    new-instance v0, Lcom/oplus/camera/ui/v;

    iget-object v1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    const v2, 0x7f10048a

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    iget-object v1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/v;->a(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    iget-object v1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/v;->b(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    new-instance v1, Lcom/oplus/camera/i$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/i$3;-><init>(Lcom/oplus/camera/i;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/v;->a(Lcom/oplus/camera/ui/v$a;)V

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    iget-object p0, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p0

    const-string v1, "StatementDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/v;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/i;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oplus/camera/i;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/i;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oplus/camera/i;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/i;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/oplus/camera/i;->h:Z

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 324
    iget-boolean p0, p0, Lcom/oplus/camera/i;->g:Z

    return p0
.end method

.method public a(Landroid/content/SharedPreferences;)Z
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog, preferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraStatementAlert"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/oplus/camera/i;->b:Landroid/content/SharedPreferences;

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/i;->b:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v2, "pref_camera_statement_key"

    .line 76
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "showDialog, has show dialog"

    .line 77
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/i;->c()V

    .line 84
    iget-object p1, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    iget-object v1, p0, Lcom/oplus/camera/i;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object v1

    const-string v2, "StatementDialogFragment"

    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/ui/v;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    .line 85
    iput-boolean v0, p0, Lcom/oplus/camera/i;->g:Z

    :cond_2
    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "CameraStatementAlert"

    const-string v1, "release"

    .line 328
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/oplus/camera/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    .line 333
    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/i;->e:Lcom/oplus/camera/ui/v;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->dismiss()V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    .line 337
    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/i;->f:Lcom/oplus/camera/ui/v;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->dismiss()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/oplus/camera/i;->g:Z

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/oplus/camera/i;->c:Lcom/oplus/camera/i$a;

    return-void
.end method

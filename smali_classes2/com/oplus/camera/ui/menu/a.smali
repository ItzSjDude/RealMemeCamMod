.class public Lcom/oplus/camera/ui/menu/a;
.super Landroid/app/AlertDialog;
.source "APSVisualizationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->d:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->e:Landroid/widget/Button;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->f:Landroid/content/Context;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->g:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->h:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->i:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a;->f:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a;->a:Landroid/content/SharedPreferences;

    .line 42
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/a;->g:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/oplus/camera/ui/menu/a;->i:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/oplus/camera/ui/menu/a;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a;)Landroid/app/ProgressDialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a;->b:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/a;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a;->f:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a;->f:Landroid/content/Context;

    const/4 p1, 0x0

    const-string v0, "password cannot be none"

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/a;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    const/4 v0, 0x1

    .line 92
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 94
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Please wait..."

    const-string v4, "authenticating..."

    invoke-static {v2, v3, v4, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a;->b:Landroid/app/ProgressDialog;

    .line 97
    new-instance v0, Lcom/oplus/camera/ui/menu/a$1;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oplus/camera/ui/menu/a$1;-><init>(Lcom/oplus/camera/ui/menu/a;[ZLjava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 128
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/oplus/camera/algovisualization/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 130
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a;->h:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a;->g:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a;->dismiss()V

    .line 137
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a;->f:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09008b

    if-eq p1, v1, :cond_1

    const v1, 0x7f09008d

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 50
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a;->setCancelable(Z)V

    const p1, 0x7f090150

    .line 55
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a;->c:Landroid/widget/EditText;

    const p1, 0x7f09008b

    .line 56
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a;->d:Landroid/widget/Button;

    const p1, 0x7f09008d

    .line 57
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a;->e:Landroid/widget/Button;

    .line 59
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lcom/oplus/camera/util/o;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static a:Landroid/widget/Toast;

.field private static b:Landroid/widget/Toast;

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 130
    sput p0, Lcom/oplus/camera/util/o;->d:I

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .line 25
    sget v0, Lcom/oplus/camera/util/o;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    sput v0, Lcom/oplus/camera/util/o;->c:I

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    .line 30
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, ""

    .line 31
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;II)V

    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;)V

    .line 69
    sget-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 70
    sget-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 71
    sget-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showToast, e: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastUtil"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;)V

    .line 54
    sget-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 56
    sget-object p0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showToast, e: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastUtil"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    .line 91
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 92
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 95
    sget p0, Lcom/oplus/camera/util/o;->d:I

    const/16 p1, 0x5a

    const v0, 0x7f070c39

    const/high16 v2, 0x43050000    # 133.0f

    if-eq p0, p1, :cond_3

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_2

    .line 115
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    sget-object p1, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getGravity()I

    move-result p1

    sget-object v0, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    sget-object v1, Lcom/oplus/camera/util/o;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 116
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 118
    invoke-virtual {p0, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    .line 106
    :cond_2
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    const p1, 0x800015

    .line 107
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 106
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 108
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x43870000    # 270.0f

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 110
    invoke-virtual {p0, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    .line 97
    :cond_3
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    const p1, 0x800013

    .line 98
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 97
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 99
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x42b40000    # 90.0f

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 101
    invoke-virtual {p0, v2}, Landroid/view/View;->setElevation(F)V

    .line 123
    :goto_0
    sget-object p0, Lcom/oplus/camera/util/o;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showToast, e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastUtil"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
